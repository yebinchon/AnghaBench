
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int fn; } ;
struct host1x {int dummy; } ;


 int show_all (struct host1x*,struct output*,int) ;
 int write_to_printk ;

void host1x_debug_dump(struct host1x *host1x)
{
 struct output o = {
  .fn = write_to_printk
 };

 show_all(host1x, &o, 1);
}
