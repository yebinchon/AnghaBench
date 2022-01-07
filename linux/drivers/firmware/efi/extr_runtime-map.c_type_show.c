
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct efi_runtime_map_entry {TYPE_1__ md; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t type_show(struct efi_runtime_map_entry *entry, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "0x%x\n", entry->md.type);
}
