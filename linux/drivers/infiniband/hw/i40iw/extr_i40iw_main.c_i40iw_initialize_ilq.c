
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_puda_rsrc_info {int cq_id; int count; int pd_id; int sq_size; int rq_size; int buf_size; int tx_buf_cnt; int xmit_complete; int receive; scalar_t__ qp_id; int type; } ;
struct i40iw_device {int vsi; } ;
typedef int info ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_PUDA_RSRC_TYPE_ILQ ;
 int i40iw_free_sqbuf ;
 int i40iw_pr_err (char*) ;
 int i40iw_puda_create_rsrc (int *,struct i40iw_puda_rsrc_info*) ;
 int i40iw_receive_ilq ;
 int memset (struct i40iw_puda_rsrc_info*,int ,int) ;

__attribute__((used)) static enum i40iw_status_code i40iw_initialize_ilq(struct i40iw_device *iwdev)
{
 struct i40iw_puda_rsrc_info info;
 enum i40iw_status_code status;

 memset(&info, 0, sizeof(info));
 info.type = I40IW_PUDA_RSRC_TYPE_ILQ;
 info.cq_id = 1;
 info.qp_id = 0;
 info.count = 1;
 info.pd_id = 1;
 info.sq_size = 8192;
 info.rq_size = 8192;
 info.buf_size = 1024;
 info.tx_buf_cnt = 16384;
 info.receive = i40iw_receive_ilq;
 info.xmit_complete = i40iw_free_sqbuf;
 status = i40iw_puda_create_rsrc(&iwdev->vsi, &info);
 if (status)
  i40iw_pr_err("ilq create fail\n");
 return status;
}
