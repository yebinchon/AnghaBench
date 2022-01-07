
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rmi_register_desc_item {int subpacket_map; } ;


 int RMI_REG_DESC_PRESENSE_BITS ;
 scalar_t__ find_next_bit (int ,int ,scalar_t__) ;

bool rmi_register_desc_has_subpacket(const struct rmi_register_desc_item *item,
 u8 subpacket)
{
 return find_next_bit(item->subpacket_map, RMI_REG_DESC_PRESENSE_BITS,
    subpacket) == subpacket;
}
