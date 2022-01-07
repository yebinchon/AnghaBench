
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ CC_FIRST_CPP_KEY_SLOT ;

__attribute__((used)) static u8 cc_slot_to_cpp_key(u8 slot_num)
{
 return (slot_num - CC_FIRST_CPP_KEY_SLOT);
}
