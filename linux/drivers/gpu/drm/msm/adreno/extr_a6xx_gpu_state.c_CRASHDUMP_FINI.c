
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static inline int CRASHDUMP_FINI(u64 *in)
{
 in[0] = 0;
 in[1] = 0;

 return 2;
}
