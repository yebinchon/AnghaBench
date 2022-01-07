
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_buf {int lock; scalar_t__ name; } ;
struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; struct dma_buf* d_fsdata; } ;


 int DMA_BUF_NAME_LEN ;
 char* dynamic_dname (struct dentry*,char*,int,char*,int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t strlcpy (char*,scalar_t__,int) ;

__attribute__((used)) static char *dmabuffs_dname(struct dentry *dentry, char *buffer, int buflen)
{
 struct dma_buf *dmabuf;
 char name[DMA_BUF_NAME_LEN];
 size_t ret = 0;

 dmabuf = dentry->d_fsdata;
 mutex_lock(&dmabuf->lock);
 if (dmabuf->name)
  ret = strlcpy(name, dmabuf->name, DMA_BUF_NAME_LEN);
 mutex_unlock(&dmabuf->lock);

 return dynamic_dname(dentry, buffer, buflen, "/%s:%s",
        dentry->d_name.name, ret > 0 ? name : "");
}
