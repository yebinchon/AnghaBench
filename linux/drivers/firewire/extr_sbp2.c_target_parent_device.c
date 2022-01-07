
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp2_target {int unit; } ;
struct fw_device {int dummy; } ;


 struct fw_device* fw_parent_device (int ) ;

__attribute__((used)) static struct fw_device *target_parent_device(struct sbp2_target *tgt)
{
 return fw_parent_device(tgt->unit);
}
