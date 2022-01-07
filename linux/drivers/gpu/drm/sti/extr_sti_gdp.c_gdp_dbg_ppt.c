
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int GAM_GDP_PPT_IGNORE ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void gdp_dbg_ppt(struct seq_file *s, int val)
{
 if (val & GAM_GDP_PPT_IGNORE)
  seq_puts(s, "\tNot displayed on mixer!");
}
