
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;

__attribute__((used)) static inline void *unmask_page(unsigned long p)
{
 return (void *)(uintptr_t)(p & PAGE_MASK);
}
