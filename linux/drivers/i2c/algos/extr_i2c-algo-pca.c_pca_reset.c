
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_algo_pca_data {scalar_t__ chip; int data; int (* reset_chip ) (int ) ;} ;


 scalar_t__ I2C_PCA_CHIP_9665 ;
 int I2C_PCA_IND ;
 int I2C_PCA_INDPTR ;
 int I2C_PCA_IPRESET ;
 int pca_outw (struct i2c_algo_pca_data*,int ,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void pca_reset(struct i2c_algo_pca_data *adap)
{
 if (adap->chip == I2C_PCA_CHIP_9665) {



  pca_outw(adap, I2C_PCA_INDPTR, I2C_PCA_IPRESET);
  pca_outw(adap, I2C_PCA_IND, 0xA5);
  pca_outw(adap, I2C_PCA_IND, 0x5A);
 } else {
  adap->reset_chip(adap->data);
 }
}
