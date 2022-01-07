
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mip4_ts {int event_format; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;


 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,int) ;
 int mip4_report_keys (struct mip4_ts*,int*) ;
 int mip4_report_touch (struct mip4_ts*,int*) ;

__attribute__((used)) static int mip4_handle_packet(struct mip4_ts *ts, u8 *packet)
{
 u8 type;

 switch (ts->event_format) {
 case 0:
 case 1:
  type = (packet[0] & 0x40) >> 6;
  break;

 case 3:
  type = (packet[0] & 0xF0) >> 4;
  break;

 default:

  return -EINVAL;
 }

 dev_dbg(&ts->client->dev, "Type: %d\n", type);


 switch (type) {
 case 129:
  mip4_report_keys(ts, packet);
  break;

 case 128:
  mip4_report_touch(ts, packet);
  break;

 default:
  dev_err(&ts->client->dev, "Unknown event type: %d\n", type);
  break;
 }

 return 0;
}
