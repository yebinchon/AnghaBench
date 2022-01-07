
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int test_bit (int ,unsigned long*) ;

__attribute__((used)) static int is_dirty_callback(uint32_t index, bool *value, void *context)
{
 unsigned long *bits = context;
 *value = test_bit(index, bits);
 return 0;
}
