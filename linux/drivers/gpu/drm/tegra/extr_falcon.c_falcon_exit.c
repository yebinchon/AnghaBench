
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * vaddr; int paddr; int size; int * firmware; } ;
struct falcon {TYPE_1__ firmware; TYPE_2__* ops; } ;
struct TYPE_4__ {int (* free ) (struct falcon*,int ,int ,int *) ;} ;


 int release_firmware (int *) ;
 int stub1 (struct falcon*,int ,int ,int *) ;

void falcon_exit(struct falcon *falcon)
{
 if (falcon->firmware.firmware) {
  release_firmware(falcon->firmware.firmware);
  falcon->firmware.firmware = ((void*)0);
 }

 if (falcon->firmware.vaddr) {
  falcon->ops->free(falcon, falcon->firmware.size,
      falcon->firmware.paddr,
      falcon->firmware.vaddr);
  falcon->firmware.vaddr = ((void*)0);
 }
}
