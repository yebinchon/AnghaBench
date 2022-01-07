
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int dummy; } ;


 int iowait_init_priority (struct iowait*) ;
 int iowait_update_all_priority (struct iowait*) ;

__attribute__((used)) static inline void iowait_get_priority(struct iowait *w)
{
 iowait_init_priority(w);
 iowait_update_all_priority(w);
}
