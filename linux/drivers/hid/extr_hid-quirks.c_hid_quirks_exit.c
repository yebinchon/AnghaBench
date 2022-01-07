
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;


 int hid_remove_all_dquirks (int ) ;

void hid_quirks_exit(__u16 bus)
{
 hid_remove_all_dquirks(bus);
}
