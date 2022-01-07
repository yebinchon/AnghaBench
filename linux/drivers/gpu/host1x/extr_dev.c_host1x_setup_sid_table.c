
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_sid_entry {scalar_t__ base; int limit; int offset; } ;
struct host1x_info {unsigned int num_sid_entries; struct host1x_sid_entry* sid_table; } ;
struct host1x {struct host1x_info* info; } ;


 int host1x_hypervisor_writel (struct host1x*,int ,scalar_t__) ;

__attribute__((used)) static void host1x_setup_sid_table(struct host1x *host)
{
 const struct host1x_info *info = host->info;
 unsigned int i;

 for (i = 0; i < info->num_sid_entries; i++) {
  const struct host1x_sid_entry *entry = &info->sid_table[i];

  host1x_hypervisor_writel(host, entry->offset, entry->base);
  host1x_hypervisor_writel(host, entry->limit, entry->base + 4);
 }
}
