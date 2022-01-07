
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_pf2vf_resp {int pf2vf_resp_work; struct adf_accel_vf_info* vf_info; } ;
struct adf_accel_vf_info {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int adf_iov_send_resp ;
 struct adf_pf2vf_resp* kzalloc (int,int ) ;
 int pf2vf_resp_wq ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void adf_vf2pf_bh_handler(void *data)
{
 struct adf_accel_vf_info *vf_info = (struct adf_accel_vf_info *)data;
 struct adf_pf2vf_resp *pf2vf_resp;

 pf2vf_resp = kzalloc(sizeof(*pf2vf_resp), GFP_ATOMIC);
 if (!pf2vf_resp)
  return;

 pf2vf_resp->vf_info = vf_info;
 INIT_WORK(&pf2vf_resp->pf2vf_resp_work, adf_iov_send_resp);
 queue_work(pf2vf_resp_wq, &pf2vf_resp->pf2vf_resp_work);
}
