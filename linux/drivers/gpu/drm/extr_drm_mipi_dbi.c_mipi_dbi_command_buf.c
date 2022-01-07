
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dbi {int (* command ) (struct mipi_dbi*,int *,int *,size_t) ;int cmdlock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmemdup (int *,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct mipi_dbi*,int *,int *,size_t) ;

int mipi_dbi_command_buf(struct mipi_dbi *dbi, u8 cmd, u8 *data, size_t len)
{
 u8 *cmdbuf;
 int ret;


 cmdbuf = kmemdup(&cmd, 1, GFP_KERNEL);
 if (!cmdbuf)
  return -ENOMEM;

 mutex_lock(&dbi->cmdlock);
 ret = dbi->command(dbi, cmdbuf, data, len);
 mutex_unlock(&dbi->cmdlock);

 kfree(cmdbuf);

 return ret;
}
