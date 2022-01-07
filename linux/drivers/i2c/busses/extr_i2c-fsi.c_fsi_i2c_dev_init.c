
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsi_i2c_master {int fsi; scalar_t__ fifo_size; } ;


 scalar_t__ FIELD_GET (int ,int ) ;
 int FIELD_PREP (int ,scalar_t__) ;
 scalar_t__ I2C_DEFAULT_CLK_DIV ;
 int I2C_ESTAT_FIFO_SZ ;
 scalar_t__ I2C_FIFO_HI_LVL ;
 scalar_t__ I2C_FIFO_LO_LVL ;
 int I2C_FSI_ESTAT ;
 int I2C_FSI_INT_MASK ;
 int I2C_FSI_MODE ;
 int I2C_FSI_WATER_MARK ;
 int I2C_MODE_CLKDIV ;
 int I2C_MODE_ENHANCED ;
 int I2C_WATERMARK_HI ;
 int I2C_WATERMARK_LO ;
 int fsi_i2c_read_reg (int ,int ,int *) ;
 int fsi_i2c_write_reg (int ,int ,int *) ;

__attribute__((used)) static int fsi_i2c_dev_init(struct fsi_i2c_master *i2c)
{
 int rc;
 u32 mode = I2C_MODE_ENHANCED, extended_status, watermark;
 u32 interrupt = 0;


 rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_INT_MASK, &interrupt);
 if (rc)
  return rc;

 mode |= FIELD_PREP(I2C_MODE_CLKDIV, I2C_DEFAULT_CLK_DIV);
 rc = fsi_i2c_write_reg(i2c->fsi, I2C_FSI_MODE, &mode);
 if (rc)
  return rc;

 rc = fsi_i2c_read_reg(i2c->fsi, I2C_FSI_ESTAT, &extended_status);
 if (rc)
  return rc;

 i2c->fifo_size = FIELD_GET(I2C_ESTAT_FIFO_SZ, extended_status);
 watermark = FIELD_PREP(I2C_WATERMARK_HI,
          i2c->fifo_size - I2C_FIFO_HI_LVL);
 watermark |= FIELD_PREP(I2C_WATERMARK_LO, I2C_FIFO_LO_LVL);

 return fsi_i2c_write_reg(i2c->fsi, I2C_FSI_WATER_MARK, &watermark);
}
