
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct edac_device_block {TYPE_2__* instance; } ;
struct TYPE_4__ {TYPE_1__* ctl; } ;
struct TYPE_3__ {int kobj; } ;


 int edac_dbg (int,char*) ;
 int kobject_put (int *) ;
 struct edac_device_block* to_block (struct kobject*) ;

__attribute__((used)) static void edac_device_ctrl_block_release(struct kobject *kobj)
{
 struct edac_device_block *block;

 edac_dbg(1, "\n");


 block = to_block(kobj);




 kobject_put(&block->instance->ctl->kobj);
}
