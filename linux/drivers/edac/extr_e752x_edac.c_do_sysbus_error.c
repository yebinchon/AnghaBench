
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int KERN_WARNING ;
 int e752x_printk (int ,char*,int ,int ) ;
 int * fatal_message ;
 int * sysbus_message ;

__attribute__((used)) static void do_sysbus_error(int fatal, u32 errors)
{
 int i;

 for (i = 0; i < 10; i++) {
  if (errors & (1 << i))
   e752x_printk(KERN_WARNING, "%sError System Bus %s\n",
    fatal_message[fatal], sysbus_message[i]);
 }
}
