
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coreboot_device {int dummy; } ;


 int memconsole_exit () ;

__attribute__((used)) static int memconsole_remove(struct coreboot_device *dev)
{
 memconsole_exit();

 return 0;
}
