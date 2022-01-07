
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int regmap; } ;


 int ADV7511_REG_PACKET_ENABLE0 ;
 int ADV7511_REG_PACKET_ENABLE1 ;
 int regmap_update_bits (int ,int ,unsigned int,int) ;

__attribute__((used)) static int adv7511_packet_disable(struct adv7511 *adv7511, unsigned int packet)
{
 if (packet & 0xff)
  regmap_update_bits(adv7511->regmap, ADV7511_REG_PACKET_ENABLE0,
       packet, 0x00);

 if (packet & 0xff00) {
  packet >>= 8;
  regmap_update_bits(adv7511->regmap, ADV7511_REG_PACKET_ENABLE1,
       packet, 0x00);
 }

 return 0;
}
