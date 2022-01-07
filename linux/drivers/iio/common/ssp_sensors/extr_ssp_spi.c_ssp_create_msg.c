
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ssp_msg_header {int data; void* options; void* length; int cmd; } ;
struct ssp_msg {int length; int options; void* buffer; } ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int SSP_HEADER_SIZE ;
 int SSP_HEADER_SIZE_ALIGNED ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int kfree (struct ssp_msg*) ;
 void* kzalloc (int,int) ;
 int memcpy (void*,struct ssp_msg_header*,int ) ;

__attribute__((used)) static struct ssp_msg *ssp_create_msg(u8 cmd, u16 len, u16 opt, u32 data)
{
 struct ssp_msg_header h;
 struct ssp_msg *msg;

 msg = kzalloc(sizeof(*msg), GFP_KERNEL);
 if (!msg)
  return ((void*)0);

 h.cmd = cmd;
 h.length = cpu_to_le16(len);
 h.options = cpu_to_le16(opt);
 h.data = cpu_to_le32(data);

 msg->buffer = kzalloc(SSP_HEADER_SIZE_ALIGNED + len,
         GFP_KERNEL | GFP_DMA);
 if (!msg->buffer) {
  kfree(msg);
  return ((void*)0);
 }

 msg->length = len;
 msg->options = opt;

 memcpy(msg->buffer, &h, SSP_HEADER_SIZE);

 return msg;
}
