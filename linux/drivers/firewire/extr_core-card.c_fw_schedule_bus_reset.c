
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int br_short; int br_work; } ;


 int DIV_ROUND_UP (int ,int) ;
 int HZ ;
 int fw_card_get (struct fw_card*) ;
 int fw_card_put (struct fw_card*) ;
 int fw_workqueue ;
 int queue_delayed_work (int ,int *,int ) ;

void fw_schedule_bus_reset(struct fw_card *card, bool delayed, bool short_reset)
{

 card->br_short = short_reset;


 fw_card_get(card);
 if (!queue_delayed_work(fw_workqueue, &card->br_work,
    delayed ? DIV_ROUND_UP(HZ, 100) : 0))
  fw_card_put(card);
}
