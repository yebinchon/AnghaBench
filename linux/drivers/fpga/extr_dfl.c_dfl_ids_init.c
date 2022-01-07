
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* dfl_devs ;
 int idr_init (int *) ;

__attribute__((used)) static void dfl_ids_init(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dfl_devs); i++)
  idr_init(&dfl_devs[i].id);
}
