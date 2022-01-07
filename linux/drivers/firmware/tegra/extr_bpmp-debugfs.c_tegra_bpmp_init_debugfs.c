
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp {int dev; } ;
struct dentry {int dummy; } ;
typedef int dma_addr_t ;


 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int MRQ_DEBUGFS ;
 size_t SZ_256K ;
 int create_debugfs_mirror (struct tegra_bpmp*,void*,size_t,struct dentry*) ;
 struct dentry* debugfs_create_dir (char*,int *) ;
 int debugfs_remove (struct dentry*) ;
 void* dma_alloc_coherent (int ,size_t const,int *,int) ;
 int dma_free_coherent (int ,size_t const,void*,int ) ;
 int mrq_debugfs_dumpdir (struct tegra_bpmp*,int ,size_t const,size_t*) ;
 int tegra_bpmp_mrq_is_supported (struct tegra_bpmp*,int ) ;

int tegra_bpmp_init_debugfs(struct tegra_bpmp *bpmp)
{
 dma_addr_t phys;
 void *virt;
 const size_t sz = SZ_256K;
 size_t nbytes;
 int ret;
 struct dentry *root;

 if (!tegra_bpmp_mrq_is_supported(bpmp, MRQ_DEBUGFS))
  return 0;

 root = debugfs_create_dir("bpmp", ((void*)0));
 if (!root)
  return -ENOMEM;

 virt = dma_alloc_coherent(bpmp->dev, sz, &phys,
      GFP_KERNEL | GFP_DMA32);
 if (!virt) {
  ret = -ENOMEM;
  goto out;
 }

 ret = mrq_debugfs_dumpdir(bpmp, phys, sz, &nbytes);
 if (ret < 0)
  goto free;

 ret = create_debugfs_mirror(bpmp, virt, nbytes, root);
free:
 dma_free_coherent(bpmp->dev, sz, virt, phys);
out:
 if (ret < 0)
  debugfs_remove(root);

 return ret;
}
