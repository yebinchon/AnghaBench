
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct skl_ddb_entry {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static inline u16 skl_ddb_entry_size(const struct skl_ddb_entry *entry)
{
 return entry->end - entry->start;
}
