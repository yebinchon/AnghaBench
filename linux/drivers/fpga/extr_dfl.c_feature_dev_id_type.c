
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int name; } ;
typedef enum dfl_id_type { ____Placeholder_dfl_id_type } dfl_id_type ;
struct TYPE_3__ {int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int DFL_ID_MAX ;
 TYPE_1__* dfl_devs ;
 int strcmp (int ,int ) ;

__attribute__((used)) static enum dfl_id_type feature_dev_id_type(struct platform_device *pdev)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(dfl_devs); i++)
  if (!strcmp(dfl_devs[i].name, pdev->name))
   return i;

 return DFL_ID_MAX;
}
