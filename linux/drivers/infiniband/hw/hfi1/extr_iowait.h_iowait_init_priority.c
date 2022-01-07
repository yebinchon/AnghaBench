
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int (* init_priority ) (struct iowait*) ;scalar_t__ priority; } ;


 int stub1 (struct iowait*) ;

__attribute__((used)) static inline void iowait_init_priority(struct iowait *w)
{
 w->priority = 0;
 if (w->init_priority)
  w->init_priority(w);
}
