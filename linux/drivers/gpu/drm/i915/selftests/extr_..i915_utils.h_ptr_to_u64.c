
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef uintptr_t u64 ;



__attribute__((used)) static inline u64 ptr_to_u64(const void *ptr)
{
 return (uintptr_t)ptr;
}
