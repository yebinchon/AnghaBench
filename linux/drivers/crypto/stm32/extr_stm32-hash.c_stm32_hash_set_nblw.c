
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct stm32_hash_dev {int dummy; } ;


 int HASH_STR ;
 unsigned int HASH_STR_NBLW_MASK ;
 unsigned int stm32_hash_read (struct stm32_hash_dev*,int ) ;
 int stm32_hash_write (struct stm32_hash_dev*,int ,unsigned int) ;

__attribute__((used)) static void stm32_hash_set_nblw(struct stm32_hash_dev *hdev, int length)
{
 u32 reg;

 reg = stm32_hash_read(hdev, HASH_STR);
 reg &= ~(HASH_STR_NBLW_MASK);
 reg |= (8U * ((length) % 4U));
 stm32_hash_write(hdev, HASH_STR, reg);
}
