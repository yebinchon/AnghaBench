
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sti_gdp {TYPE_1__* node_list; int plane; } ;
struct seq_file {struct drm_info_node* private; } ;
struct drm_info_node {TYPE_2__* info_ent; } ;
struct TYPE_4__ {scalar_t__ data; } ;
struct TYPE_3__ {int btm_field; int top_field; } ;


 unsigned int GDP_NODE_NB_BANK ;
 int gdp_node_dump_node (struct seq_file*,int ) ;
 int seq_printf (struct seq_file*,char*,int ,unsigned int) ;
 int sti_plane_to_str (int *) ;

__attribute__((used)) static int gdp_node_dbg_show(struct seq_file *s, void *arg)
{
 struct drm_info_node *node = s->private;
 struct sti_gdp *gdp = (struct sti_gdp *)node->info_ent->data;
 unsigned int b;

 for (b = 0; b < GDP_NODE_NB_BANK; b++) {
  seq_printf(s, "\n%s[%d].top", sti_plane_to_str(&gdp->plane), b);
  gdp_node_dump_node(s, gdp->node_list[b].top_field);
  seq_printf(s, "\n%s[%d].btm", sti_plane_to_str(&gdp->plane), b);
  gdp_node_dump_node(s, gdp->node_list[b].btm_field);
 }

 return 0;
}
