
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_data {int dummy; } ;


 int ssp_clean_pending_list (struct ssp_data*) ;
 int ssp_enable_mcu (struct ssp_data*,int) ;
 int ssp_toggle_mcu_reset_gpio (struct ssp_data*) ;

__attribute__((used)) static void ssp_reset_mcu(struct ssp_data *data)
{
 ssp_enable_mcu(data, 0);
 ssp_clean_pending_list(data);
 ssp_toggle_mcu_reset_gpio(data);
 ssp_enable_mcu(data, 1);
}
