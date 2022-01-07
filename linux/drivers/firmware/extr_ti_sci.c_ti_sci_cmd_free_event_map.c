
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ti_sci_handle {int dummy; } ;


 int MSG_FLAG_GLB_EVNT_VALID ;
 int MSG_FLAG_IA_ID_VALID ;
 int MSG_FLAG_VINT_STS_BIT_VALID ;
 int MSG_FLAG_VINT_VALID ;
 int ti_sci_free_irq (struct ti_sci_handle const*,int,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int ti_sci_cmd_free_event_map(const struct ti_sci_handle *handle,
         u16 src_id, u16 src_index, u16 ia_id,
         u16 vint, u16 global_event,
         u8 vint_status_bit)
{
 u32 valid_params = MSG_FLAG_IA_ID_VALID |
      MSG_FLAG_VINT_VALID | MSG_FLAG_GLB_EVNT_VALID |
      MSG_FLAG_VINT_STS_BIT_VALID;

 return ti_sci_free_irq(handle, valid_params, src_id, src_index, 0, 0,
          ia_id, vint, global_event, vint_status_bit, 0);
}
