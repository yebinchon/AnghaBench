
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ishtp_device {int dummy; } ;


 int IPC_CLEAR_HOST_READY (int ) ;
 int IPC_REG_HOST_COMM ;
 int ish_reg_read (struct ishtp_device*,int ) ;
 int ish_reg_write (struct ishtp_device*,int ,int ) ;

__attribute__((used)) static void ish_clr_host_rdy(struct ishtp_device *dev)
{
 uint32_t host_status = ish_reg_read(dev, IPC_REG_HOST_COMM);

 IPC_CLEAR_HOST_READY(host_status);
 ish_reg_write(dev, IPC_REG_HOST_COMM, host_status);
}
