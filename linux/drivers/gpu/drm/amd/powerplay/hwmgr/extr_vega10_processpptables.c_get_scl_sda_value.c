
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int Vega10_I2C_DDC1CLK ;
 int Vega10_I2C_DDC1DATA ;
 int Vega10_I2C_DDC2CLK ;
 int Vega10_I2C_DDC2DATA ;
 int Vega10_I2C_DDC3CLK ;
 int Vega10_I2C_DDC3DATA ;
 int Vega10_I2C_DDC4CLK ;
 int Vega10_I2C_DDC4DATA ;
 int Vega10_I2C_DDC5CLK ;
 int Vega10_I2C_DDC5DATA ;
 int Vega10_I2C_DDC6CLK ;
 int Vega10_I2C_DDC6DATA ;
 int Vega10_I2C_DDCVGACLK ;
 int Vega10_I2C_DDCVGADATA ;
 int Vega10_I2C_SCL ;
 int Vega10_I2C_SDA ;

__attribute__((used)) static void get_scl_sda_value(uint8_t line, uint8_t *scl, uint8_t* sda)
{
 switch(line){
 case 135:
  *scl = Vega10_I2C_DDC1CLK;
  *sda = Vega10_I2C_DDC1DATA;
  break;
 case 134:
  *scl = Vega10_I2C_DDC2CLK;
  *sda = Vega10_I2C_DDC2DATA;
  break;
 case 133:
  *scl = Vega10_I2C_DDC3CLK;
  *sda = Vega10_I2C_DDC3DATA;
  break;
 case 132:
  *scl = Vega10_I2C_DDC4CLK;
  *sda = Vega10_I2C_DDC4DATA;
  break;
 case 131:
  *scl = Vega10_I2C_DDC5CLK;
  *sda = Vega10_I2C_DDC5DATA;
  break;
 case 130:
  *scl = Vega10_I2C_DDC6CLK;
  *sda = Vega10_I2C_DDC6DATA;
  break;
 case 128:
  *scl = Vega10_I2C_SCL;
  *sda = Vega10_I2C_SDA;
  break;
 case 129:
  *scl = Vega10_I2C_DDCVGACLK;
  *sda = Vega10_I2C_DDCVGADATA;
  break;
 default:
  *scl = 0;
  *sda = 0;
  break;
 }
}
