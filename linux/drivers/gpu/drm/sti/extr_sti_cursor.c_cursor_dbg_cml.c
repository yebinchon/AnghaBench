
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sti_cursor {scalar_t__ clut_paddr; int clut; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static void cursor_dbg_cml(struct seq_file *s,
      struct sti_cursor *cursor, u32 val)
{
 if (cursor->clut_paddr == val)
  seq_printf(s, "\tVirt @: %p", cursor->clut);
}
