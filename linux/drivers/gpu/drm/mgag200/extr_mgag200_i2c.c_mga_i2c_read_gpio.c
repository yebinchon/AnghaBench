
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_device {int dummy; } ;


 int DAC_DATA ;
 int DAC_INDEX ;
 int MGA1064_GEN_IO_DATA ;
 int RREG8 (int ) ;
 int WREG8 (int ,int ) ;

__attribute__((used)) static int mga_i2c_read_gpio(struct mga_device *mdev)
{
 WREG8(DAC_INDEX, MGA1064_GEN_IO_DATA);
 return RREG8(DAC_DATA);
}
