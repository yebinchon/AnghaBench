
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector {int dummy; } ;


 int dal_vector_destruct (struct vector*) ;
 int kfree (struct vector*) ;

void dal_vector_destroy(
 struct vector **vector)
{
 if (vector == ((void*)0) || *vector == ((void*)0))
  return;
 dal_vector_destruct(*vector);
 kfree(*vector);
 *vector = ((void*)0);
}
