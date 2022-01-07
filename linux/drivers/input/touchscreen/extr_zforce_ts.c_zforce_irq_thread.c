
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct zforce_ts {int boot_complete; int version_major; int version_minor; int version_build; int version_rev; scalar_t__ suspending; struct i2c_client* client; int gpio_int; scalar_t__ suspended; } ;
struct i2c_client {int dev; } ;
typedef int irqreturn_t ;


 int FRAME_MAXSIZE ;
 int IRQ_HANDLED ;



 size_t PAYLOAD_BODY ;
 size_t RESPONSE_DATA ;

 size_t RESPONSE_ID ;





 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ device_may_wakeup (int *) ;
 scalar_t__ gpiod_get_value_cansleep (int ) ;
 int msleep (int) ;
 int pm_relax (int *) ;
 int pm_stay_awake (int *) ;
 int pm_wakeup_event (int *,int) ;
 int zforce_complete (struct zforce_ts*,int,int) ;
 int zforce_read_packet (struct zforce_ts*,int*) ;
 int zforce_touch_event (struct zforce_ts*,int*) ;

__attribute__((used)) static irqreturn_t zforce_irq_thread(int irq, void *dev_id)
{
 struct zforce_ts *ts = dev_id;
 struct i2c_client *client = ts->client;
 int ret;
 u8 payload_buffer[FRAME_MAXSIZE];
 u8 *payload;





 if (ts->suspended) {
  msleep(20);
  return IRQ_HANDLED;
 }

 dev_dbg(&client->dev, "handling interrupt\n");


 if (!ts->suspending && device_may_wakeup(&client->dev))
  pm_stay_awake(&client->dev);
 do {
  ret = zforce_read_packet(ts, payload_buffer);
  if (ret < 0) {
   dev_err(&client->dev,
    "could not read packet, ret: %d\n", ret);
   break;
  }

  payload = &payload_buffer[PAYLOAD_BODY];

  switch (payload[RESPONSE_ID]) {
  case 134:




   if (ts->suspending && device_may_wakeup(&client->dev))
    pm_wakeup_event(&client->dev, 500);
   zforce_touch_event(ts, &payload[RESPONSE_DATA]);
   break;

  case 136:
   ts->boot_complete = payload[RESPONSE_DATA];
   zforce_complete(ts, payload[RESPONSE_ID], 0);
   break;

  case 132:
  case 133:
  case 129:
  case 131:
  case 130:
   zforce_complete(ts, payload[RESPONSE_ID],
     payload[RESPONSE_DATA]);
   break;

  case 128:




   ts->version_major = (payload[RESPONSE_DATA + 1] << 8) |
      payload[RESPONSE_DATA];
   ts->version_minor = (payload[RESPONSE_DATA + 3] << 8) |
      payload[RESPONSE_DATA + 2];
   ts->version_build = (payload[RESPONSE_DATA + 5] << 8) |
      payload[RESPONSE_DATA + 4];
   ts->version_rev = (payload[RESPONSE_DATA + 7] << 8) |
      payload[RESPONSE_DATA + 6];
   dev_dbg(&ts->client->dev,
    "Firmware Version %04x:%04x %04x:%04x\n",
    ts->version_major, ts->version_minor,
    ts->version_build, ts->version_rev);

   zforce_complete(ts, payload[RESPONSE_ID], 0);
   break;

  case 135:
   dev_err(&ts->client->dev, "invalid command: 0x%x\n",
    payload[RESPONSE_DATA]);
   break;

  default:
   dev_err(&ts->client->dev,
    "unrecognized response id: 0x%x\n",
    payload[RESPONSE_ID]);
   break;
  }
 } while (gpiod_get_value_cansleep(ts->gpio_int));

 if (!ts->suspending && device_may_wakeup(&client->dev))
  pm_relax(&client->dev);

 dev_dbg(&client->dev, "finished interrupt\n");

 return IRQ_HANDLED;
}
