
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ffs (unsigned int) ;

__attribute__((used)) static inline unsigned int to_mdc_width(unsigned int bytes)
{
 return ffs(bytes) - 1;
}
