
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vector {int count; int struct_size; scalar_t__ container; } ;


 int memmove (scalar_t__,scalar_t__,int) ;

bool dal_vector_remove_at_index(
 struct vector *vector,
 uint32_t index)
{
 if (index >= vector->count)
  return 0;

 if (index != vector->count - 1)
  memmove(
   vector->container + (index * vector->struct_size),
   vector->container + ((index + 1) * vector->struct_size),
   (vector->count - index - 1) * vector->struct_size);
 vector->count -= 1;

 return 1;
}
