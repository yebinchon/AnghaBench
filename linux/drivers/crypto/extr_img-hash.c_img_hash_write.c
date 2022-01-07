
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct img_hash_dev {scalar_t__ io_base; } ;


 int writel_relaxed (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void img_hash_write(struct img_hash_dev *hdev,
      u32 offset, u32 value)
{
 writel_relaxed(value, hdev->io_base + offset);
}
