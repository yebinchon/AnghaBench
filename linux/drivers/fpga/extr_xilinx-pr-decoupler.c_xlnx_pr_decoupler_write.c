
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xlnx_pr_decoupler_data {scalar_t__ io_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void xlnx_pr_decoupler_write(struct xlnx_pr_decoupler_data *d,
        u32 offset, u32 val)
{
 writel(val, d->io_base + offset);
}
