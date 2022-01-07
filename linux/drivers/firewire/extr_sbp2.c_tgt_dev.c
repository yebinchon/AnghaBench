
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbp2_target {TYPE_1__* unit; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device const device; } ;



__attribute__((used)) static const struct device *tgt_dev(const struct sbp2_target *tgt)
{
 return &tgt->unit->device;
}
