
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector {scalar_t__ count; } ;



void dal_vector_clear(struct vector *vector)
{
 vector->count = 0;
}
