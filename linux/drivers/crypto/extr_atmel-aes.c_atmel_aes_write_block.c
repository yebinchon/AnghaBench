
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_aes_dev {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int SIZE_IN_WORDS (int ) ;
 int atmel_aes_write_n (struct atmel_aes_dev*,int ,int const*,int ) ;

__attribute__((used)) static inline void atmel_aes_write_block(struct atmel_aes_dev *dd, u32 offset,
      const u32 *value)
{
 atmel_aes_write_n(dd, offset, value, SIZE_IN_WORDS(AES_BLOCK_SIZE));
}
