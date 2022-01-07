
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wc_entry {int dummy; } ;
struct dm_writecache {scalar_t__ seq_count; } ;


 scalar_t__ read_seq_count (struct dm_writecache*,struct wc_entry*) ;

__attribute__((used)) static bool writecache_entry_is_committed(struct dm_writecache *wc, struct wc_entry *e)
{
 return read_seq_count(wc, e) < wc->seq_count;
}
