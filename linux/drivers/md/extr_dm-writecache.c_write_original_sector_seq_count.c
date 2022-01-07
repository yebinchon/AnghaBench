
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64_t ;
struct wc_memory_entry {void* seq_count; void* original_sector; } ;
struct wc_entry {void* seq_count; void* original_sector; } ;
struct dm_writecache {int dummy; } ;


 void* cpu_to_le64 (void*) ;
 int * memory_entry (struct dm_writecache*,struct wc_entry*) ;
 int pmem_assign (int ,struct wc_memory_entry) ;

__attribute__((used)) static void write_original_sector_seq_count(struct dm_writecache *wc, struct wc_entry *e,
         uint64_t original_sector, uint64_t seq_count)
{
 struct wc_memory_entry me;




 me.original_sector = cpu_to_le64(original_sector);
 me.seq_count = cpu_to_le64(seq_count);
 pmem_assign(*memory_entry(wc, e), me);
}
