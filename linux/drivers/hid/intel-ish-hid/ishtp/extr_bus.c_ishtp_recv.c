
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ishtp_msg_hdr {scalar_t__ length; int host_addr; int fw_addr; } ;
struct ishtp_device {scalar_t__ mtu; int devc; scalar_t__ ishtp_msg_hdr; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sync_fw_clock ) (struct ishtp_device*) ;scalar_t__ (* ishtp_read_hdr ) (struct ishtp_device*) ;} ;


 int dev_err (int ,char*,unsigned int,scalar_t__) ;
 int recv_fixed_cl_msg (struct ishtp_device*,struct ishtp_msg_hdr*) ;
 int recv_hbm (struct ishtp_device*,struct ishtp_msg_hdr*) ;
 int recv_ishtp_cl_msg (struct ishtp_device*,struct ishtp_msg_hdr*) ;
 scalar_t__ stub1 (struct ishtp_device*) ;
 int stub2 (struct ishtp_device*) ;

void ishtp_recv(struct ishtp_device *dev)
{
 uint32_t msg_hdr;
 struct ishtp_msg_hdr *ishtp_hdr;


 msg_hdr = dev->ops->ishtp_read_hdr(dev);
 if (!msg_hdr)
  return;

 dev->ops->sync_fw_clock(dev);

 ishtp_hdr = (struct ishtp_msg_hdr *)&msg_hdr;
 dev->ishtp_msg_hdr = msg_hdr;


 if (ishtp_hdr->length > dev->mtu) {
  dev_err(dev->devc,
   "ISHTP hdr - bad length: %u; dropped [%08X]\n",
   (unsigned int)ishtp_hdr->length, msg_hdr);
  return;
 }


 if (!ishtp_hdr->host_addr && !ishtp_hdr->fw_addr)
  recv_hbm(dev, ishtp_hdr);

 else if (!ishtp_hdr->host_addr)
  recv_fixed_cl_msg(dev, ishtp_hdr);
 else

  recv_ishtp_cl_msg(dev, ishtp_hdr);
}
