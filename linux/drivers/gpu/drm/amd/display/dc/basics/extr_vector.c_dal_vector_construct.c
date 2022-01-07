
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct vector {struct dc_context* ctx; scalar_t__ count; void* struct_size; void* capacity; int * container; } ;
struct dc_context {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int GFP_KERNEL ;
 int * kcalloc (void*,void*,int ) ;

bool dal_vector_construct(
 struct vector *vector,
 struct dc_context *ctx,
 uint32_t capacity,
 uint32_t struct_size)
{
 vector->container = ((void*)0);

 if (!struct_size || !capacity) {

  BREAK_TO_DEBUGGER();
  return 0;
 }

 vector->container = kcalloc(capacity, struct_size, GFP_KERNEL);
 if (vector->container == ((void*)0))
  return 0;
 vector->capacity = capacity;
 vector->struct_size = struct_size;
 vector->count = 0;
 vector->ctx = ctx;
 return 1;
}
