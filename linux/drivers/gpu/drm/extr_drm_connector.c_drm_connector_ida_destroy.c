
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ida; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* drm_connector_enum_list ;
 int ida_destroy (int *) ;

void drm_connector_ida_destroy(void)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(drm_connector_enum_list); i++)
  ida_destroy(&drm_connector_enum_list[i].ida);
}
