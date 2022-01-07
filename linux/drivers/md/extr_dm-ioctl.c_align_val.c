
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGN_MASK ;

__attribute__((used)) static inline size_t align_val(size_t val)
{
 return (val + ALIGN_MASK) & ~ALIGN_MASK;
}
