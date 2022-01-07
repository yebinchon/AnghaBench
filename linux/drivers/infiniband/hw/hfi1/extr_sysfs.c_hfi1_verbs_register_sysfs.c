
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct device {int kobj; } ;
struct ib_device {struct device dev; } ;
struct TYPE_6__ {struct ib_device ibdev; } ;
struct TYPE_7__ {TYPE_1__ rdi; } ;
struct hfi1_devdata {int num_sdma; TYPE_3__* per_sdma; TYPE_2__ verbs_dev; } ;
struct TYPE_9__ {int attr; } ;
struct TYPE_8__ {int kobj; } ;


 int ARRAY_SIZE (TYPE_4__**) ;
 int kobject_del (int *) ;
 int kobject_init_and_add (int *,int *,int *,char*,int) ;
 TYPE_4__** sde_attribs ;
 int sde_ktype ;
 int sysfs_create_file (int *,int *) ;

int hfi1_verbs_register_sysfs(struct hfi1_devdata *dd)
{
 struct ib_device *dev = &dd->verbs_dev.rdi.ibdev;
 struct device *class_dev = &dev->dev;
 int i, j, ret;

 for (i = 0; i < dd->num_sdma; i++) {
  ret = kobject_init_and_add(&dd->per_sdma[i].kobj,
        &sde_ktype, &class_dev->kobj,
        "sdma%d", i);
  if (ret)
   goto bail;

  for (j = 0; j < ARRAY_SIZE(sde_attribs); j++) {
   ret = sysfs_create_file(&dd->per_sdma[i].kobj,
      &sde_attribs[j]->attr);
   if (ret)
    goto bail;
  }
 }

 return 0;
bail:
 for (i = 0; i < dd->num_sdma; i++)
  kobject_del(&dd->per_sdma[i].kobj);

 return ret;
}
