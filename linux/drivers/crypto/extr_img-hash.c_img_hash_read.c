
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct img_hash_dev {scalar_t__ io_base; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline u32 img_hash_read(struct img_hash_dev *hdev, u32 offset)
{
 return readl_relaxed(hdev->io_base + offset);
}
