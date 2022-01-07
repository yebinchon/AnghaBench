
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qup_i2c_dev {scalar_t__ base; } ;


 int ETIMEDOUT ;
 scalar_t__ QUP_STATE ;
 int QUP_STATE_VALID ;
 int readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int qup_i2c_poll_state_mask(struct qup_i2c_dev *qup,
       u32 req_state, u32 req_mask)
{
 int retries = 1;
 u32 state;





 do {
  state = readl(qup->base + QUP_STATE);

  if (state & QUP_STATE_VALID &&
      (state & req_mask) == req_state)
   return 0;

  udelay(1);
 } while (retries--);

 return -ETIMEDOUT;
}
