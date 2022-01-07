
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mipi_dsi_device {int host; } ;
struct mcde_dsi {scalar_t__ regs; } ;


 scalar_t__ DSI_CMD_MODE_STS_CLR ;
 int DSI_CMD_MODE_STS_CLR_ERR_NO_TE_CLR ;
 int DSI_CMD_MODE_STS_CLR_ERR_TE_MISS_CLR ;
 scalar_t__ DSI_CMD_MODE_STS_CTL ;
 int DSI_CMD_MODE_STS_CTL_ERR_NO_TE_EN ;
 int DSI_CMD_MODE_STS_CTL_ERR_TE_MISS_EN ;
 scalar_t__ DSI_DIRECT_CMD_MAIN_SETTINGS ;
 int DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_1 ;
 int DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT ;
 int DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT ;
 int DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN ;
 int DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_NAT_TE_REQ ;
 int DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT ;
 scalar_t__ DSI_DIRECT_CMD_SEND ;
 scalar_t__ DSI_DIRECT_CMD_STS_CLR ;
 int DSI_DIRECT_CMD_STS_CLR_ACKNOWLEDGE_WITH_ERR_RECEIVED_CLR ;
 int DSI_DIRECT_CMD_STS_CLR_TE_RECEIVED_CLR ;
 scalar_t__ DSI_DIRECT_CMD_STS_CTL ;
 int DSI_DIRECT_CMD_STS_CTL_ACKNOWLEDGE_WITH_ERR_EN ;
 int DSI_DIRECT_CMD_STS_CTL_TE_RECEIVED_EN ;
 struct mcde_dsi* host_to_mcde_dsi (int ) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void mcde_dsi_te_request(struct mipi_dsi_device *mdsi)
{
 struct mcde_dsi *d;
 u32 val;

 d = host_to_mcde_dsi(mdsi->host);


 val = DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_NAT_TE_REQ;
 val |= 0 << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_ID_SHIFT;
 val |= 2 << DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_SIZE_SHIFT;
 val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_LP_EN;
 val |= DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_DCS_SHORT_WRITE_1 <<
  DSI_DIRECT_CMD_MAIN_SETTINGS_CMD_HEAD_SHIFT;
 writel(val, d->regs + DSI_DIRECT_CMD_MAIN_SETTINGS);


 writel(DSI_DIRECT_CMD_STS_CLR_TE_RECEIVED_CLR |
        DSI_DIRECT_CMD_STS_CLR_ACKNOWLEDGE_WITH_ERR_RECEIVED_CLR,
        d->regs + DSI_DIRECT_CMD_STS_CLR);
 val = readl(d->regs + DSI_DIRECT_CMD_STS_CTL);
 val |= DSI_DIRECT_CMD_STS_CTL_TE_RECEIVED_EN;
 val |= DSI_DIRECT_CMD_STS_CTL_ACKNOWLEDGE_WITH_ERR_EN;
 writel(val, d->regs + DSI_DIRECT_CMD_STS_CTL);


 writel(DSI_CMD_MODE_STS_CLR_ERR_NO_TE_CLR |
        DSI_CMD_MODE_STS_CLR_ERR_TE_MISS_CLR,
        d->regs + DSI_CMD_MODE_STS_CLR);
 val = readl(d->regs + DSI_CMD_MODE_STS_CTL);
 val |= DSI_CMD_MODE_STS_CTL_ERR_NO_TE_EN;
 val |= DSI_CMD_MODE_STS_CTL_ERR_TE_MISS_EN;
 writel(val, d->regs + DSI_CMD_MODE_STS_CTL);


 writel(1, d->regs + DSI_DIRECT_CMD_SEND);
}
