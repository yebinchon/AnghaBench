
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vector {void* container; int count; int struct_size; } ;



void *dal_vector_at_index(
 const struct vector *vector,
 uint32_t index)
{
 if (vector->container == ((void*)0) || index >= vector->count)
  return ((void*)0);
 return vector->container + (index * vector->struct_size);
}
