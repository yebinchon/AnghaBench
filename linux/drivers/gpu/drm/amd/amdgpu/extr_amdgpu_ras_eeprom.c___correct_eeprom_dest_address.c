
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int DRM_INFO (char*) ;
 int EEPROM_ADDR_MSB_MASK ;
 int EEPROM_RECORD_START ;
 int EEPROM_SIZE_BYTES ;
 int EEPROM_TABLE_RECORD_SIZE ;

__attribute__((used)) static uint32_t __correct_eeprom_dest_address(uint32_t curr_address)
{
 uint32_t next_address = curr_address + EEPROM_TABLE_RECORD_SIZE;


 if (next_address > EEPROM_SIZE_BYTES) {
  DRM_INFO("Reached end of EEPROM memory, jumping to 0 "
    "and overriding old record");
  return EEPROM_RECORD_START;
 }
 if ((curr_address & EEPROM_ADDR_MSB_MASK) != (next_address & EEPROM_ADDR_MSB_MASK)) {
  DRM_DEBUG_DRIVER("Reached end of EEPROM memory page, jumping to next: %lx",
    (next_address & EEPROM_ADDR_MSB_MASK));

  return (next_address & EEPROM_ADDR_MSB_MASK);
 }

 return curr_address;
}
