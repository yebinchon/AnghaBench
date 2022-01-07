
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_len_err_nps; int pkt_rcv_err_nps; int fpf_undrrn; } ;
union bmi_int_ena_w1s {scalar_t__ value; TYPE_1__ s; } ;
struct TYPE_4__ {int max_pkt_len; int nps_free_thrsh; int nps_hdrq_thrsh; } ;
union bmi_ctl {scalar_t__ value; TYPE_2__ s; } ;
typedef int u64 ;
struct nitrox_device {int dummy; } ;


 int BMI_CTL ;
 int BMI_INT_ENA_W1S ;
 scalar_t__ nitrox_read_csr (struct nitrox_device*,int ) ;
 int nitrox_write_csr (struct nitrox_device*,int ,scalar_t__) ;

void nitrox_config_bmi_unit(struct nitrox_device *ndev)
{
 union bmi_ctl bmi_ctl;
 union bmi_int_ena_w1s bmi_int_ena;
 u64 offset;


 offset = BMI_CTL;
 bmi_ctl.value = nitrox_read_csr(ndev, offset);
 bmi_ctl.s.max_pkt_len = 0xff;
 bmi_ctl.s.nps_free_thrsh = 0xff;
 bmi_ctl.s.nps_hdrq_thrsh = 0x7a;
 nitrox_write_csr(ndev, offset, bmi_ctl.value);


 offset = BMI_INT_ENA_W1S;
 bmi_int_ena.value = 0;
 bmi_int_ena.s.max_len_err_nps = 1;
 bmi_int_ena.s.pkt_rcv_err_nps = 1;
 bmi_int_ena.s.fpf_undrrn = 1;
 nitrox_write_csr(ndev, offset, bmi_int_ena.value);
}
