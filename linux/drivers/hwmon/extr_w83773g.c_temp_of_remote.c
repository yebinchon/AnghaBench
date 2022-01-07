
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;



__attribute__((used)) static inline long temp_of_remote(s8 hb, u8 lb)
{
 return (hb << 3 | lb >> 5) * 125;
}
