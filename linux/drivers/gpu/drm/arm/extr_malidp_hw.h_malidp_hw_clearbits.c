
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct malidp_hw_device {int dummy; } ;


 int malidp_hw_read (struct malidp_hw_device*,int ) ;
 int malidp_hw_write (struct malidp_hw_device*,int ,int ) ;

__attribute__((used)) static inline void malidp_hw_clearbits(struct malidp_hw_device *hwdev,
           u32 mask, u32 reg)
{
 u32 data = malidp_hw_read(hwdev, reg);

 data &= ~mask;
 malidp_hw_write(hwdev, data, reg);
}
