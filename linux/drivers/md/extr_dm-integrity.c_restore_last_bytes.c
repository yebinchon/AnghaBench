
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_sector {int commit_id; } ;
struct journal_entry {int * last_bytes; } ;
struct dm_integrity_c {unsigned int sectors_per_block; } ;



__attribute__((used)) static void restore_last_bytes(struct dm_integrity_c *ic, struct journal_sector *js,
          struct journal_entry *je)
{
 unsigned s = 0;
 do {
  js->commit_id = je->last_bytes[s];
  js++;
 } while (++s < ic->sectors_per_block);
}
