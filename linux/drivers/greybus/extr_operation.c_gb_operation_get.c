
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_operation {int kref; } ;


 int kref_get (int *) ;

void gb_operation_get(struct gb_operation *operation)
{
 kref_get(&operation->kref);
}
