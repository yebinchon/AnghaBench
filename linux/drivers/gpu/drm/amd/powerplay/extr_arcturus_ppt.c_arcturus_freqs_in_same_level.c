
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ EPSILON ;
 scalar_t__ abs (scalar_t__) ;

__attribute__((used)) static int arcturus_freqs_in_same_level(int32_t frequency1,
     int32_t frequency2)
{
 return (abs(frequency1 - frequency2) <= EPSILON);
}
