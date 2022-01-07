
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_puda_rsrc_info {int cq_id; int count; int pd_id; int sq_size; int rq_size; int tx_buf_cnt; scalar_t__ buf_size; int qp_id; int type; } ;
struct TYPE_2__ {scalar_t__ mtu; int exception_lan_queue; } ;
struct i40iw_device {TYPE_1__ vsi; } ;
typedef int info ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_PUDA_RSRC_TYPE_IEQ ;
 scalar_t__ VLAN_ETH_HLEN ;
 int i40iw_pr_err (char*) ;
 int i40iw_puda_create_rsrc (TYPE_1__*,struct i40iw_puda_rsrc_info*) ;
 int memset (struct i40iw_puda_rsrc_info*,int ,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_initialize_ieq(struct i40iw_device *iwdev)
{
 struct i40iw_puda_rsrc_info info;
 enum i40iw_status_code status;

 memset(&info, 0, sizeof(info));
 info.type = I40IW_PUDA_RSRC_TYPE_IEQ;
 info.cq_id = 2;
 info.qp_id = iwdev->vsi.exception_lan_queue;
 info.count = 1;
 info.pd_id = 2;
 info.sq_size = 8192;
 info.rq_size = 8192;
 info.buf_size = iwdev->vsi.mtu + VLAN_ETH_HLEN;
 info.tx_buf_cnt = 4096;
 status = i40iw_puda_create_rsrc(&iwdev->vsi, &info);
 if (status)
  i40iw_pr_err("ieq create fail\n");
 return status;
}
