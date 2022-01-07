
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mxt_data {int T100_reportid_min; size_t t100_aux_vect; size_t t100_aux_area; size_t t100_aux_ampl; int update_input; struct input_dev* input_dev; TYPE_1__* client; } ;
struct input_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int ABS_MT_DISTANCE ;
 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_PRESSURE ;
 int ABS_MT_TOUCH_MAJOR ;
 int MT_TOOL_FINGER ;
 int MT_TOOL_PEN ;
 int MXT_DISTANCE_ACTIVE_TOUCH ;
 int MXT_DISTANCE_HOVERING ;
 int MXT_PRESSURE_DEFAULT ;
 int MXT_T100_DETECT ;




 int MXT_T100_TYPE_MASK ;

 int MXT_TOUCH_MAJOR_DEFAULT ;
 int dev_dbg (struct device*,char*,...) ;
 int get_unaligned_le16 (int*) ;
 int input_mt_report_slot_state (struct input_dev*,int,int) ;
 int input_mt_slot (struct input_dev*,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;

__attribute__((used)) static void mxt_proc_t100_message(struct mxt_data *data, u8 *message)
{
 struct device *dev = &data->client->dev;
 struct input_dev *input_dev = data->input_dev;
 int id;
 u8 status;
 u8 type = 0;
 u16 x;
 u16 y;
 int distance = 0;
 int tool = 0;
 u8 major = 0;
 u8 pressure = 0;
 u8 orientation = 0;

 id = message[0] - data->T100_reportid_min - 2;


 if (id < 0)
  return;

 status = message[1];
 x = get_unaligned_le16(&message[2]);
 y = get_unaligned_le16(&message[4]);

 if (status & MXT_T100_DETECT) {
  type = (status & MXT_T100_TYPE_MASK) >> 4;

  switch (type) {
  case 130:
   tool = MT_TOOL_FINGER;
   distance = MXT_DISTANCE_HOVERING;

   if (data->t100_aux_vect)
    orientation = message[data->t100_aux_vect];

   break;

  case 132:
  case 131:
   tool = MT_TOOL_FINGER;
   distance = MXT_DISTANCE_ACTIVE_TOUCH;

   if (data->t100_aux_area)
    major = message[data->t100_aux_area];

   if (data->t100_aux_ampl)
    pressure = message[data->t100_aux_ampl];

   if (data->t100_aux_vect)
    orientation = message[data->t100_aux_vect];

   break;

  case 128:
   tool = MT_TOOL_PEN;





   major = MXT_TOUCH_MAJOR_DEFAULT;

   if (data->t100_aux_ampl)
    pressure = message[data->t100_aux_ampl];

   break;

  case 129:

   break;

  default:
   dev_dbg(dev, "Unexpected T100 type\n");
   return;
  }
 }





 if (!pressure && type != 130)
  pressure = MXT_PRESSURE_DEFAULT;

 input_mt_slot(input_dev, id);

 if (status & MXT_T100_DETECT) {
  dev_dbg(dev, "[%u] type:%u x:%u y:%u a:%02X p:%02X v:%02X\n",
   id, type, x, y, major, pressure, orientation);

  input_mt_report_slot_state(input_dev, tool, 1);
  input_report_abs(input_dev, ABS_MT_POSITION_X, x);
  input_report_abs(input_dev, ABS_MT_POSITION_Y, y);
  input_report_abs(input_dev, ABS_MT_TOUCH_MAJOR, major);
  input_report_abs(input_dev, ABS_MT_PRESSURE, pressure);
  input_report_abs(input_dev, ABS_MT_DISTANCE, distance);
  input_report_abs(input_dev, ABS_MT_ORIENTATION, orientation);
 } else {
  dev_dbg(dev, "[%u] release\n", id);


  input_mt_report_slot_state(input_dev, 0, 0);
 }

 data->update_input = 1;
}
