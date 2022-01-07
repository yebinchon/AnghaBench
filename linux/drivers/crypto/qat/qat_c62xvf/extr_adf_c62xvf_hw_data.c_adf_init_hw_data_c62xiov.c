
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct adf_hw_device_data {int num_logical_accel; TYPE_1__* dev_class; int min_iov_compat_ver; int enable_vf2pf_comms; void* enable_ints; int get_sku; int get_vintmsk_offset; int get_pf2vf_offset; int get_misc_bar_id; int get_etr_bar_id; int get_num_aes; int get_num_accels; int get_ae_mask; int get_accel_mask; int disable_iov; void* exit_arb; void* init_arb; int send_admin_init; void* exit_admin_comms; void* init_admin_comms; void* enable_error_correction; int free_irq; int alloc_irq; int tx_rings_mask; int tx_rx_gap; int num_engines; int num_accel; int num_banks; } ;
struct TYPE_2__ {int instances; } ;


 int ADF_C62XIOV_ETR_MAX_BANKS ;
 int ADF_C62XIOV_MAX_ACCELENGINES ;
 int ADF_C62XIOV_MAX_ACCELERATORS ;
 int ADF_C62XIOV_RX_RINGS_OFFSET ;
 int ADF_C62XIOV_TX_RINGS_MASK ;
 int ADF_PFVF_COMPATIBILITY_VERSION ;
 int adf_devmgr_update_class_index (struct adf_hw_device_data*) ;
 int adf_enable_vf2pf_comms ;
 int adf_vf2pf_init ;
 int adf_vf2pf_shutdown ;
 void* adf_vf_int_noop ;
 int adf_vf_isr_resource_alloc ;
 int adf_vf_isr_resource_free ;
 void* adf_vf_void_noop ;
 TYPE_1__ c62xiov_class ;
 int get_accel_mask ;
 int get_ae_mask ;
 int get_etr_bar_id ;
 int get_misc_bar_id ;
 int get_num_accels ;
 int get_num_aes ;
 int get_pf2vf_offset ;
 int get_sku ;
 int get_vintmsk_offset ;

void adf_init_hw_data_c62xiov(struct adf_hw_device_data *hw_data)
{
 hw_data->dev_class = &c62xiov_class;
 hw_data->num_banks = ADF_C62XIOV_ETR_MAX_BANKS;
 hw_data->num_accel = ADF_C62XIOV_MAX_ACCELERATORS;
 hw_data->num_logical_accel = 1;
 hw_data->num_engines = ADF_C62XIOV_MAX_ACCELENGINES;
 hw_data->tx_rx_gap = ADF_C62XIOV_RX_RINGS_OFFSET;
 hw_data->tx_rings_mask = ADF_C62XIOV_TX_RINGS_MASK;
 hw_data->alloc_irq = adf_vf_isr_resource_alloc;
 hw_data->free_irq = adf_vf_isr_resource_free;
 hw_data->enable_error_correction = adf_vf_void_noop;
 hw_data->init_admin_comms = adf_vf_int_noop;
 hw_data->exit_admin_comms = adf_vf_void_noop;
 hw_data->send_admin_init = adf_vf2pf_init;
 hw_data->init_arb = adf_vf_int_noop;
 hw_data->exit_arb = adf_vf_void_noop;
 hw_data->disable_iov = adf_vf2pf_shutdown;
 hw_data->get_accel_mask = get_accel_mask;
 hw_data->get_ae_mask = get_ae_mask;
 hw_data->get_num_accels = get_num_accels;
 hw_data->get_num_aes = get_num_aes;
 hw_data->get_etr_bar_id = get_etr_bar_id;
 hw_data->get_misc_bar_id = get_misc_bar_id;
 hw_data->get_pf2vf_offset = get_pf2vf_offset;
 hw_data->get_vintmsk_offset = get_vintmsk_offset;
 hw_data->get_sku = get_sku;
 hw_data->enable_ints = adf_vf_void_noop;
 hw_data->enable_vf2pf_comms = adf_enable_vf2pf_comms;
 hw_data->min_iov_compat_ver = ADF_PFVF_COMPATIBILITY_VERSION;
 hw_data->dev_class->instances++;
 adf_devmgr_update_class_index(hw_data);
}
