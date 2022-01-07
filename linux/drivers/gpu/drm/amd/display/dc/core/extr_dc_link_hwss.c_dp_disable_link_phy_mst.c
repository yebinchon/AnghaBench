
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ stream_count; } ;
struct dc_link {TYPE_1__ mst_stream_alloc_table; } ;
typedef enum signal_type { ____Placeholder_signal_type } signal_type ;


 int dp_disable_link_phy (struct dc_link*,int) ;
 int dp_enable_mst_on_sink (struct dc_link*,int) ;

void dp_disable_link_phy_mst(struct dc_link *link, enum signal_type signal)
{

 if (link->mst_stream_alloc_table.stream_count > 0)
  return;

 dp_disable_link_phy(link, signal);


 dp_enable_mst_on_sink(link, 0);
}
