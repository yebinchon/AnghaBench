
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_device {int dummy; } ;


 int DAC_DATA ;
 int DAC_INDEX ;
 int MGA1064_GEN_IO_CTL ;
 int MGA1064_GEN_IO_DATA ;
 int RREG8 (int ) ;
 int WREG8 (int ,int ) ;
 int WREG_DAC (int ,int) ;

__attribute__((used)) static void mga_i2c_set_gpio(struct mga_device *mdev, int mask, int val)
{
 int tmp;

 WREG8(DAC_INDEX, MGA1064_GEN_IO_CTL);
 tmp = (RREG8(DAC_DATA) & mask) | val;
 WREG_DAC(MGA1064_GEN_IO_CTL, tmp);
 WREG_DAC(MGA1064_GEN_IO_DATA, 0);
}
