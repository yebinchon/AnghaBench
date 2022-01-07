
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vector {int capacity; int struct_size; void* container; } ;


 int GFP_KERNEL ;
 void* krealloc (void*,int,int ) ;

bool dal_vector_reserve(struct vector *vector, uint32_t capacity)
{
 void *new_container;

 if (capacity <= vector->capacity)
  return 1;

 new_container = krealloc(vector->container,
     capacity * vector->struct_size, GFP_KERNEL);

 if (new_container) {
  vector->container = new_container;
  vector->capacity = capacity;
  return 1;
 }

 return 0;
}
