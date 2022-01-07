
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_dev {int detach; int count; } ;


 scalar_t__ refcount_dec_and_test (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static inline void cached_dev_put(struct cached_dev *dc)
{
 if (refcount_dec_and_test(&dc->count))
  schedule_work(&dc->detach);
}
