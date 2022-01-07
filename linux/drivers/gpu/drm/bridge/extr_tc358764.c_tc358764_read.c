
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct tc358764 {int dev; scalar_t__ error; } ;
struct mipi_dsi_device {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int addr ;


 int cpu_to_le16s (int *) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int le32_to_cpus (int *) ;
 scalar_t__ mipi_dsi_generic_read (struct mipi_dsi_device*,int *,int,int *,int) ;
 struct mipi_dsi_device* to_mipi_dsi_device (int ) ;

__attribute__((used)) static void tc358764_read(struct tc358764 *ctx, u16 addr, u32 *val)
{
 struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
 ssize_t ret;

 if (ctx->error)
  return;

 cpu_to_le16s(&addr);
 ret = mipi_dsi_generic_read(dsi, &addr, sizeof(addr), val, sizeof(*val));
 if (ret >= 0)
  le32_to_cpus(val);

 dev_dbg(ctx->dev, "read: %d, addr: %d\n", addr, *val);
}
