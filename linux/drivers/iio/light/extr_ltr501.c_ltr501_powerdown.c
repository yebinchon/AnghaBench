
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ltr501_data {int als_contr; int ps_contr; TYPE_1__* chip_info; } ;
struct TYPE_2__ {int als_mode_active; } ;


 int LTR501_CONTR_ACTIVE ;
 int ltr501_write_contr (struct ltr501_data*,int,int) ;

__attribute__((used)) static int ltr501_powerdown(struct ltr501_data *data)
{
 return ltr501_write_contr(data, data->als_contr &
      ~data->chip_info->als_mode_active,
      data->ps_contr & ~LTR501_CONTR_ACTIVE);
}
