
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct gameport {int dummy; } ;
struct cobra {int exists; struct input_dev** dev; int bads; int reads; } ;


 int ABS_X ;
 int ABS_Y ;
 scalar_t__* cobra_btn ;
 int cobra_read_packet (struct gameport*,unsigned int*) ;
 struct cobra* gameport_get_drvdata (struct gameport*) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,scalar_t__,unsigned int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void cobra_poll(struct gameport *gameport)
{
 struct cobra *cobra = gameport_get_drvdata(gameport);
 struct input_dev *dev;
 unsigned int data[2];
 int i, j, r;

 cobra->reads++;

 if ((r = cobra_read_packet(gameport, data)) != cobra->exists) {
  cobra->bads++;
  return;
 }

 for (i = 0; i < 2; i++)
  if (cobra->exists & r & (1 << i)) {

   dev = cobra->dev[i];

   input_report_abs(dev, ABS_X, ((data[i] >> 4) & 1) - ((data[i] >> 3) & 1));
   input_report_abs(dev, ABS_Y, ((data[i] >> 2) & 1) - ((data[i] >> 1) & 1));

   for (j = 0; cobra_btn[j]; j++)
    input_report_key(dev, cobra_btn[j], data[i] & (0x20 << j));

   input_sync(dev);

  }
}
