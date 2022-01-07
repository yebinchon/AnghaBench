
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mox_rwtm {TYPE_1__* kobj; } ;
struct TYPE_2__ {struct mox_rwtm* rwtm; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int firmware_kobj ;
 scalar_t__ kobject_add (int ,int ,char*) ;
 int kobject_init (int ,int *) ;
 int kobject_put (int ) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mox_kobj_ktype ;
 int rwtm_to_kobj (struct mox_rwtm*) ;

__attribute__((used)) static int mox_kobj_create(struct mox_rwtm *rwtm)
{
 rwtm->kobj = kzalloc(sizeof(*rwtm->kobj), GFP_KERNEL);
 if (!rwtm->kobj)
  return -ENOMEM;

 kobject_init(rwtm_to_kobj(rwtm), &mox_kobj_ktype);
 if (kobject_add(rwtm_to_kobj(rwtm), firmware_kobj, "turris-mox-rwtm")) {
  kobject_put(rwtm_to_kobj(rwtm));
  return -ENXIO;
 }

 rwtm->kobj->rwtm = rwtm;

 return 0;
}
