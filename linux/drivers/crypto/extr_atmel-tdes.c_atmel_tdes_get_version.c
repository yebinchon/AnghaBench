
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {int dummy; } ;


 int TDES_HW_VERSION ;
 int atmel_tdes_read (struct atmel_tdes_dev*,int ) ;

__attribute__((used)) static inline unsigned int atmel_tdes_get_version(struct atmel_tdes_dev *dd)
{
 return atmel_tdes_read(dd, TDES_HW_VERSION) & 0x00000fff;
}
