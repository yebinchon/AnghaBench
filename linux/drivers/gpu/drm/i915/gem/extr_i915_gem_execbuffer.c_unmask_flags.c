
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;

__attribute__((used)) static inline unsigned int unmask_flags(unsigned long p)
{
 return p & ~PAGE_MASK;
}
