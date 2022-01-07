
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ADF_DH895XCC_ACCELENGINES_MASK ;

__attribute__((used)) static uint32_t get_ae_mask(uint32_t fuse)
{
 return (~fuse) & ADF_DH895XCC_ACCELENGINES_MASK;
}
