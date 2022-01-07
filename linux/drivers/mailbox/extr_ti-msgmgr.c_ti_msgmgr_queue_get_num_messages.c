
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_queue_inst {int queue_state; } ;
struct ti_msgmgr_desc {int status_cnt_mask; } ;


 int __ffs (int) ;
 int readl (int ) ;

__attribute__((used)) static inline int
ti_msgmgr_queue_get_num_messages(const struct ti_msgmgr_desc *d,
     struct ti_queue_inst *qinst)
{
 u32 val;
 u32 status_cnt_mask = d->status_cnt_mask;





 val = readl(qinst->queue_state) & status_cnt_mask;
 val >>= __ffs(status_cnt_mask);

 return val;
}
