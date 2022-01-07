
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pca_data {int dummy; } ;


 int DEB2 (char*) ;
 int I2C_PCA_CON_SI ;
 int I2C_PCA_CON_STA ;
 int I2C_PCA_CON_STO ;
 int pca_get_con (struct i2c_algo_pca_data*) ;
 int pca_set_con (struct i2c_algo_pca_data*,int) ;

__attribute__((used)) static void pca_stop(struct i2c_algo_pca_data *adap)
{
 int sta = pca_get_con(adap);
 DEB2("=== STOP\n");
 sta |= I2C_PCA_CON_STO;
 sta &= ~(I2C_PCA_CON_STA|I2C_PCA_CON_SI);
 pca_set_con(adap, sta);
}
