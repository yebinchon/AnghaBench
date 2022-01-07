
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pca9541 {int select_timeout; int arb_timeout; } ;
struct i2c_mux_core {int dummy; } ;
struct i2c_client {int dummy; } ;


 int PCA9541_CONTROL ;
 int PCA9541_CTL_BUSINIT ;
 int PCA9541_CTL_NTESTON ;
 int PCA9541_ISTAT ;
 int PCA9541_ISTAT_NMYTEST ;
 int SELECT_DELAY_LONG ;
 int SELECT_DELAY_SHORT ;
 scalar_t__ busoff (int) ;
 struct i2c_mux_core* i2c_get_clientdata (struct i2c_client*) ;
 struct pca9541* i2c_mux_priv (struct i2c_mux_core*) ;
 scalar_t__ mybus (int) ;
 int* pca9541_control ;
 int pca9541_reg_read (struct i2c_client*,int ) ;
 int pca9541_reg_write (struct i2c_client*,int ,int) ;
 scalar_t__ time_is_before_eq_jiffies (int ) ;

__attribute__((used)) static int pca9541_arbitrate(struct i2c_client *client)
{
 struct i2c_mux_core *muxc = i2c_get_clientdata(client);
 struct pca9541 *data = i2c_mux_priv(muxc);
 int reg;

 reg = pca9541_reg_read(client, PCA9541_CONTROL);
 if (reg < 0)
  return reg;

 if (busoff(reg)) {
  int istat;




  istat = pca9541_reg_read(client, PCA9541_ISTAT);
  if (!(istat & PCA9541_ISTAT_NMYTEST)
      || time_is_before_eq_jiffies(data->arb_timeout)) {




   pca9541_reg_write(client,
       PCA9541_CONTROL,
       pca9541_control[reg & 0x0f]
       | PCA9541_CTL_NTESTON);
   data->select_timeout = SELECT_DELAY_SHORT;
  } else {




   data->select_timeout = SELECT_DELAY_LONG * 2;
  }
 } else if (mybus(reg)) {




  if (reg & (PCA9541_CTL_NTESTON | PCA9541_CTL_BUSINIT))
   pca9541_reg_write(client,
       PCA9541_CONTROL,
       reg & ~(PCA9541_CTL_NTESTON
        | PCA9541_CTL_BUSINIT));
  return 1;
 } else {





  data->select_timeout = SELECT_DELAY_LONG;
  if (time_is_before_eq_jiffies(data->arb_timeout)) {

   pca9541_reg_write(client,
       PCA9541_CONTROL,
       pca9541_control[reg & 0x0f]
       | PCA9541_CTL_BUSINIT
       | PCA9541_CTL_NTESTON);
  } else {

   if (!(reg & PCA9541_CTL_NTESTON))
    pca9541_reg_write(client,
        PCA9541_CONTROL,
        reg | PCA9541_CTL_NTESTON);
  }
 }
 return 0;
}
