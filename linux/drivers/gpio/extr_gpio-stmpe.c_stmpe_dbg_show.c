
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct gpio_chip {unsigned int base; unsigned int ngpio; } ;


 int seq_putc (struct seq_file*,char) ;
 int stmpe_dbg_show_one (struct seq_file*,struct gpio_chip*,unsigned int,unsigned int) ;

__attribute__((used)) static void stmpe_dbg_show(struct seq_file *s, struct gpio_chip *gc)
{
 unsigned i;
 unsigned gpio = gc->base;

 for (i = 0; i < gc->ngpio; i++, gpio++) {
  stmpe_dbg_show_one(s, gc, i, gpio);
  seq_putc(s, '\n');
 }
}
