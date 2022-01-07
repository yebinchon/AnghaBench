
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct shash_desc {int dummy; } ;


 int stm32_crc_finup (struct shash_desc*,int const*,unsigned int,int *) ;
 scalar_t__ stm32_crc_init (struct shash_desc*) ;

__attribute__((used)) static int stm32_crc_digest(struct shash_desc *desc, const u8 *data,
       unsigned int length, u8 *out)
{
 return stm32_crc_init(desc) ?: stm32_crc_finup(desc, data, length, out);
}
