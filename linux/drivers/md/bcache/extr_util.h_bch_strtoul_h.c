
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bch_strtouint_h (char const*,unsigned int*) ;
 int bch_strtoull_h (char const*,unsigned long long*) ;

__attribute__((used)) static inline int bch_strtoul_h(const char *cp, long *res)
{



 return bch_strtoull_h(cp, (unsigned long long *) res);

}
