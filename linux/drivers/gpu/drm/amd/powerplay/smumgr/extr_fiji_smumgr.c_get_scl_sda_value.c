
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int SMU7_I2C_DDC1CLK ;
 int SMU7_I2C_DDC1DATA ;
 int SMU7_I2C_DDC2CLK ;
 int SMU7_I2C_DDC2DATA ;
 int SMU7_I2C_DDC3CLK ;
 int SMU7_I2C_DDC3DATA ;
 int SMU7_I2C_DDC4CLK ;
 int SMU7_I2C_DDC4DATA ;
 int SMU7_I2C_DDC5CLK ;
 int SMU7_I2C_DDC5DATA ;
 int SMU7_I2C_DDC6CLK ;
 int SMU7_I2C_DDC6DATA ;
 int SMU7_I2C_DDCVGACLK ;
 int SMU7_I2C_DDCVGADATA ;
 int SMU7_I2C_SCL ;
 int SMU7_I2C_SDA ;

__attribute__((used)) static void get_scl_sda_value(uint8_t line, uint8_t *scl, uint8_t *sda)
{
 switch (line) {
 case 135:
  *scl = SMU7_I2C_DDC1CLK;
  *sda = SMU7_I2C_DDC1DATA;
  break;
 case 134:
  *scl = SMU7_I2C_DDC2CLK;
  *sda = SMU7_I2C_DDC2DATA;
  break;
 case 133:
  *scl = SMU7_I2C_DDC3CLK;
  *sda = SMU7_I2C_DDC3DATA;
  break;
 case 132:
  *scl = SMU7_I2C_DDC4CLK;
  *sda = SMU7_I2C_DDC4DATA;
  break;
 case 131:
  *scl = SMU7_I2C_DDC5CLK;
  *sda = SMU7_I2C_DDC5DATA;
  break;
 case 130:
  *scl = SMU7_I2C_DDC6CLK;
  *sda = SMU7_I2C_DDC6DATA;
  break;
 case 128:
  *scl = SMU7_I2C_SCL;
  *sda = SMU7_I2C_SDA;
  break;
 case 129:
  *scl = SMU7_I2C_DDCVGACLK;
  *sda = SMU7_I2C_DDCVGADATA;
  break;
 default:
  *scl = 0;
  *sda = 0;
  break;
 }
}
