
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ align_val (size_t) ;

__attribute__((used)) static inline void *align_ptr(void *ptr)
{
 return (void *)align_val((size_t)ptr);
}
