
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data_len; } ;
struct qup_i2c_dev {int blk_xfer_limit; TYPE_1__ blk; } ;



__attribute__((used)) static int qup_i2c_get_data_len(struct qup_i2c_dev *qup)
{
 int data_len;

 if (qup->blk.data_len > qup->blk_xfer_limit)
  data_len = qup->blk_xfer_limit;
 else
  data_len = qup->blk.data_len;

 return data_len;
}
