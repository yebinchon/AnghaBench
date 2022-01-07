
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qup_i2c_dev {scalar_t__ base; } ;


 int EIO ;
 scalar_t__ QUP_STATE ;
 scalar_t__ qup_i2c_poll_state (struct qup_i2c_dev*,int ) ;
 scalar_t__ qup_i2c_poll_state_valid (struct qup_i2c_dev*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int qup_i2c_change_state(struct qup_i2c_dev *qup, u32 state)
{
 if (qup_i2c_poll_state_valid(qup) != 0)
  return -EIO;

 writel(state, qup->base + QUP_STATE);

 if (qup_i2c_poll_state(qup, state) != 0)
  return -EIO;
 return 0;
}
