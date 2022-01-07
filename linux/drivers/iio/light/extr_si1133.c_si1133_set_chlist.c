
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct si1133_data {scalar_t__ scan_mask; } ;


 int SI1133_PARAM_REG_CHAN_LIST ;
 int si1133_param_set (struct si1133_data*,int ,scalar_t__) ;

__attribute__((used)) static int si1133_set_chlist(struct si1133_data *data, u8 scan_mask)
{

 if (data->scan_mask == scan_mask)
  return 0;

 data->scan_mask = scan_mask;

 return si1133_param_set(data, SI1133_PARAM_REG_CHAN_LIST, scan_mask);
}
