
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spi_message {int dummy; } ;
struct TYPE_3__ {int ignore; } ;
struct ads7846_packet {TYPE_1__ tc; } ;
struct ads7846 {int msg_count; int (* filter ) (int ,int,int*) ;int filter_data; TYPE_2__* spi; struct spi_message* msg; int (* wait_for_sync ) () ;struct ads7846_packet* packet; } ;
struct TYPE_4__ {int dev; } ;





 int BUG () ;
 int ads7846_get_value (struct ads7846*,struct spi_message*) ;
 int ads7846_update_value (struct spi_message*,int) ;
 int dev_err (int *,char*,int) ;
 int spi_sync (TYPE_2__*,struct spi_message*) ;
 int stub1 () ;
 int stub2 (int ,int,int*) ;

__attribute__((used)) static void ads7846_read_state(struct ads7846 *ts)
{
 struct ads7846_packet *packet = ts->packet;
 struct spi_message *m;
 int msg_idx = 0;
 int val;
 int action;
 int error;

 while (msg_idx < ts->msg_count) {

  ts->wait_for_sync();

  m = &ts->msg[msg_idx];
  error = spi_sync(ts->spi, m);
  if (error) {
   dev_err(&ts->spi->dev, "spi_sync --> %d\n", error);
   packet->tc.ignore = 1;
   return;
  }





  if (msg_idx < ts->msg_count - 1) {

   val = ads7846_get_value(ts, m);

   action = ts->filter(ts->filter_data, msg_idx, &val);
   switch (action) {
   case 128:
    continue;

   case 130:
    packet->tc.ignore = 1;
    msg_idx = ts->msg_count - 1;
    continue;

   case 129:
    ads7846_update_value(m, val);
    packet->tc.ignore = 0;
    msg_idx++;
    break;

   default:
    BUG();
   }
  } else {
   msg_idx++;
  }
 }
}
