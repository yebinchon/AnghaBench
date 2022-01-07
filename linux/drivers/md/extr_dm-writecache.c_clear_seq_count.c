
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wc_entry {int seq_count; } ;
struct dm_writecache {int dummy; } ;
struct TYPE_2__ {int seq_count; } ;


 int cpu_to_le64 (int) ;
 TYPE_1__* memory_entry (struct dm_writecache*,struct wc_entry*) ;
 int pmem_assign (int ,int ) ;

__attribute__((used)) static void clear_seq_count(struct dm_writecache *wc, struct wc_entry *e)
{



 pmem_assign(memory_entry(wc, e)->seq_count, cpu_to_le64(-1));
}
