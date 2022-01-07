
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vector {int struct_size; } ;


 int BREAK_TO_DEBUGGER () ;
 void* dal_vector_at_index (struct vector const*,int ) ;
 int memmove (void*,void const*,int ) ;

void dal_vector_set_at_index(
 const struct vector *vector,
 const void *what,
 uint32_t index)
{
 void *where = dal_vector_at_index(vector, index);

 if (!where) {
  BREAK_TO_DEBUGGER();
  return;
 }
 memmove(
  where,
  what,
  vector->struct_size);
}
