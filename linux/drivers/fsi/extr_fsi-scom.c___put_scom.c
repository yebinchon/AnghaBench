
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct scom_device {int fsi_dev; } ;
typedef int __be32 ;


 int SCOM_CMD_REG ;
 int SCOM_DATA0_REG ;
 int SCOM_DATA1_REG ;
 int SCOM_STATUS_REG ;
 int SCOM_WRITE_CMD ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int) ;
 int fsi_device_read (int ,int ,int *,int) ;
 int fsi_device_write (int ,int ,int *,int) ;

__attribute__((used)) static int __put_scom(struct scom_device *scom_dev, uint64_t value,
        uint32_t addr, uint32_t *status)
{
 __be32 data, raw_status;
 int rc;

 data = cpu_to_be32((value >> 32) & 0xffffffff);
 rc = fsi_device_write(scom_dev->fsi_dev, SCOM_DATA0_REG, &data,
    sizeof(uint32_t));
 if (rc)
  return rc;

 data = cpu_to_be32(value & 0xffffffff);
 rc = fsi_device_write(scom_dev->fsi_dev, SCOM_DATA1_REG, &data,
    sizeof(uint32_t));
 if (rc)
  return rc;

 data = cpu_to_be32(SCOM_WRITE_CMD | addr);
 rc = fsi_device_write(scom_dev->fsi_dev, SCOM_CMD_REG, &data,
    sizeof(uint32_t));
 if (rc)
  return rc;
 rc = fsi_device_read(scom_dev->fsi_dev, SCOM_STATUS_REG, &raw_status,
        sizeof(uint32_t));
 if (rc)
  return rc;
 *status = be32_to_cpu(raw_status);

 return 0;
}
