
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card_driver {int stop_iso; int free_iso_context; int (* update_phy_reg ) (struct fw_card*,int,int,int ) ;} ;
struct fw_card {int transaction_list; int done; struct fw_card_driver* driver; int link; } ;


 int PHY_CONTENDER ;
 int PHY_LINK_ACTIVE ;
 int WARN_ON (int) ;
 int card_mutex ;
 struct fw_card_driver dummy_driver_template ;
 int fw_card_put (struct fw_card*) ;
 int fw_destroy_nodes (struct fw_card*) ;
 int fw_schedule_bus_reset (struct fw_card*,int,int) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fw_card*,int,int,int ) ;
 int wait_for_completion (int *) ;

void fw_core_remove_card(struct fw_card *card)
{
 struct fw_card_driver dummy_driver = dummy_driver_template;

 card->driver->update_phy_reg(card, 4,
         PHY_LINK_ACTIVE | PHY_CONTENDER, 0);
 fw_schedule_bus_reset(card, 0, 1);

 mutex_lock(&card_mutex);
 list_del_init(&card->link);
 mutex_unlock(&card_mutex);


 dummy_driver.free_iso_context = card->driver->free_iso_context;
 dummy_driver.stop_iso = card->driver->stop_iso;
 card->driver = &dummy_driver;

 fw_destroy_nodes(card);


 fw_card_put(card);
 wait_for_completion(&card->done);

 WARN_ON(!list_empty(&card->transaction_list));
}
