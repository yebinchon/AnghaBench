
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_3__ {int format; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int WAIT_NEXT_VSYNC ;
 TYPE_1__* gdp_format_to_str ;
 int seq_printf (struct seq_file*,char*,int) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void gdp_dbg_ctl(struct seq_file *s, int val)
{
 int i;

 seq_puts(s, "\tColor:");
 for (i = 0; i < ARRAY_SIZE(gdp_format_to_str); i++) {
  if (gdp_format_to_str[i].format == (val & 0x1F)) {
   seq_puts(s, gdp_format_to_str[i].name);
   break;
  }
 }
 if (i == ARRAY_SIZE(gdp_format_to_str))
  seq_puts(s, "<UNKNOWN>");

 seq_printf(s, "\tWaitNextVsync:%d", val & WAIT_NEXT_VSYNC ? 1 : 0);
}
