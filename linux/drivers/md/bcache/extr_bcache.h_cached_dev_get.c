
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_dev {int count; } ;


 int refcount_inc_not_zero (int *) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static inline bool cached_dev_get(struct cached_dev *dc)
{
 if (!refcount_inc_not_zero(&dc->count))
  return 0;


 smp_mb__after_atomic();
 return 1;
}
