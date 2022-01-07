
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bch_strtoint_h (char const*,int*) ;
 int bch_strtoll_h (char const*,long long*) ;

__attribute__((used)) static inline int bch_strtol_h(const char *cp, long *res)
{



 return bch_strtoll_h(cp, (long long *) res);

}
