
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCACHE_MINORS ;

__attribute__((used)) static inline int idx_to_first_minor(int idx)
{
 return (idx * BCACHE_MINORS);
}
