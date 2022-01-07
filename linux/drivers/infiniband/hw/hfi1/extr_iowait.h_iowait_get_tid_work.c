
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait_work {int dummy; } ;
struct iowait {struct iowait_work* wait; } ;


 size_t IOWAIT_TID_SE ;

__attribute__((used)) static inline struct iowait_work *iowait_get_tid_work(struct iowait *w)
{
 return &w->wait[IOWAIT_TID_SE];
}
