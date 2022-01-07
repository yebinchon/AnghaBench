
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int qat_hal_parity_64bit (int) ;

__attribute__((used)) static uint64_t qat_hal_set_uword_ecc(uint64_t uword)
{
 uint64_t bit0_mask = 0xff800007fffULL, bit1_mask = 0x1f801ff801fULL,
  bit2_mask = 0xe387e0781e1ULL, bit3_mask = 0x7cb8e388e22ULL,
  bit4_mask = 0xaf5b2c93244ULL, bit5_mask = 0xf56d5525488ULL,
  bit6_mask = 0xdaf69a46910ULL;


 uword &= ~(0x7fULL << 0x2C);
 uword |= qat_hal_parity_64bit(bit0_mask & uword) << 0x2C;
 uword |= qat_hal_parity_64bit(bit1_mask & uword) << 0x2D;
 uword |= qat_hal_parity_64bit(bit2_mask & uword) << 0x2E;
 uword |= qat_hal_parity_64bit(bit3_mask & uword) << 0x2F;
 uword |= qat_hal_parity_64bit(bit4_mask & uword) << 0x30;
 uword |= qat_hal_parity_64bit(bit5_mask & uword) << 0x31;
 uword |= qat_hal_parity_64bit(bit6_mask & uword) << 0x32;
 return uword;
}
