
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct s5p_aes_dev {scalar_t__ io_hash_base; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 s5p_hash_read(struct s5p_aes_dev *dd, u32 offset)
{
 return __raw_readl(dd->io_hash_base + offset);
}
