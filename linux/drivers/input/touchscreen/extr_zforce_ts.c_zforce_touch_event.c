
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zforce_ts_platdata {int x_max; int y_max; } ;
struct zforce_ts {int input; struct zforce_ts_platdata* pdata; struct i2c_client* client; } ;
struct zforce_point {int coord_x; int coord_y; int state; int id; int area_major; int area_minor; int orientation; int pressure; int prblty; } ;
struct i2c_client {int dev; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int MT_TOOL_FINGER ;
 int STATE_UP ;
 int ZFORCE_REPORT_POINTS ;
 int dev_dbg (int *,char*,int,int,int,int,int,int,int,int,int,int,int) ;
 int dev_warn (int *,char*,int,int) ;
 int input_mt_report_finger_count (int ,int) ;
 int input_mt_report_slot_state (int ,int ,int) ;
 int input_mt_slot (int ,int) ;
 int input_mt_sync_frame (int ) ;
 int input_report_abs (int ,int ,int) ;
 int input_sync (int ) ;
 int max (int,int) ;
 int min (int,int) ;

__attribute__((used)) static int zforce_touch_event(struct zforce_ts *ts, u8 *payload)
{
 struct i2c_client *client = ts->client;
 const struct zforce_ts_platdata *pdata = ts->pdata;
 struct zforce_point point;
 int count, i, num = 0;

 count = payload[0];
 if (count > ZFORCE_REPORT_POINTS) {
  dev_warn(&client->dev,
    "too many coordinates %d, expected max %d\n",
    count, ZFORCE_REPORT_POINTS);
  count = ZFORCE_REPORT_POINTS;
 }

 for (i = 0; i < count; i++) {
  point.coord_x =
   payload[9 * i + 2] << 8 | payload[9 * i + 1];
  point.coord_y =
   payload[9 * i + 4] << 8 | payload[9 * i + 3];

  if (point.coord_x > pdata->x_max ||
      point.coord_y > pdata->y_max) {
   dev_warn(&client->dev, "coordinates (%d,%d) invalid\n",
    point.coord_x, point.coord_y);
   point.coord_x = point.coord_y = 0;
  }

  point.state = payload[9 * i + 5] & 0x0f;
  point.id = (payload[9 * i + 5] & 0xf0) >> 4;


  point.area_major = max(payload[9 * i + 6],
       payload[9 * i + 7]);
  point.area_minor = min(payload[9 * i + 6],
       payload[9 * i + 7]);
  point.orientation = payload[9 * i + 6] > payload[9 * i + 7];

  point.pressure = payload[9 * i + 8];
  point.prblty = payload[9 * i + 9];

  dev_dbg(&client->dev,
   "point %d/%d: state %d, id %d, pressure %d, prblty %d, x %d, y %d, amajor %d, aminor %d, ori %d\n",
   i, count, point.state, point.id,
   point.pressure, point.prblty,
   point.coord_x, point.coord_y,
   point.area_major, point.area_minor,
   point.orientation);


  input_mt_slot(ts->input, point.id - 1);

  input_mt_report_slot_state(ts->input, MT_TOOL_FINGER,
      point.state != STATE_UP);

  if (point.state != STATE_UP) {
   input_report_abs(ts->input, ABS_MT_POSITION_X,
      point.coord_x);
   input_report_abs(ts->input, ABS_MT_POSITION_Y,
      point.coord_y);
   input_report_abs(ts->input, ABS_MT_TOUCH_MAJOR,
      point.area_major);
   input_report_abs(ts->input, ABS_MT_TOUCH_MINOR,
      point.area_minor);
   input_report_abs(ts->input, ABS_MT_ORIENTATION,
      point.orientation);
   num++;
  }
 }

 input_mt_sync_frame(ts->input);

 input_mt_report_finger_count(ts->input, num);

 input_sync(ts->input);

 return 0;
}
