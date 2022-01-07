
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 scalar_t__ amdgpu_discovery_calculate_checksum (int *,int ) ;

__attribute__((used)) static inline bool amdgpu_discovery_verify_checksum(uint8_t *data, uint32_t size,
          uint16_t expected)
{
 return !!(amdgpu_discovery_calculate_checksum(data, size) == expected);
}
