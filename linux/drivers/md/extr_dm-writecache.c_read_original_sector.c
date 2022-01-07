
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct wc_entry {int original_sector; } ;
struct dm_writecache {int dummy; } ;
struct TYPE_2__ {int original_sector; } ;


 int le64_to_cpu (int ) ;
 TYPE_1__* memory_entry (struct dm_writecache*,struct wc_entry*) ;

__attribute__((used)) static uint64_t read_original_sector(struct dm_writecache *wc, struct wc_entry *e)
{



 return le64_to_cpu(memory_entry(wc, e)->original_sector);

}
