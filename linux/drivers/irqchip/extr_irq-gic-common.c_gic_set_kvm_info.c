
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gic_kvm_info {int dummy; } ;


 int BUG_ON (int ) ;
 struct gic_kvm_info const* gic_kvm_info ;

void gic_set_kvm_info(const struct gic_kvm_info *info)
{
 BUG_ON(gic_kvm_info != ((void*)0));
 gic_kvm_info = info;
}
