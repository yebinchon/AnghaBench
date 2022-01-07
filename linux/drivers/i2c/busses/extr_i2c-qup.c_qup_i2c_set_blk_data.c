
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; int data_len; scalar_t__ pos; } ;
struct qup_i2c_dev {int blk_xfer_limit; TYPE_1__ blk; } ;
struct i2c_msg {int len; } ;


 int DIV_ROUND_UP (int ,int ) ;

__attribute__((used)) static void qup_i2c_set_blk_data(struct qup_i2c_dev *qup,
     struct i2c_msg *msg)
{
 qup->blk.pos = 0;
 qup->blk.data_len = msg->len;
 qup->blk.count = DIV_ROUND_UP(msg->len, qup->blk_xfer_limit);
}
