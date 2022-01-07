
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct hideep_ts {size_t* xfer_buf; int input_dev; int * key_codes; TYPE_1__* client; } ;
struct hideep_event {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 size_t HIDEEP_KEY_EVENT_INDEX ;
 size_t HIDEEP_KEY_IDX_MASK ;
 int HIDEEP_KEY_MAX ;
 size_t HIDEEP_KEY_PRESSED_MASK ;
 int HIDEEP_MT_MAX ;
 size_t HIDEEP_TOUCH_EVENT_INDEX ;
 int dev_dbg (int *,char*,int,int,int) ;
 int hideep_report_slot (int ,struct hideep_event const*) ;
 int input_mt_sync_frame (int ) ;
 int input_report_key (int ,int ,size_t) ;
 int input_sync (int ) ;
 int min (int,int ) ;

__attribute__((used)) static void hideep_parse_and_report(struct hideep_ts *ts)
{
 const struct hideep_event *events =
   (void *)&ts->xfer_buf[HIDEEP_TOUCH_EVENT_INDEX];
 const u8 *keys = &ts->xfer_buf[HIDEEP_KEY_EVENT_INDEX];
 int touch_count = ts->xfer_buf[0];
 int key_count = ts->xfer_buf[1] & 0x0f;
 int lpm_count = ts->xfer_buf[1] & 0xf0;
 int i;


 dev_dbg(&ts->client->dev, "mt = %d, key = %d, lpm = %02x",
  touch_count, key_count, lpm_count);

 touch_count = min(touch_count, HIDEEP_MT_MAX);
 for (i = 0; i < touch_count; i++)
  hideep_report_slot(ts->input_dev, events + i);

 key_count = min(key_count, HIDEEP_KEY_MAX);
 for (i = 0; i < key_count; i++) {
  u8 key_data = keys[i * 2];

  input_report_key(ts->input_dev,
     ts->key_codes[key_data & HIDEEP_KEY_IDX_MASK],
     key_data & HIDEEP_KEY_PRESSED_MASK);
 }

 input_mt_sync_frame(ts->input_dev);
 input_sync(ts->input_dev);
}
