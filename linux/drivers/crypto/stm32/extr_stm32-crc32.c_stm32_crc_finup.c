
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int stm32_crc_final (struct shash_desc*,int *) ;
 scalar_t__ stm32_crc_update (struct shash_desc*,int const*,unsigned int) ;

__attribute__((used)) static int stm32_crc_finup(struct shash_desc *desc, const u8 *data,
      unsigned int length, u8 *out)
{
 return stm32_crc_update(desc, data, length) ?:
        stm32_crc_final(desc, out);
}
