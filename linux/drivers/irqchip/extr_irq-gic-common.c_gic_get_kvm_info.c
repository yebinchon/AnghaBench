
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gic_kvm_info {int dummy; } ;


 struct gic_kvm_info const* gic_kvm_info ;

const struct gic_kvm_info *gic_get_kvm_info(void)
{
 return gic_kvm_info;
}
