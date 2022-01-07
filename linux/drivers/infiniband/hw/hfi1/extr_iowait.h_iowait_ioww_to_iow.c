
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait_work {struct iowait* iow; } ;
struct iowait {int dummy; } ;


 scalar_t__ likely (struct iowait_work*) ;

__attribute__((used)) static inline struct iowait *iowait_ioww_to_iow(struct iowait_work *w)
{
 if (likely(w))
  return w->iow;
 return ((void*)0);
}
