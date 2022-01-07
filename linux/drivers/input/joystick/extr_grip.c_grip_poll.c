
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct grip {int* mode; int bads; int gameport; int reads; struct input_dev** dev; } ;
struct gameport {int dummy; } ;


 int ABS_BRAKE ;
 int ABS_GAS ;
 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_HAT1X ;
 int ABS_HAT1Y ;
 int ABS_RX ;
 int ABS_RY ;
 int ABS_THROTTLE ;
 int ABS_X ;
 int ABS_Y ;
 int GRIP_LENGTH_XT ;




 struct grip* gameport_get_drvdata (struct gameport*) ;
 int * grip_btn_bd ;
 int * grip_btn_dc ;
 int * grip_btn_gpp ;
 int * grip_btn_xt ;
 int grip_gpp_read_packet (int ,int,unsigned int*) ;
 int grip_xt_read_packet (int ,int,unsigned int*) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,unsigned int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void grip_poll(struct gameport *gameport)
{
 struct grip *grip = gameport_get_drvdata(gameport);
 unsigned int data[GRIP_LENGTH_XT];
 struct input_dev *dev;
 int i, j;

 for (i = 0; i < 2; i++) {

  dev = grip->dev[i];
  if (!dev)
   continue;

  grip->reads++;

  switch (grip->mode[i]) {

   case 129:

    if (grip_gpp_read_packet(grip->gameport, (i << 1) + 4, data)) {
     grip->bads++;
     break;
    }

    input_report_abs(dev, ABS_X, ((*data >> 15) & 1) - ((*data >> 16) & 1));
    input_report_abs(dev, ABS_Y, ((*data >> 13) & 1) - ((*data >> 12) & 1));

    for (j = 0; j < 12; j++)
     if (grip_btn_gpp[j])
      input_report_key(dev, grip_btn_gpp[j], (*data >> j) & 1);

    break;

   case 131:

    if (grip_xt_read_packet(grip->gameport, (i << 1) + 4, data)) {
     grip->bads++;
     break;
    }

    input_report_abs(dev, ABS_X, (data[0] >> 2) & 0x3f);
    input_report_abs(dev, ABS_Y, 63 - ((data[0] >> 8) & 0x3f));
    input_report_abs(dev, ABS_THROTTLE, (data[2] >> 8) & 0x3f);

    input_report_abs(dev, ABS_HAT0X, ((data[2] >> 1) & 1) - ( data[2] & 1));
    input_report_abs(dev, ABS_HAT0Y, ((data[2] >> 2) & 1) - ((data[2] >> 3) & 1));

    for (j = 0; j < 5; j++)
     input_report_key(dev, grip_btn_bd[j], (data[3] >> (j + 4)) & 1);

    break;

   case 128:

    if (grip_xt_read_packet(grip->gameport, (i << 1) + 4, data)) {
     grip->bads++;
     break;
    }

    input_report_abs(dev, ABS_X, (data[0] >> 2) & 0x3f);
    input_report_abs(dev, ABS_Y, 63 - ((data[0] >> 8) & 0x3f));
    input_report_abs(dev, ABS_BRAKE, (data[1] >> 2) & 0x3f);
    input_report_abs(dev, ABS_GAS, (data[1] >> 8) & 0x3f);
    input_report_abs(dev, ABS_THROTTLE, (data[2] >> 8) & 0x3f);

    input_report_abs(dev, ABS_HAT0X, ((data[2] >> 1) & 1) - ( data[2] & 1));
    input_report_abs(dev, ABS_HAT0Y, ((data[2] >> 2) & 1) - ((data[2] >> 3) & 1));
    input_report_abs(dev, ABS_HAT1X, ((data[2] >> 5) & 1) - ((data[2] >> 4) & 1));
    input_report_abs(dev, ABS_HAT1Y, ((data[2] >> 6) & 1) - ((data[2] >> 7) & 1));

    for (j = 0; j < 11; j++)
     input_report_key(dev, grip_btn_xt[j], (data[3] >> (j + 3)) & 1);
    break;

   case 130:

    if (grip_xt_read_packet(grip->gameport, (i << 1) + 4, data)) {
     grip->bads++;
     break;
    }

    input_report_abs(dev, ABS_X, (data[0] >> 2) & 0x3f);
    input_report_abs(dev, ABS_Y, (data[0] >> 8) & 0x3f);
    input_report_abs(dev, ABS_RX, (data[1] >> 2) & 0x3f);
    input_report_abs(dev, ABS_RY, (data[1] >> 8) & 0x3f);
    input_report_abs(dev, ABS_THROTTLE, (data[2] >> 8) & 0x3f);

    input_report_abs(dev, ABS_HAT0X, ((data[2] >> 1) & 1) - ( data[2] & 1));
    input_report_abs(dev, ABS_HAT0Y, ((data[2] >> 2) & 1) - ((data[2] >> 3) & 1));

    for (j = 0; j < 9; j++)
     input_report_key(dev, grip_btn_dc[j], (data[3] >> (j + 3)) & 1);
    break;


  }

  input_sync(dev);
 }
}
