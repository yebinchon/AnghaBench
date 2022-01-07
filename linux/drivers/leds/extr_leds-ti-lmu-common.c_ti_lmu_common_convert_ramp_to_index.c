
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned int*) ;
 unsigned int* ramp_table ;

__attribute__((used)) static unsigned int ti_lmu_common_convert_ramp_to_index(unsigned int usec)
{
 int size = ARRAY_SIZE(ramp_table);
 int i;

 if (usec <= ramp_table[0])
  return 0;

 if (usec > ramp_table[size - 1])
  return size - 1;

 for (i = 1; i < size; i++) {
  if (usec == ramp_table[i])
   return i;


  if (usec > ramp_table[i - 1] && usec < ramp_table[i]) {
   if (usec - ramp_table[i - 1] < ramp_table[i] - usec)
    return i - 1;
   else
    return i;
  }
 }

 return 0;
}
