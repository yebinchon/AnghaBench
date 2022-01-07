
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int fn; } ;
struct host1x {int dummy; } ;


 int show_syncpts (struct host1x*,struct output*) ;
 int write_to_printk ;

void host1x_debug_dump_syncpts(struct host1x *host1x)
{
 struct output o = {
  .fn = write_to_printk
 };

 show_syncpts(host1x, &o);
}
