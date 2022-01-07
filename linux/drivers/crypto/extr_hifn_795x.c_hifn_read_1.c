
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hifn_device {scalar_t__* bar; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static inline u32 hifn_read_1(struct hifn_device *dev, u32 reg)
{
 return readl(dev->bar[1] + reg);
}
