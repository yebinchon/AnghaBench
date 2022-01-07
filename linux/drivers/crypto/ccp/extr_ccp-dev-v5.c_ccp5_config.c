
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_device {scalar_t__ io_regs; } ;


 scalar_t__ CMD5_REQID_CONFIG_OFFSET ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static void ccp5_config(struct ccp_device *ccp)
{

 iowrite32(0x0, ccp->io_regs + CMD5_REQID_CONFIG_OFFSET);
}
