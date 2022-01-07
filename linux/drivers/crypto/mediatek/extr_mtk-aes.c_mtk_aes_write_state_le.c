
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le32 ;


 int SIZE_IN_WORDS (int ) ;
 int cpu_to_le32 (int const) ;

__attribute__((used)) static inline void mtk_aes_write_state_le(__le32 *dst, const u32 *src, u32 size)
{
 int i;

 for (i = 0; i < SIZE_IN_WORDS(size); i++)
  dst[i] = cpu_to_le32(src[i]);
}
