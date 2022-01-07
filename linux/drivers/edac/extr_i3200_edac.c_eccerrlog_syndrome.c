
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;


 unsigned long I3200_ECCERRLOG_SYNDROME_BITS ;
 unsigned long I3200_ECCERRLOG_SYNDROME_SHIFT ;

__attribute__((used)) static unsigned long eccerrlog_syndrome(u64 log)
{
 return (log & I3200_ECCERRLOG_SYNDROME_BITS) >>
  I3200_ECCERRLOG_SYNDROME_SHIFT;
}
