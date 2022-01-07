
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void const uint8_t ;
typedef int uint32_t ;
struct vector {int count; int capacity; void* container; int struct_size; } ;


 int calc_increased_capacity (int) ;
 int dal_vector_reserve (struct vector*,int ) ;
 int memmove (void const*,void const*,int) ;

bool dal_vector_insert_at(
 struct vector *vector,
 const void *what,
 uint32_t position)
{
 uint8_t *insert_address;

 if (vector->count == vector->capacity) {
  if (!dal_vector_reserve(
   vector,
   calc_increased_capacity(vector->capacity)))
   return 0;
 }

 insert_address = vector->container + (vector->struct_size * position);

 if (vector->count && position < vector->count)
  memmove(
   insert_address + vector->struct_size,
   insert_address,
   vector->struct_size * (vector->count - position));

 memmove(
  insert_address,
  what,
  vector->struct_size);

 vector->count++;

 return 1;
}
