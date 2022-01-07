
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_device {scalar_t__ transfer_path; } ;
struct ishtp_cl {int dummy; } ;


 scalar_t__ CL_TX_PATH_DMA ;
 int ishtp_cl_send_msg_dma (struct ishtp_device*,struct ishtp_cl*) ;
 int ishtp_cl_send_msg_ipc (struct ishtp_device*,struct ishtp_cl*) ;

void ishtp_cl_send_msg(struct ishtp_device *dev, struct ishtp_cl *cl)
{
 if (dev->transfer_path == CL_TX_PATH_DMA)
  ishtp_cl_send_msg_dma(dev, cl);
 else
  ishtp_cl_send_msg_ipc(dev, cl);
}
