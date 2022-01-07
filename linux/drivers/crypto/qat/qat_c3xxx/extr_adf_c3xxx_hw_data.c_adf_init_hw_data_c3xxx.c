
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adf_hw_device_data {int num_logical_accel; int min_iov_compat_ver; int reset_device; int enable_vf2pf_comms; int enable_ints; int get_arb_mapping; int exit_arb; int init_arb; int send_admin_init; int disable_iov; int exit_admin_comms; int init_admin_comms; int fw_mmp_name; int fw_name; int get_sku; int get_vintmsk_offset; int get_pf2vf_offset; int get_misc_bar_id; int get_etr_bar_id; int get_sram_bar_id; int get_num_aes; int get_num_accels; int get_ae_mask; int get_accel_mask; int enable_error_correction; int free_irq; int alloc_irq; int tx_rings_mask; int tx_rx_gap; int num_engines; int num_accel; int num_banks; scalar_t__ instance_id; TYPE_1__* dev_class; } ;
struct TYPE_2__ {int instances; } ;


 int ADF_C3XXX_ETR_MAX_BANKS ;
 int ADF_C3XXX_FW ;
 int ADF_C3XXX_MAX_ACCELENGINES ;
 int ADF_C3XXX_MAX_ACCELERATORS ;
 int ADF_C3XXX_MMP ;
 int ADF_C3XXX_RX_RINGS_OFFSET ;
 int ADF_C3XXX_TX_RINGS_MASK ;
 int ADF_PFVF_COMPATIBILITY_VERSION ;
 int adf_disable_sriov ;
 int adf_enable_error_correction ;
 int adf_enable_ints ;
 int adf_exit_admin_comms ;
 int adf_exit_arb ;
 int adf_get_arbiter_mapping ;
 int adf_init_admin_comms ;
 int adf_init_arb ;
 int adf_isr_resource_alloc ;
 int adf_isr_resource_free ;
 int adf_pf_enable_vf2pf_comms ;
 int adf_reset_flr ;
 int adf_send_admin_init ;
 TYPE_1__ c3xxx_class ;
 int get_accel_mask ;
 int get_ae_mask ;
 int get_etr_bar_id ;
 int get_misc_bar_id ;
 int get_num_accels ;
 int get_num_aes ;
 int get_pf2vf_offset ;
 int get_sku ;
 int get_sram_bar_id ;
 int get_vintmsk_offset ;

void adf_init_hw_data_c3xxx(struct adf_hw_device_data *hw_data)
{
 hw_data->dev_class = &c3xxx_class;
 hw_data->instance_id = c3xxx_class.instances++;
 hw_data->num_banks = ADF_C3XXX_ETR_MAX_BANKS;
 hw_data->num_accel = ADF_C3XXX_MAX_ACCELERATORS;
 hw_data->num_logical_accel = 1;
 hw_data->num_engines = ADF_C3XXX_MAX_ACCELENGINES;
 hw_data->tx_rx_gap = ADF_C3XXX_RX_RINGS_OFFSET;
 hw_data->tx_rings_mask = ADF_C3XXX_TX_RINGS_MASK;
 hw_data->alloc_irq = adf_isr_resource_alloc;
 hw_data->free_irq = adf_isr_resource_free;
 hw_data->enable_error_correction = adf_enable_error_correction;
 hw_data->get_accel_mask = get_accel_mask;
 hw_data->get_ae_mask = get_ae_mask;
 hw_data->get_num_accels = get_num_accels;
 hw_data->get_num_aes = get_num_aes;
 hw_data->get_sram_bar_id = get_sram_bar_id;
 hw_data->get_etr_bar_id = get_etr_bar_id;
 hw_data->get_misc_bar_id = get_misc_bar_id;
 hw_data->get_pf2vf_offset = get_pf2vf_offset;
 hw_data->get_vintmsk_offset = get_vintmsk_offset;
 hw_data->get_sku = get_sku;
 hw_data->fw_name = ADF_C3XXX_FW;
 hw_data->fw_mmp_name = ADF_C3XXX_MMP;
 hw_data->init_admin_comms = adf_init_admin_comms;
 hw_data->exit_admin_comms = adf_exit_admin_comms;
 hw_data->disable_iov = adf_disable_sriov;
 hw_data->send_admin_init = adf_send_admin_init;
 hw_data->init_arb = adf_init_arb;
 hw_data->exit_arb = adf_exit_arb;
 hw_data->get_arb_mapping = adf_get_arbiter_mapping;
 hw_data->enable_ints = adf_enable_ints;
 hw_data->enable_vf2pf_comms = adf_pf_enable_vf2pf_comms;
 hw_data->reset_device = adf_reset_flr;
 hw_data->min_iov_compat_ver = ADF_PFVF_COMPATIBILITY_VERSION;
}
