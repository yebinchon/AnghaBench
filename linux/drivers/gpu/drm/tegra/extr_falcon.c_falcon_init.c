
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * vaddr; } ;
struct falcon {TYPE_2__ firmware; TYPE_1__* ops; } ;
struct TYPE_3__ {int free; int alloc; } ;


 int EINVAL ;

int falcon_init(struct falcon *falcon)
{

 if (!falcon->ops || !falcon->ops->alloc || !falcon->ops->free)
  return -EINVAL;

 falcon->firmware.vaddr = ((void*)0);

 return 0;
}
