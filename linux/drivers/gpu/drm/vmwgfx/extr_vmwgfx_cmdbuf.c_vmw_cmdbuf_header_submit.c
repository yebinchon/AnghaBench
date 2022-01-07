
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vmw_cmdbuf_man {int dev_priv; } ;
struct vmw_cmdbuf_header {int cb_context; TYPE_1__* cb_header; int handle; struct vmw_cmdbuf_man* man; } ;
struct TYPE_2__ {int status; } ;


 int SVGA_CB_CONTEXT_MASK ;
 int SVGA_REG_COMMAND_HIGH ;
 int SVGA_REG_COMMAND_LOW ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;
 int vmw_write (int ,int ,int) ;

__attribute__((used)) static int vmw_cmdbuf_header_submit(struct vmw_cmdbuf_header *header)
{
 struct vmw_cmdbuf_man *man = header->man;
 u32 val;

 val = upper_32_bits(header->handle);
 vmw_write(man->dev_priv, SVGA_REG_COMMAND_HIGH, val);

 val = lower_32_bits(header->handle);
 val |= header->cb_context & SVGA_CB_CONTEXT_MASK;
 vmw_write(man->dev_priv, SVGA_REG_COMMAND_LOW, val);

 return header->cb_header->status;
}
