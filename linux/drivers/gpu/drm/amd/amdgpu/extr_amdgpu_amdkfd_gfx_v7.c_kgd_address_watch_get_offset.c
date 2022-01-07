
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct kgd_dev {int dummy; } ;


 unsigned int ADDRESS_WATCH_REG_MAX ;
 int * watchRegs ;

__attribute__((used)) static uint32_t kgd_address_watch_get_offset(struct kgd_dev *kgd,
     unsigned int watch_point_id,
     unsigned int reg_offset)
{
 return watchRegs[watch_point_id * ADDRESS_WATCH_REG_MAX + reg_offset];
}
