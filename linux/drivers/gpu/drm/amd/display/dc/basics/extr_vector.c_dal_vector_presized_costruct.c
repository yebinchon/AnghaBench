
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vector {int capacity; int struct_size; int count; int * container; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int * kcalloc (int,int,int ) ;
 int memmove (int *,void*,int) ;

bool dal_vector_presized_costruct(
 struct vector *vector,
 struct dc_context *ctx,
 uint32_t count,
 void *initial_value,
 uint32_t struct_size)
{
 uint32_t i;

 vector->container = ((void*)0);

 if (!struct_size || !count) {

  BREAK_TO_DEBUGGER();
  return 0;
 }

 vector->container = kcalloc(count, struct_size, GFP_KERNEL);

 if (vector->container == ((void*)0))
  return 0;




 if (((void*)0) != initial_value) {
  for (i = 0; i < count; ++i)
   memmove(
    vector->container + i * struct_size,
    initial_value,
    struct_size);
 }

 vector->capacity = count;
 vector->struct_size = struct_size;
 vector->count = count;
 return 1;
}
