
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static int set_ref_count(void *context, uint32_t old, uint32_t *new)
{
 *new = *((uint32_t *) context);
 return 0;
}
