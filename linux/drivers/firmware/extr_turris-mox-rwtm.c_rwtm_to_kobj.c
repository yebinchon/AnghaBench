
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mox_rwtm {TYPE_1__* kobj; } ;
struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject kobj; } ;



__attribute__((used)) static inline struct kobject *rwtm_to_kobj(struct mox_rwtm *rwtm)
{
 return &rwtm->kobj->kobj;
}
