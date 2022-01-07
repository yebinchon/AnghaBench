
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mipi_dsi_device {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int *) ;
 int * kmalloc (size_t,int ) ;
 int memcpy (int *,void const*,size_t) ;
 int mipi_dsi_dcs_write_buffer (struct mipi_dsi_device*,int *,size_t) ;

ssize_t mipi_dsi_dcs_write(struct mipi_dsi_device *dsi, u8 cmd,
      const void *data, size_t len)
{
 ssize_t err;
 size_t size;
 u8 *tx;

 if (len > 0) {
  size = 1 + len;

  tx = kmalloc(size, GFP_KERNEL);
  if (!tx)
   return -ENOMEM;


  tx[0] = cmd;
  memcpy(&tx[1], data, len);
 } else {
  tx = &cmd;
  size = 1;
 }

 err = mipi_dsi_dcs_write_buffer(dsi, tx, size);

 if (len > 0)
  kfree(tx);

 return err;
}
