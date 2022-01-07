
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct meson_drm {scalar_t__ io_base; } ;


 int VPU_RDARB_MODE_L1C1 ;
 int VPU_RDARB_MODE_L1C2 ;
 int VPU_RDARB_MODE_L2C1 ;
 int VPU_RDARB_SLAVE_TO_MASTER_PORT (int,int) ;
 int VPU_WRARB_MODE_L2C1 ;
 scalar_t__ _REG (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void meson_vpu_init(struct meson_drm *priv)
{
 u32 value;





 value = VPU_RDARB_SLAVE_TO_MASTER_PORT(0, 1) |
  VPU_RDARB_SLAVE_TO_MASTER_PORT(5, 1);
 writel_relaxed(value, priv->io_base + _REG(VPU_RDARB_MODE_L1C1));


 value = VPU_RDARB_SLAVE_TO_MASTER_PORT(0, 1);
 writel_relaxed(value, priv->io_base + _REG(VPU_RDARB_MODE_L1C2));


 value = VPU_RDARB_SLAVE_TO_MASTER_PORT(4, 1) |
  VPU_RDARB_SLAVE_TO_MASTER_PORT(7, 1);
 writel_relaxed(value, priv->io_base + _REG(VPU_RDARB_MODE_L2C1));


 value = VPU_RDARB_SLAVE_TO_MASTER_PORT(1, 1);
 writel_relaxed(value, priv->io_base + _REG(VPU_WRARB_MODE_L2C1));
}
