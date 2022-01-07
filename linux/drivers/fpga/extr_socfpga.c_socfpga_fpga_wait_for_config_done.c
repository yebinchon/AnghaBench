
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socfpga_fpga_priv {int status_complete; } ;


 int ETIMEDOUT ;
 int SOCFPGA_FPGMGR_MON_CONF_DONE ;
 int init_completion (int *) ;
 int msecs_to_jiffies (int) ;
 int socfpga_fpga_disable_irqs (struct socfpga_fpga_priv*) ;
 int socfpga_fpga_enable_irqs (struct socfpga_fpga_priv*,int ) ;
 int wait_for_completion_interruptible_timeout (int *,int ) ;

__attribute__((used)) static int socfpga_fpga_wait_for_config_done(struct socfpga_fpga_priv *priv)
{
 int timeout, ret = 0;

 socfpga_fpga_disable_irqs(priv);
 init_completion(&priv->status_complete);
 socfpga_fpga_enable_irqs(priv, SOCFPGA_FPGMGR_MON_CONF_DONE);

 timeout = wait_for_completion_interruptible_timeout(
      &priv->status_complete,
      msecs_to_jiffies(10));
 if (timeout == 0)
  ret = -ETIMEDOUT;

 socfpga_fpga_disable_irqs(priv);
 return ret;
}
