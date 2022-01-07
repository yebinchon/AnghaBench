
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_queue_inst {int queue_state; } ;
struct ti_msgmgr_desc {int status_err_mask; int is_sproxy; } ;


 int readl (int ) ;

__attribute__((used)) static inline bool ti_msgmgr_queue_is_error(const struct ti_msgmgr_desc *d,
         struct ti_queue_inst *qinst)
{
 u32 val;


 if (!d->is_sproxy)
  return 0;





 val = readl(qinst->queue_state) & d->status_err_mask;

 return val ? 1 : 0;
}
