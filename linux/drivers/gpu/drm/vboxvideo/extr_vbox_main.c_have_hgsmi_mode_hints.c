
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vbox_private {int guest_pool; } ;


 int VBOX_VBVA_CONF32_GUEST_CURSOR_REPORTING ;
 int VBOX_VBVA_CONF32_MODE_HINT_REPORTING ;
 scalar_t__ VINF_SUCCESS ;
 int hgsmi_query_conf (int ,int ,scalar_t__*) ;

__attribute__((used)) static bool have_hgsmi_mode_hints(struct vbox_private *vbox)
{
 u32 have_hints, have_cursor;
 int ret;

 ret = hgsmi_query_conf(vbox->guest_pool,
          VBOX_VBVA_CONF32_MODE_HINT_REPORTING,
          &have_hints);
 if (ret)
  return 0;

 ret = hgsmi_query_conf(vbox->guest_pool,
          VBOX_VBVA_CONF32_GUEST_CURSOR_REPORTING,
          &have_cursor);
 if (ret)
  return 0;

 return have_hints == VINF_SUCCESS && have_cursor == VINF_SUCCESS;
}
