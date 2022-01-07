
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ti_sci_handle {int dummy; } ;


 int MSG_FLAG_DST_HOST_IRQ_VALID ;
 int MSG_FLAG_DST_ID_VALID ;
 int ti_sci_set_irq (struct ti_sci_handle const*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ti_sci_cmd_set_irq(const struct ti_sci_handle *handle, u16 src_id,
         u16 src_index, u16 dst_id, u16 dst_host_irq)
{
 u32 valid_params = MSG_FLAG_DST_ID_VALID | MSG_FLAG_DST_HOST_IRQ_VALID;

 return ti_sci_set_irq(handle, valid_params, src_id, src_index, dst_id,
         dst_host_irq, 0, 0, 0, 0, 0);
}
