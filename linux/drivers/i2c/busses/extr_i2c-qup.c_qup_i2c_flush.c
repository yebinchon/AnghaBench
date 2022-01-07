
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qup_i2c_dev {scalar_t__ base; } ;


 int QUP_I2C_FLUSH ;
 scalar_t__ QUP_STATE ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qup_i2c_flush(struct qup_i2c_dev *qup)
{
 u32 val = readl(qup->base + QUP_STATE);

 val |= QUP_I2C_FLUSH;
 writel(val, qup->base + QUP_STATE);
}
