
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int u16 ;
typedef size_t ssize_t ;
typedef int loff_t ;
typedef scalar_t__ acpi_status ;


 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int ACPI_WAIT_FOREVER ;
 scalar_t__ AE_NOT_CONFIGURED ;
 size_t EINVAL ;
 int WARN (int,char*) ;
 scalar_t__ acpi_acquire_global_lock (int ,unsigned int*) ;
 int acpi_release_global_lock (unsigned int) ;
 int fw_cfg_dev_lock ;
 int fw_cfg_reg_data ;
 int fw_cfg_sel_endianness (int ) ;
 int ioread8 (int ) ;
 int ioread8_rep (int ,void*,size_t) ;
 int memset (void*,int ,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t fw_cfg_read_blob(u16 key,
    void *buf, loff_t pos, size_t count)
{
 u32 glk = -1U;
 acpi_status status;




 status = acpi_acquire_global_lock(ACPI_WAIT_FOREVER, &glk);
 if (ACPI_FAILURE(status) && status != AE_NOT_CONFIGURED) {

  WARN(1, "fw_cfg_read_blob: Failed to lock ACPI!\n");
  memset(buf, 0, count);
  return -EINVAL;
 }

 mutex_lock(&fw_cfg_dev_lock);
 fw_cfg_sel_endianness(key);
 while (pos-- > 0)
  ioread8(fw_cfg_reg_data);
 ioread8_rep(fw_cfg_reg_data, buf, count);
 mutex_unlock(&fw_cfg_dev_lock);

 acpi_release_global_lock(glk);
 return count;
}
