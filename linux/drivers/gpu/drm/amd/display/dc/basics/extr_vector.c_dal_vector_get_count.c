
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vector {int count; } ;



uint32_t dal_vector_get_count(
 const struct vector *vector)
{
 return vector->count;
}
