
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int link_active; } ;
struct TYPE_7__ {scalar_t__ stream_count; } ;
struct dc_link {TYPE_2__ link_status; TYPE_3__ mst_stream_alloc_table; TYPE_4__* link_enc; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;
struct TYPE_8__ {TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* disable_output ) (TYPE_4__*,int) ;} ;


 int SIGNAL_TYPE_DISPLAY_PORT_MST ;
 scalar_t__ dc_is_dp_signal (int) ;
 scalar_t__ dc_is_dp_sst_signal (int) ;
 int dp_disable_link_phy (struct dc_link*,int) ;
 int dp_disable_link_phy_mst (struct dc_link*,int) ;
 int dp_set_fec_enable (struct dc_link*,int) ;
 int dp_set_fec_ready (struct dc_link*,int) ;
 int stub1 (TYPE_4__*,int) ;

__attribute__((used)) static void disable_link(struct dc_link *link, enum signal_type signal)
{
 if (dc_is_dp_signal(signal)) {

  if (dc_is_dp_sst_signal(signal))
   dp_disable_link_phy(link, signal);
  else
   dp_disable_link_phy_mst(link, signal);
 } else
  link->link_enc->funcs->disable_output(link->link_enc, signal);

 if (signal == SIGNAL_TYPE_DISPLAY_PORT_MST) {

  if (link->mst_stream_alloc_table.stream_count <= 0)
   link->link_status.link_active = 0;
 } else {
  link->link_status.link_active = 0;
 }
}
