
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp {int dev; } ;
struct seq_file {size_t size; struct file* private; } ;
struct inode {struct tegra_bpmp* i_private; } ;
struct file {int dummy; } ;
typedef int dma_addr_t ;
typedef int buf ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 size_t SZ_256 ;
 void* dma_alloc_coherent (int ,size_t const,int *,int) ;
 int dma_free_coherent (int ,size_t const,void*,int ) ;
 struct inode* file_inode (struct file*) ;
 char* get_filename (struct tegra_bpmp*,struct file*,char*,int) ;
 int mrq_debugfs_read (struct tegra_bpmp*,int ,size_t,int ,size_t const,size_t*) ;
 int seq_write (struct seq_file*,void*,size_t) ;
 size_t strlen (char const*) ;
 int strncpy (void*,char const*,size_t const) ;

__attribute__((used)) static int debugfs_show(struct seq_file *m, void *p)
{
 struct file *file = m->private;
 struct inode *inode = file_inode(file);
 struct tegra_bpmp *bpmp = inode->i_private;
 const size_t datasize = m->size;
 const size_t namesize = SZ_256;
 void *datavirt, *namevirt;
 dma_addr_t dataphys, namephys;
 char buf[256];
 const char *filename;
 size_t len, nbytes;
 int ret;

 filename = get_filename(bpmp, file, buf, sizeof(buf));
 if (!filename)
  return -ENOENT;

 namevirt = dma_alloc_coherent(bpmp->dev, namesize, &namephys,
          GFP_KERNEL | GFP_DMA32);
 if (!namevirt)
  return -ENOMEM;

 datavirt = dma_alloc_coherent(bpmp->dev, datasize, &dataphys,
          GFP_KERNEL | GFP_DMA32);
 if (!datavirt) {
  ret = -ENOMEM;
  goto free_namebuf;
 }

 len = strlen(filename);
 strncpy(namevirt, filename, namesize);

 ret = mrq_debugfs_read(bpmp, namephys, len, dataphys, datasize,
          &nbytes);

 if (!ret)
  seq_write(m, datavirt, nbytes);

 dma_free_coherent(bpmp->dev, datasize, datavirt, dataphys);
free_namebuf:
 dma_free_coherent(bpmp->dev, namesize, namevirt, namephys);

 return ret;
}
