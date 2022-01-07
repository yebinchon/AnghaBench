
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct radeon_i2c_bus_rec {int mask_clk_reg; scalar_t__ mm_i2c; } ;
struct radeon_i2c_chan {struct radeon_i2c_bus_rec rec; TYPE_1__* dev; } ;
struct TYPE_4__ {int mutex; } ;
struct radeon_device {int family; int dc_hw_i2c_mutex; TYPE_2__ pm; scalar_t__ is_atom_bios; } ;
struct i2c_msg {int len; int addr; int flags; int* buf; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_3__ {struct radeon_device* dev_private; } ;


 int ATOM_S6_HW_I2C_BUSY_STATE ;
 int DRM_DEBUG (char*,int) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int EIO ;
 int I2C_M_RD ;
 int R200_DVI_I2C_PIN_SEL (int ) ;
 int R200_SEL_DDC1 ;
 int R200_SEL_DDC2 ;
 int R200_SEL_DDC3 ;
 int RADEON_BIOS_6_SCRATCH ;
 int RADEON_DVI_I2C_CNTL_0 ;
 int RADEON_DVI_I2C_CNTL_1 ;
 int RADEON_DVI_I2C_DATA ;




 int RADEON_I2C_ABORT ;
 int RADEON_I2C_ADDR_COUNT_SHIFT ;
 int RADEON_I2C_CNTL_0 ;
 int RADEON_I2C_CNTL_1 ;
 int RADEON_I2C_DATA ;
 int RADEON_I2C_DATA_COUNT_SHIFT ;
 int RADEON_I2C_DONE ;
 int RADEON_I2C_DRIVE_EN ;
 int RADEON_I2C_EN ;
 int RADEON_I2C_GO ;
 int RADEON_I2C_HALT ;
 int RADEON_I2C_NACK ;
 int RADEON_I2C_PRESCALE_SHIFT ;
 int RADEON_I2C_RECEIVE ;
 int RADEON_I2C_SOFT_RST ;
 int RADEON_I2C_START ;
 int RADEON_I2C_STOP ;
 int RADEON_I2C_TIME_LIMIT_SHIFT ;
 int RREG32 (int) ;
 int WREG32 (int,int) ;
 struct radeon_i2c_chan* i2c_get_adapdata (struct i2c_adapter*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_get_i2c_prescale (struct radeon_device*) ;
 int udelay (int) ;

__attribute__((used)) static int r100_hw_i2c_xfer(struct i2c_adapter *i2c_adap,
       struct i2c_msg *msgs, int num)
{
 struct radeon_i2c_chan *i2c = i2c_get_adapdata(i2c_adap);
 struct radeon_device *rdev = i2c->dev->dev_private;
 struct radeon_i2c_bus_rec *rec = &i2c->rec;
 struct i2c_msg *p;
 int i, j, k, ret = num;
 u32 prescale;
 u32 i2c_cntl_0, i2c_cntl_1, i2c_data;
 u32 tmp, reg;

 mutex_lock(&rdev->dc_hw_i2c_mutex);

 mutex_lock(&rdev->pm.mutex);

 prescale = radeon_get_i2c_prescale(rdev);

 reg = ((prescale << RADEON_I2C_PRESCALE_SHIFT) |
        RADEON_I2C_DRIVE_EN |
        RADEON_I2C_START |
        RADEON_I2C_STOP |
        RADEON_I2C_GO);

 if (rdev->is_atom_bios) {
  tmp = RREG32(RADEON_BIOS_6_SCRATCH);
  WREG32(RADEON_BIOS_6_SCRATCH, tmp | ATOM_S6_HW_I2C_BUSY_STATE);
 }

 if (rec->mm_i2c) {
  i2c_cntl_0 = RADEON_I2C_CNTL_0;
  i2c_cntl_1 = RADEON_I2C_CNTL_1;
  i2c_data = RADEON_I2C_DATA;
 } else {
  i2c_cntl_0 = RADEON_DVI_I2C_CNTL_0;
  i2c_cntl_1 = RADEON_DVI_I2C_CNTL_1;
  i2c_data = RADEON_DVI_I2C_DATA;

  switch (rdev->family) {
  case 149:
  case 138:
  case 143:
  case 137:
  case 142:
  case 141:
   switch (rec->mask_clk_reg) {
   case 130:

    break;
   default:
    DRM_ERROR("gpio not supported with hw i2c\n");
    ret = -EINVAL;
    goto done;
   }
   break;
  case 148:

   switch (rec->mask_clk_reg) {
   case 130:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC1);
    break;
   case 129:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC3);
    break;
   default:
    DRM_ERROR("gpio not supported with hw i2c\n");
    ret = -EINVAL;
    goto done;
   }
   break;
  case 136:
  case 135:

   switch (rec->mask_clk_reg) {
   case 130:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC1);
    break;
   case 128:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC2);
    break;
   case 131:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC3);
    break;
   default:
    DRM_ERROR("gpio not supported with hw i2c\n");
    ret = -EINVAL;
    goto done;
   }
   break;
  case 147:
  case 146:

   switch (rec->mask_clk_reg) {
   case 128:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC1);
    break;
   case 130:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC3);
    break;
   default:
    DRM_ERROR("gpio not supported with hw i2c\n");
    ret = -EINVAL;
    goto done;
   }
   break;
  case 134:
  case 133:
  case 145:
  case 144:
  case 132:
  case 140:
  case 139:

   switch (rec->mask_clk_reg) {
   case 128:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC1);
    break;
   case 130:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC2);
    break;
   case 129:
    reg |= R200_DVI_I2C_PIN_SEL(R200_SEL_DDC3);
    break;
   default:
    DRM_ERROR("gpio not supported with hw i2c\n");
    ret = -EINVAL;
    goto done;
   }
   break;
  default:
   DRM_ERROR("unsupported asic\n");
   ret = -EINVAL;
   goto done;
   break;
  }
 }


 p = &msgs[0];
 if ((num == 1) && (p->len == 0)) {
  WREG32(i2c_cntl_0, (RADEON_I2C_DONE |
        RADEON_I2C_NACK |
        RADEON_I2C_HALT |
        RADEON_I2C_SOFT_RST));
  WREG32(i2c_data, (p->addr << 1) & 0xff);
  WREG32(i2c_data, 0);
  WREG32(i2c_cntl_1, ((1 << RADEON_I2C_DATA_COUNT_SHIFT) |
        (1 << RADEON_I2C_ADDR_COUNT_SHIFT) |
        RADEON_I2C_EN |
        (48 << RADEON_I2C_TIME_LIMIT_SHIFT)));
  WREG32(i2c_cntl_0, reg);
  for (k = 0; k < 32; k++) {
   udelay(10);
   tmp = RREG32(i2c_cntl_0);
   if (tmp & RADEON_I2C_GO)
    continue;
   tmp = RREG32(i2c_cntl_0);
   if (tmp & RADEON_I2C_DONE)
    break;
   else {
    DRM_DEBUG("i2c write error 0x%08x\n", tmp);
    WREG32(i2c_cntl_0, tmp | RADEON_I2C_ABORT);
    ret = -EIO;
    goto done;
   }
  }
  goto done;
 }

 for (i = 0; i < num; i++) {
  p = &msgs[i];
  for (j = 0; j < p->len; j++) {
   if (p->flags & I2C_M_RD) {
    WREG32(i2c_cntl_0, (RADEON_I2C_DONE |
          RADEON_I2C_NACK |
          RADEON_I2C_HALT |
          RADEON_I2C_SOFT_RST));
    WREG32(i2c_data, ((p->addr << 1) & 0xff) | 0x1);
    WREG32(i2c_cntl_1, ((1 << RADEON_I2C_DATA_COUNT_SHIFT) |
          (1 << RADEON_I2C_ADDR_COUNT_SHIFT) |
          RADEON_I2C_EN |
          (48 << RADEON_I2C_TIME_LIMIT_SHIFT)));
    WREG32(i2c_cntl_0, reg | RADEON_I2C_RECEIVE);
    for (k = 0; k < 32; k++) {
     udelay(10);
     tmp = RREG32(i2c_cntl_0);
     if (tmp & RADEON_I2C_GO)
      continue;
     tmp = RREG32(i2c_cntl_0);
     if (tmp & RADEON_I2C_DONE)
      break;
     else {
      DRM_DEBUG("i2c read error 0x%08x\n", tmp);
      WREG32(i2c_cntl_0, tmp | RADEON_I2C_ABORT);
      ret = -EIO;
      goto done;
     }
    }
    p->buf[j] = RREG32(i2c_data) & 0xff;
   } else {
    WREG32(i2c_cntl_0, (RADEON_I2C_DONE |
          RADEON_I2C_NACK |
          RADEON_I2C_HALT |
          RADEON_I2C_SOFT_RST));
    WREG32(i2c_data, (p->addr << 1) & 0xff);
    WREG32(i2c_data, p->buf[j]);
    WREG32(i2c_cntl_1, ((1 << RADEON_I2C_DATA_COUNT_SHIFT) |
          (1 << RADEON_I2C_ADDR_COUNT_SHIFT) |
          RADEON_I2C_EN |
          (48 << RADEON_I2C_TIME_LIMIT_SHIFT)));
    WREG32(i2c_cntl_0, reg);
    for (k = 0; k < 32; k++) {
     udelay(10);
     tmp = RREG32(i2c_cntl_0);
     if (tmp & RADEON_I2C_GO)
      continue;
     tmp = RREG32(i2c_cntl_0);
     if (tmp & RADEON_I2C_DONE)
      break;
     else {
      DRM_DEBUG("i2c write error 0x%08x\n", tmp);
      WREG32(i2c_cntl_0, tmp | RADEON_I2C_ABORT);
      ret = -EIO;
      goto done;
     }
    }
   }
  }
 }

done:
 WREG32(i2c_cntl_0, 0);
 WREG32(i2c_cntl_1, 0);
 WREG32(i2c_cntl_0, (RADEON_I2C_DONE |
       RADEON_I2C_NACK |
       RADEON_I2C_HALT |
       RADEON_I2C_SOFT_RST));

 if (rdev->is_atom_bios) {
  tmp = RREG32(RADEON_BIOS_6_SCRATCH);
  tmp &= ~ATOM_S6_HW_I2C_BUSY_STATE;
  WREG32(RADEON_BIOS_6_SCRATCH, tmp);
 }

 mutex_unlock(&rdev->pm.mutex);
 mutex_unlock(&rdev->dc_hw_i2c_mutex);

 return ret;
}
