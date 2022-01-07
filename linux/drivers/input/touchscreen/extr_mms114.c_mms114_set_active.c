
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mms114_data {int dummy; } ;


 int MMS114_ACTIVE ;
 int MMS114_MODE_CONTROL ;
 int MMS114_OPERATION_MODE_MASK ;
 int mms114_read_reg (struct mms114_data*,int ) ;
 int mms114_write_reg (struct mms114_data*,int ,int) ;

__attribute__((used)) static int mms114_set_active(struct mms114_data *data, bool active)
{
 int val;

 val = mms114_read_reg(data, MMS114_MODE_CONTROL);
 if (val < 0)
  return val;

 val &= ~MMS114_OPERATION_MODE_MASK;


 if (active)
  val |= MMS114_ACTIVE;

 return mms114_write_reg(data, MMS114_MODE_CONTROL, val);
}
