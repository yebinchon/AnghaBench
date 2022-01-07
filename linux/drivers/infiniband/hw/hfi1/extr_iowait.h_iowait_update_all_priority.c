
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {int * wait; } ;


 size_t IOWAIT_IB_SE ;
 size_t IOWAIT_TID_SE ;
 int iowait_update_priority (int *) ;

__attribute__((used)) static inline void iowait_update_all_priority(struct iowait *w)
{
 iowait_update_priority(&w->wait[IOWAIT_IB_SE]);
 iowait_update_priority(&w->wait[IOWAIT_TID_SE]);
}
