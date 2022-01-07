
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {int kref; } ;


 scalar_t__ WARN_ON (int) ;
 int _gb_operation_destroy ;
 int kref_put (int *,int ) ;

void gb_operation_put(struct gb_operation *operation)
{
 if (WARN_ON(!operation))
  return;

 kref_put(&operation->kref, _gb_operation_destroy);
}
