
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int guid_t ;
struct TYPE_3__ {int guid; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ guid_equal (int const*,int *) ;
 TYPE_1__* vmbus_unsupported_devs ;

__attribute__((used)) static bool is_unsupported_vmbus_devs(const guid_t *guid)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(vmbus_unsupported_devs); i++)
  if (guid_equal(guid, &vmbus_unsupported_devs[i].guid))
   return 1;
 return 0;
}
