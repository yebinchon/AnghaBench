
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vector {int capacity; int struct_size; int container; int ctx; } ;


 int BREAK_TO_DEBUGGER () ;
 struct vector* dal_vector_create (int ,int,int) ;
 scalar_t__ dal_vector_get_count (struct vector const*) ;
 struct vector* dal_vector_presized_create (int ,scalar_t__,int *,int) ;
 int memmove (int ,int ,int) ;

struct vector *dal_vector_clone(
 const struct vector *vector)
{
 struct vector *vec_cloned;
 uint32_t count;


 count = dal_vector_get_count(vector);

 if (count == 0)


  vec_cloned = dal_vector_create(
   vector->ctx,
   vector->capacity,
   vector->struct_size);
 else





  vec_cloned = dal_vector_presized_create(vector->ctx, count,
   ((void*)0),
   vector->struct_size);

 if (((void*)0) == vec_cloned) {
  BREAK_TO_DEBUGGER();
  return ((void*)0);
 }


 memmove(vec_cloned->container, vector->container,
   vec_cloned->struct_size * vec_cloned->capacity);

 return vec_cloned;
}
