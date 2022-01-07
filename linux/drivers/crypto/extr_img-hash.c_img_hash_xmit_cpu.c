
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct img_hash_dev {int cpu_addr; int flags; int dev; } ;


 size_t DIV_ROUND_UP (size_t,int) ;
 int DRIVER_FLAGS_FINAL ;
 int EINPROGRESS ;
 int dev_dbg (int ,char*,size_t) ;
 int writel_relaxed (size_t const,int ) ;

__attribute__((used)) static int img_hash_xmit_cpu(struct img_hash_dev *hdev, const u8 *buf,
        size_t length, int final)
{
 u32 count, len32;
 const u32 *buffer = (const u32 *)buf;

 dev_dbg(hdev->dev, "xmit_cpu:  length: %zu bytes\n", length);

 if (final)
  hdev->flags |= DRIVER_FLAGS_FINAL;

 len32 = DIV_ROUND_UP(length, sizeof(u32));

 for (count = 0; count < len32; count++)
  writel_relaxed(buffer[count], hdev->cpu_addr);

 return -EINPROGRESS;
}
