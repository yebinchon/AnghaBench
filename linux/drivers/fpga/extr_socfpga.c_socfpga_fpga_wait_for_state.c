
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socfpga_fpga_priv {int dummy; } ;


 int ETIMEDOUT ;
 int msleep (int) ;
 int socfpga_fpga_state_get (struct socfpga_fpga_priv*) ;

__attribute__((used)) static int socfpga_fpga_wait_for_state(struct socfpga_fpga_priv *priv,
           u32 state)
{
 int timeout = 2;





 do {
  if ((socfpga_fpga_state_get(priv) & state) != 0)
   return 0;
  msleep(20);
 } while (timeout--);

 return -ETIMEDOUT;
}
