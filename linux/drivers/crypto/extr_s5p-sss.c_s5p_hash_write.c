
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct s5p_aes_dev {scalar_t__ io_hash_base; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void s5p_hash_write(struct s5p_aes_dev *dd,
      u32 offset, u32 value)
{
 __raw_writel(value, dd->io_hash_base + offset);
}
