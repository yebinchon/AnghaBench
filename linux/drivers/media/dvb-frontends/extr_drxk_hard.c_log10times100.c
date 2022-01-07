
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long u32 ;


 long intlog10 (long) ;

__attribute__((used)) static inline u32 log10times100(u32 value)
{
 return (100L * intlog10(value)) >> 24;
}
