
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct interact {scalar_t__ length; int type; int bads; int gameport; int reads; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct gameport {int dummy; } ;


 int ABS_HAT0Y ;
 int INTERACT_MAX_LENGTH ;


 struct interact* gameport_get_drvdata (struct gameport*) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int * interact_abs_hhfx ;
 int * interact_abs_pp8d ;
 int * interact_btn_hhfx ;
 int * interact_btn_pp8d ;
 scalar_t__ interact_read_packet (int ,scalar_t__,int*) ;

__attribute__((used)) static void interact_poll(struct gameport *gameport)
{
 struct interact *interact = gameport_get_drvdata(gameport);
 struct input_dev *dev = interact->dev;
 u32 data[3];
 int i;

 interact->reads++;

 if (interact_read_packet(interact->gameport, interact->length, data) < interact->length) {
  interact->bads++;
 } else {

  for (i = 0; i < 3; i++)
   data[i] <<= INTERACT_MAX_LENGTH - interact->length;

  switch (interact->type) {

   case 129:

    for (i = 0; i < 4; i++)
     input_report_abs(dev, interact_abs_hhfx[i], (data[i & 1] >> ((i >> 1) << 3)) & 0xff);

    for (i = 0; i < 2; i++)
     input_report_abs(dev, ABS_HAT0Y - i,
      ((data[1] >> ((i << 1) + 17)) & 1) - ((data[1] >> ((i << 1) + 16)) & 1));

    for (i = 0; i < 8; i++)
     input_report_key(dev, interact_btn_hhfx[i], (data[0] >> (i + 16)) & 1);

    for (i = 0; i < 4; i++)
     input_report_key(dev, interact_btn_hhfx[i + 8], (data[1] >> (i + 20)) & 1);

    break;

   case 128:

    for (i = 0; i < 2; i++)
     input_report_abs(dev, interact_abs_pp8d[i],
      ((data[0] >> ((i << 1) + 20)) & 1) - ((data[0] >> ((i << 1) + 21)) & 1));

    for (i = 0; i < 8; i++)
     input_report_key(dev, interact_btn_pp8d[i], (data[1] >> (i + 16)) & 1);

    break;
  }
 }

 input_sync(dev);
}
