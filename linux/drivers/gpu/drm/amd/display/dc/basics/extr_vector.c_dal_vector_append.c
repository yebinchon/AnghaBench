
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector {int count; } ;


 int dal_vector_insert_at (struct vector*,void const*,int ) ;

bool dal_vector_append(
 struct vector *vector,
 const void *item)
{
 return dal_vector_insert_at(vector, item, vector->count);
}
