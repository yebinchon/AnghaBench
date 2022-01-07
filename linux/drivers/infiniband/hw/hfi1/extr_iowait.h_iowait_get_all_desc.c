
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct iowait {int * wait; } ;


 size_t IOWAIT_IB_SE ;
 size_t IOWAIT_TID_SE ;
 scalar_t__ iowait_get_desc (int *) ;

__attribute__((used)) static inline u32 iowait_get_all_desc(struct iowait *w)
{
 u32 num_desc = 0;

 num_desc = iowait_get_desc(&w->wait[IOWAIT_IB_SE]);
 num_desc += iowait_get_desc(&w->wait[IOWAIT_TID_SE]);
 return num_desc;
}
