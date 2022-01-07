
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;






 int GAM_DEPTH_MASK_ID ;


 int GAM_MIXER_NB_DEPTH_LEVEL ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void mixer_dbg_crb(struct seq_file *s, int val)
{
 int i;

 seq_puts(s, "\tDepth: ");
 for (i = 0; i < GAM_MIXER_NB_DEPTH_LEVEL; i++) {
  switch (val & GAM_DEPTH_MASK_ID) {
  case 129:
   seq_puts(s, "VID0");
   break;
  case 128:
   seq_puts(s, "VID1");
   break;
  case 133:
   seq_puts(s, "GDP0");
   break;
  case 132:
   seq_puts(s, "GDP1");
   break;
  case 131:
   seq_puts(s, "GDP2");
   break;
  case 130:
   seq_puts(s, "GDP3");
   break;
  default:
   seq_puts(s, "---");
  }

  if (i < GAM_MIXER_NB_DEPTH_LEVEL - 1)
   seq_puts(s, " < ");
  val = val >> 3;
 }
}
