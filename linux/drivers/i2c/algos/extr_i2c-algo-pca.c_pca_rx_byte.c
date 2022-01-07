
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pca_data {int dummy; } ;
typedef int __u8 ;


 int DEB2 (char*,int ,char*) ;
 int I2C_PCA_DAT ;
 int pca_inw (struct i2c_algo_pca_data*,int ) ;

__attribute__((used)) static void pca_rx_byte(struct i2c_algo_pca_data *adap,
   __u8 *b, int ack)
{
 *b = pca_inw(adap, I2C_PCA_DAT);
 DEB2("=== READ %#04x %s\n", *b, ack ? "ACK" : "NACK");
}
