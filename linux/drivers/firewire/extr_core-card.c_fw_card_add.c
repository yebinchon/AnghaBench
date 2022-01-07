
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct fw_card {int link; TYPE_1__* driver; int guid; void* link_speed; void* max_receive; } ;
struct TYPE_2__ {int (* enable ) (struct fw_card*,int ,int ) ;} ;


 int card_list ;
 int card_mutex ;
 int config_rom_length ;
 int generate_config_rom (struct fw_card*,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct fw_card*,int ,int ) ;
 int tmp_config_rom ;

int fw_card_add(struct fw_card *card,
  u32 max_receive, u32 link_speed, u64 guid)
{
 int ret;

 card->max_receive = max_receive;
 card->link_speed = link_speed;
 card->guid = guid;

 mutex_lock(&card_mutex);

 generate_config_rom(card, tmp_config_rom);
 ret = card->driver->enable(card, tmp_config_rom, config_rom_length);
 if (ret == 0)
  list_add_tail(&card->link, &card_list);

 mutex_unlock(&card_mutex);

 return ret;
}
