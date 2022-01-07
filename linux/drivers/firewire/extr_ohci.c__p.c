
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char* port ;

__attribute__((used)) static char _p(u32 *s, int shift)
{
 return port[*s >> shift & 3];
}
