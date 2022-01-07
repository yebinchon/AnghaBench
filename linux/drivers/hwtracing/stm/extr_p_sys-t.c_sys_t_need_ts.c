
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ts_interval; } ;
struct sys_t_output {scalar_t__ ts_jiffies; TYPE_1__ node; } ;


 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline bool sys_t_need_ts(struct sys_t_output *op)
{
 if (op->node.ts_interval &&
     time_after(op->ts_jiffies + op->node.ts_interval, jiffies)) {
  op->ts_jiffies = jiffies;

  return 1;
 }

 return 0;
}
