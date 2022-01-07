
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
struct ishtp_msg_hdr {int dummy; } ;
struct ishtp_device {int dummy; } ;


 unsigned long IPC_REG_ISH2HOST_MSG ;
 int ish_reg_read (struct ishtp_device*,unsigned long) ;

__attribute__((used)) static int _ishtp_read(struct ishtp_device *dev, unsigned char *buffer,
 unsigned long buffer_length)
{
 uint32_t i;
 uint32_t *r_buf = (uint32_t *)buffer;
 uint32_t msg_offs;

 msg_offs = IPC_REG_ISH2HOST_MSG + sizeof(struct ishtp_msg_hdr);
 for (i = 0; i < buffer_length; i += sizeof(uint32_t))
  *r_buf++ = ish_reg_read(dev, msg_offs + i);

 return 0;
}
