
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cdn_dp_device {scalar_t__ regs; } ;


 scalar_t__ MAILBOX0_WR_DATA ;
 scalar_t__ MAILBOX_FULL_ADDR ;
 int MAILBOX_RETRY_US ;
 int MAILBOX_TIMEOUT_US ;
 int readl ;
 int readx_poll_timeout (int ,scalar_t__,int,int,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int cdp_dp_mailbox_write(struct cdn_dp_device *dp, u8 val)
{
 int ret, full;

 ret = readx_poll_timeout(readl, dp->regs + MAILBOX_FULL_ADDR,
     full, !full, MAILBOX_RETRY_US,
     MAILBOX_TIMEOUT_US);
 if (ret < 0)
  return ret;

 writel(val, dp->regs + MAILBOX0_WR_DATA);

 return 0;
}
