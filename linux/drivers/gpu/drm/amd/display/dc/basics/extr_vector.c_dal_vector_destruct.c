
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector {scalar_t__ capacity; scalar_t__ count; int container; } ;


 int kfree (int ) ;

void dal_vector_destruct(
 struct vector *vector)
{
 kfree(vector->container);
 vector->count = 0;
 vector->capacity = 0;
}
