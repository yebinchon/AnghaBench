
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ti_sci_rm_udmap_ops {int rx_flow_cfg; int rx_ch_cfg; int tx_ch_cfg; } ;
struct ti_sci_rm_ringacc_ops {int get_config; int config; } ;
struct ti_sci_rm_psil_ops {int unpair; int pair; } ;
struct ti_sci_rm_irq_ops {int free_event_map; int free_irq; int set_event_map; int set_irq; } ;
struct ti_sci_rm_core_ops {int get_range_from_shost; int get_range; } ;
struct ti_sci_proc_ops {int get_status; int set_control; int set_config; int handover; int release; int request; } ;
struct ti_sci_clk_ops {int get_freq; int set_freq; int get_best_match_freq; int get_num_parents; int get_parent; int set_parent; int is_off; int is_on; int is_auto; int put_clock; int idle_clock; int get_clock; } ;
struct ti_sci_dev_ops {int get_device_resets; int set_device_resets; int is_transitioning; int is_on; int is_stop; int is_idle; int get_context_loss_count; int is_valid; int put_device; int idle_device_exclusive; int idle_device; int get_device_exclusive; int get_device; } ;
struct ti_sci_core_ops {int reboot_device; } ;
struct ti_sci_ops {struct ti_sci_proc_ops proc_ops; struct ti_sci_rm_udmap_ops rm_udmap_ops; struct ti_sci_rm_psil_ops rm_psil_ops; struct ti_sci_rm_ringacc_ops rm_ring_ops; struct ti_sci_rm_irq_ops rm_irq_ops; struct ti_sci_rm_core_ops rm_core_ops; struct ti_sci_clk_ops clk_ops; struct ti_sci_dev_ops dev_ops; struct ti_sci_core_ops core_ops; } ;
struct TYPE_2__ {struct ti_sci_ops ops; } ;
struct ti_sci_info {TYPE_1__ handle; } ;


 int ti_sci_cmd_clk_get_freq ;
 int ti_sci_cmd_clk_get_match_freq ;
 int ti_sci_cmd_clk_get_num_parents ;
 int ti_sci_cmd_clk_get_parent ;
 int ti_sci_cmd_clk_is_auto ;
 int ti_sci_cmd_clk_is_off ;
 int ti_sci_cmd_clk_is_on ;
 int ti_sci_cmd_clk_set_freq ;
 int ti_sci_cmd_clk_set_parent ;
 int ti_sci_cmd_core_reboot ;
 int ti_sci_cmd_dev_get_clcnt ;
 int ti_sci_cmd_dev_is_idle ;
 int ti_sci_cmd_dev_is_on ;
 int ti_sci_cmd_dev_is_stop ;
 int ti_sci_cmd_dev_is_trans ;
 int ti_sci_cmd_dev_is_valid ;
 int ti_sci_cmd_free_event_map ;
 int ti_sci_cmd_free_irq ;
 int ti_sci_cmd_get_clock ;
 int ti_sci_cmd_get_device ;
 int ti_sci_cmd_get_device_exclusive ;
 int ti_sci_cmd_get_device_resets ;
 int ti_sci_cmd_get_resource_range ;
 int ti_sci_cmd_get_resource_range_from_shost ;
 int ti_sci_cmd_idle_clock ;
 int ti_sci_cmd_idle_device ;
 int ti_sci_cmd_idle_device_exclusive ;
 int ti_sci_cmd_proc_get_status ;
 int ti_sci_cmd_proc_handover ;
 int ti_sci_cmd_proc_release ;
 int ti_sci_cmd_proc_request ;
 int ti_sci_cmd_proc_set_config ;
 int ti_sci_cmd_proc_set_control ;
 int ti_sci_cmd_put_clock ;
 int ti_sci_cmd_put_device ;
 int ti_sci_cmd_ring_config ;
 int ti_sci_cmd_ring_get_config ;
 int ti_sci_cmd_rm_psil_pair ;
 int ti_sci_cmd_rm_psil_unpair ;
 int ti_sci_cmd_rm_udmap_rx_ch_cfg ;
 int ti_sci_cmd_rm_udmap_rx_flow_cfg ;
 int ti_sci_cmd_rm_udmap_tx_ch_cfg ;
 int ti_sci_cmd_set_device_resets ;
 int ti_sci_cmd_set_event_map ;
 int ti_sci_cmd_set_irq ;

__attribute__((used)) static void ti_sci_setup_ops(struct ti_sci_info *info)
{
 struct ti_sci_ops *ops = &info->handle.ops;
 struct ti_sci_core_ops *core_ops = &ops->core_ops;
 struct ti_sci_dev_ops *dops = &ops->dev_ops;
 struct ti_sci_clk_ops *cops = &ops->clk_ops;
 struct ti_sci_rm_core_ops *rm_core_ops = &ops->rm_core_ops;
 struct ti_sci_rm_irq_ops *iops = &ops->rm_irq_ops;
 struct ti_sci_rm_ringacc_ops *rops = &ops->rm_ring_ops;
 struct ti_sci_rm_psil_ops *psilops = &ops->rm_psil_ops;
 struct ti_sci_rm_udmap_ops *udmap_ops = &ops->rm_udmap_ops;
 struct ti_sci_proc_ops *pops = &ops->proc_ops;

 core_ops->reboot_device = ti_sci_cmd_core_reboot;

 dops->get_device = ti_sci_cmd_get_device;
 dops->get_device_exclusive = ti_sci_cmd_get_device_exclusive;
 dops->idle_device = ti_sci_cmd_idle_device;
 dops->idle_device_exclusive = ti_sci_cmd_idle_device_exclusive;
 dops->put_device = ti_sci_cmd_put_device;

 dops->is_valid = ti_sci_cmd_dev_is_valid;
 dops->get_context_loss_count = ti_sci_cmd_dev_get_clcnt;
 dops->is_idle = ti_sci_cmd_dev_is_idle;
 dops->is_stop = ti_sci_cmd_dev_is_stop;
 dops->is_on = ti_sci_cmd_dev_is_on;
 dops->is_transitioning = ti_sci_cmd_dev_is_trans;
 dops->set_device_resets = ti_sci_cmd_set_device_resets;
 dops->get_device_resets = ti_sci_cmd_get_device_resets;

 cops->get_clock = ti_sci_cmd_get_clock;
 cops->idle_clock = ti_sci_cmd_idle_clock;
 cops->put_clock = ti_sci_cmd_put_clock;
 cops->is_auto = ti_sci_cmd_clk_is_auto;
 cops->is_on = ti_sci_cmd_clk_is_on;
 cops->is_off = ti_sci_cmd_clk_is_off;

 cops->set_parent = ti_sci_cmd_clk_set_parent;
 cops->get_parent = ti_sci_cmd_clk_get_parent;
 cops->get_num_parents = ti_sci_cmd_clk_get_num_parents;

 cops->get_best_match_freq = ti_sci_cmd_clk_get_match_freq;
 cops->set_freq = ti_sci_cmd_clk_set_freq;
 cops->get_freq = ti_sci_cmd_clk_get_freq;

 rm_core_ops->get_range = ti_sci_cmd_get_resource_range;
 rm_core_ops->get_range_from_shost =
    ti_sci_cmd_get_resource_range_from_shost;

 iops->set_irq = ti_sci_cmd_set_irq;
 iops->set_event_map = ti_sci_cmd_set_event_map;
 iops->free_irq = ti_sci_cmd_free_irq;
 iops->free_event_map = ti_sci_cmd_free_event_map;

 rops->config = ti_sci_cmd_ring_config;
 rops->get_config = ti_sci_cmd_ring_get_config;

 psilops->pair = ti_sci_cmd_rm_psil_pair;
 psilops->unpair = ti_sci_cmd_rm_psil_unpair;

 udmap_ops->tx_ch_cfg = ti_sci_cmd_rm_udmap_tx_ch_cfg;
 udmap_ops->rx_ch_cfg = ti_sci_cmd_rm_udmap_rx_ch_cfg;
 udmap_ops->rx_flow_cfg = ti_sci_cmd_rm_udmap_rx_flow_cfg;

 pops->request = ti_sci_cmd_proc_request;
 pops->release = ti_sci_cmd_proc_release;
 pops->handover = ti_sci_cmd_proc_handover;
 pops->set_config = ti_sci_cmd_proc_set_config;
 pops->set_control = ti_sci_cmd_proc_set_control;
 pops->get_status = ti_sci_cmd_proc_get_status;
}
