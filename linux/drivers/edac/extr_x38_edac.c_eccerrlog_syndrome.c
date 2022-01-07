
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int X38_ECCERRLOG_SYNDROME_BITS ;

__attribute__((used)) static unsigned long eccerrlog_syndrome(u64 log)
{
 return (log & X38_ECCERRLOG_SYNDROME_BITS) >> 16;
}
