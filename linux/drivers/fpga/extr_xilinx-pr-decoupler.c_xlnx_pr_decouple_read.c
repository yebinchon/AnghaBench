
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xlnx_pr_decoupler_data {scalar_t__ io_base; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 xlnx_pr_decouple_read(const struct xlnx_pr_decoupler_data *d,
     u32 offset)
{
 return readl(d->io_base + offset);
}
