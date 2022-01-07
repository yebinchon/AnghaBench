
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpi2c_imx_struct {int complete; } ;


 int ETIMEDOUT ;
 int HZ ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int lpi2c_imx_msg_complete(struct lpi2c_imx_struct *lpi2c_imx)
{
 unsigned long timeout;

 timeout = wait_for_completion_timeout(&lpi2c_imx->complete, HZ);

 return timeout ? 0 : -ETIMEDOUT;
}
