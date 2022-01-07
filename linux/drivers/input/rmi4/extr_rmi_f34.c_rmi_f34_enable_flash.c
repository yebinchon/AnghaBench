
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f34_data {int dummy; } ;


 int F34_ENABLE_FLASH_PROG ;
 int F34_ENABLE_WAIT_MS ;
 int rmi_f34_command (struct f34_data*,int ,int ,int) ;

__attribute__((used)) static int rmi_f34_enable_flash(struct f34_data *f34)
{
 return rmi_f34_command(f34, F34_ENABLE_FLASH_PROG,
          F34_ENABLE_WAIT_MS, 1);
}
