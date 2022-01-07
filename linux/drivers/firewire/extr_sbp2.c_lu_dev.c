
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sbp2_logical_unit {TYPE_2__* tgt; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* unit; } ;
struct TYPE_3__ {struct device const device; } ;



__attribute__((used)) static const struct device *lu_dev(const struct sbp2_logical_unit *lu)
{
 return &lu->tgt->unit->device;
}
