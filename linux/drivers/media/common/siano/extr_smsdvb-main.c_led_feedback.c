
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_client_t {int fe_status; scalar_t__ legacy_ber; int coredev; } ;


 int FE_HAS_LOCK ;
 int SMS_LED_HI ;
 int SMS_LED_LO ;
 int SMS_LED_OFF ;
 int sms_board_led_feedback (int ,int ) ;

__attribute__((used)) static inline int led_feedback(struct smsdvb_client_t *client)
{
 if (!(client->fe_status & FE_HAS_LOCK))
  return sms_board_led_feedback(client->coredev, SMS_LED_OFF);

 return sms_board_led_feedback(client->coredev,
         (client->legacy_ber == 0) ?
         SMS_LED_HI : SMS_LED_LO);
}
