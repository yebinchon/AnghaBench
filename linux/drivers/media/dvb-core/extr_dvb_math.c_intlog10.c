
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;


 int WARN_ON (int) ;
 int intlog2 (scalar_t__) ;
 scalar_t__ unlikely (int) ;

unsigned int intlog10(u32 value)
{




 u64 log;

 if (unlikely(value == 0)) {
  WARN_ON(1);
  return 0;
 }

 log = intlog2(value);






 return (log * 646456993) >> 31;
}
