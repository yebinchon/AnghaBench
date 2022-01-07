
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qup_i2c_dev {int dummy; } ;


 int QUP_STATE_MASK ;
 int qup_i2c_poll_state_mask (struct qup_i2c_dev*,int ,int ) ;

__attribute__((used)) static int qup_i2c_poll_state(struct qup_i2c_dev *qup, u32 req_state)
{
 return qup_i2c_poll_state_mask(qup, req_state, QUP_STATE_MASK);
}
