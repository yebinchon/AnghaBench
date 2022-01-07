
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp_device {int dummy; } ;


 struct sp_device* sp_dev_master ;

__attribute__((used)) static struct sp_device *psp_get_master(void)
{
 return sp_dev_master;
}
