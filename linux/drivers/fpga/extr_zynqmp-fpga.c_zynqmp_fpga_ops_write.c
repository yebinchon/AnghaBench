
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zynqmp_fpga_priv {int flags; int dev; } ;
struct zynqmp_eemi_ops {int (* fpga_load ) (int ,size_t,int ) ;} ;
struct fpga_manager {struct zynqmp_fpga_priv* priv; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int ENXIO ;
 int FPGA_MGR_PARTIAL_RECONFIG ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (struct zynqmp_eemi_ops const*) ;
 int XILINX_ZYNQMP_PM_FPGA_PARTIAL ;
 char* dma_alloc_coherent (int ,size_t,int *,int ) ;
 int dma_free_coherent (int ,size_t,char*,int ) ;
 int memcpy (char*,char const*,size_t) ;
 int stub1 (int ,size_t,int ) ;
 int wmb () ;
 struct zynqmp_eemi_ops* zynqmp_pm_get_eemi_ops () ;

__attribute__((used)) static int zynqmp_fpga_ops_write(struct fpga_manager *mgr,
     const char *buf, size_t size)
{
 const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 struct zynqmp_fpga_priv *priv;
 dma_addr_t dma_addr;
 u32 eemi_flags = 0;
 char *kbuf;
 int ret;

 if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_load)
  return -ENXIO;

 priv = mgr->priv;

 kbuf = dma_alloc_coherent(priv->dev, size, &dma_addr, GFP_KERNEL);
 if (!kbuf)
  return -ENOMEM;

 memcpy(kbuf, buf, size);

 wmb();

 if (priv->flags & FPGA_MGR_PARTIAL_RECONFIG)
  eemi_flags |= XILINX_ZYNQMP_PM_FPGA_PARTIAL;

 ret = eemi_ops->fpga_load(dma_addr, size, eemi_flags);

 dma_free_coherent(priv->dev, size, kbuf, dma_addr);

 return ret;
}
