
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_tcon_quirks {int has_channel_0; } ;
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;


 struct of_device_id* of_match_node (int ,struct device_node*) ;
 int sun4i_tcon_of_table ;

__attribute__((used)) static bool sun4i_drv_node_is_tcon_with_ch0(struct device_node *node)
{
 const struct of_device_id *match;

 match = of_match_node(sun4i_tcon_of_table, node);
 if (match) {
  struct sun4i_tcon_quirks *quirks;

  quirks = (struct sun4i_tcon_quirks *)match->data;

  return quirks->has_channel_0;
 }

 return 0;
}
