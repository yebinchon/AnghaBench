
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int dummy; } ;


 int ishtp_send_msg (struct ishtp_device*,struct ishtp_msg_hdr*,void*,int *,int *) ;

int ishtp_write_message(struct ishtp_device *dev, struct ishtp_msg_hdr *hdr,
   void *buf)
{
 return ishtp_send_msg(dev, hdr, buf, ((void*)0), ((void*)0));
}
