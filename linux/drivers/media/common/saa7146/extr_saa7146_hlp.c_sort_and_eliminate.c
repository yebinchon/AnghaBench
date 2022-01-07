
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EINVAL ;
 int swap (scalar_t__,scalar_t__) ;

__attribute__((used)) static int sort_and_eliminate(u32* values, int* count)
{
 int low = 0, high = 0, top = 0;
 int cur = 0, next = 0;


 if( (0 > *count) || (((void*)0) == values) ) {
  return -EINVAL;
 }


 for( top = *count; top > 0; top--) {
  for( low = 0, high = 1; high < top; low++, high++) {
   if( values[low] > values[high] )
    swap(values[low], values[high]);
  }
 }


 for( cur = 0, next = 1; next < *count; next++) {
  if( values[cur] != values[next])
   values[++cur] = values[next];
 }

 *count = cur + 1;

 return 0;
}
