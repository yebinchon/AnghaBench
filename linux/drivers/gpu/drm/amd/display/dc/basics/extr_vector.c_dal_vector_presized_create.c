
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vector {int dummy; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 scalar_t__ dal_vector_presized_costruct (struct vector*,struct dc_context*,int ,void*,int ) ;
 int kfree (struct vector*) ;
 struct vector* kzalloc (int,int ) ;

struct vector *dal_vector_presized_create(
 struct dc_context *ctx,
 uint32_t size,
 void *initial_value,
 uint32_t struct_size)
{
 struct vector *vector = kzalloc(sizeof(struct vector), GFP_KERNEL);

 if (vector == ((void*)0))
  return ((void*)0);

 if (dal_vector_presized_costruct(
  vector, ctx, size, initial_value, struct_size))
  return vector;

 BREAK_TO_DEBUGGER();
 kfree(vector);
 return ((void*)0);
}
