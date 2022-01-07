
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct scom_device {int fsi_dev; } ;


 int EBUSY ;
 int EIO ;
 int ENODEV ;
 int ENXIO ;
 int ETIMEDOUT ;
 int SCOM_FSI2PIB_RESET_REG ;

 int SCOM_PIB_BLOCKED ;




 int SCOM_PIB_SUCCESS ;

 int fsi_device_write (int ,int ,int*,int) ;

__attribute__((used)) static int handle_pib_status(struct scom_device *scom, uint8_t status)
{
 uint32_t dummy = -1;

 if (status == SCOM_PIB_SUCCESS)
  return 0;
 if (status == SCOM_PIB_BLOCKED)
  return -EBUSY;


 fsi_device_write(scom->fsi_dev, SCOM_FSI2PIB_RESET_REG, &dummy,
    sizeof(uint32_t));

 switch(status) {
 case 131:
  return -ENODEV;
 case 133:
  return -ENXIO;
 case 128:
  return -ETIMEDOUT;
 case 129:
 case 132:
 case 130:
 default:
  return -EIO;
 }
}
