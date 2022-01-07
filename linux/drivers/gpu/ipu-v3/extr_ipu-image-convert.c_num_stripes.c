
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int num_stripes(int dim)
{
 return (dim - 1) / 1024 + 1;
}
