
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdn_dp_device {scalar_t__ regs; } ;


 scalar_t__ MAILBOX0_RD_DATA ;
 scalar_t__ MAILBOX_EMPTY_ADDR ;
 int MAILBOX_RETRY_US ;
 int MAILBOX_TIMEOUT_US ;
 int readl (scalar_t__) ;
 int readx_poll_timeout (int (*) (scalar_t__),scalar_t__,int,int,int ,int ) ;

__attribute__((used)) static int cdn_dp_mailbox_read(struct cdn_dp_device *dp)
{
 int val, ret;

 ret = readx_poll_timeout(readl, dp->regs + MAILBOX_EMPTY_ADDR,
     val, !val, MAILBOX_RETRY_US,
     MAILBOX_TIMEOUT_US);
 if (ret < 0)
  return ret;

 return readl(dp->regs + MAILBOX0_RD_DATA) & 0xff;
}
