
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ paddr; int base; } ;
struct sti_cursor {TYPE_1__ pixmap; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void cursor_dbg_pml(struct seq_file *s,
      struct sti_cursor *cursor, u32 val)
{
 if (cursor->pixmap.paddr == val)
  seq_printf(s, "\tVirt @: %p", cursor->pixmap.base);
}
