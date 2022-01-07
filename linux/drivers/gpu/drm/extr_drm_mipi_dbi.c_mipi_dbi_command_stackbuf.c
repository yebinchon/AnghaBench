
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dbi {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmemdup (int *,size_t,int ) ;
 int mipi_dbi_command_buf (struct mipi_dbi*,int ,int *,size_t) ;

int mipi_dbi_command_stackbuf(struct mipi_dbi *dbi, u8 cmd, u8 *data, size_t len)
{
 u8 *buf;
 int ret;

 buf = kmemdup(data, len, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 ret = mipi_dbi_command_buf(dbi, cmd, buf, len);

 kfree(buf);

 return ret;
}
