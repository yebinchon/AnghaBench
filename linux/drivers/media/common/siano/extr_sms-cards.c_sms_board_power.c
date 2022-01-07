
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smscore_device_t {int dummy; } ;
struct sms_board {int lna_ctrl; int led_power; } ;





 struct sms_board* sms_get_board (int) ;
 int sms_set_gpio (struct smscore_device_t*,int ,int) ;
 int smscore_get_board_id (struct smscore_device_t*) ;

int sms_board_power(struct smscore_device_t *coredev, int onoff)
{
 int board_id = smscore_get_board_id(coredev);
 struct sms_board *board = sms_get_board(board_id);

 switch (board_id) {
 case 128:

  sms_set_gpio(coredev,
        board->led_power, onoff ? 1 : 0);
  break;
 case 129:
 case 130:

  if (!onoff)
   sms_set_gpio(coredev, board->lna_ctrl, 0);
  break;
 }
 return 0;
}
