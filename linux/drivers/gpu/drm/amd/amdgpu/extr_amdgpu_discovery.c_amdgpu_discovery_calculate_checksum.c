
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t amdgpu_discovery_calculate_checksum(uint8_t *data, uint32_t size)
{
 uint16_t checksum = 0;
 int i;

 for (i = 0; i < size; i++)
  checksum += data[i];

 return checksum;
}
