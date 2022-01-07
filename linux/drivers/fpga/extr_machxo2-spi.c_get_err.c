
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;


 unsigned long ERRBITS ;
 unsigned long ERRMASK ;

__attribute__((used)) static inline u8 get_err(unsigned long *status)
{
 return (*status >> ERRBITS) & ERRMASK;
}
