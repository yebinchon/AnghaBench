
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int init_complete; int * cache; int * index; } ;


 int kfree (int *) ;
 TYPE_1__ smcreg ;

__attribute__((used)) static void applesmc_destroy_smcreg(void)
{
 kfree(smcreg.index);
 smcreg.index = ((void*)0);
 kfree(smcreg.cache);
 smcreg.cache = ((void*)0);
 smcreg.init_complete = 0;
}
