
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sa_path_rec {int dummy; } ;
struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* qp; } ;
struct ipoib_cm_data {void* mtu; void* qpn; } ;
struct ib_qp {int qp_type; int qp_num; } ;
struct ib_cm_req_param {int private_data_len; int responder_resources; int remote_cm_response_timeout; int local_cm_response_timeout; int max_cm_retries; int srq; scalar_t__ rnr_retry_count; scalar_t__ retry_count; scalar_t__ starting_psn; scalar_t__ flow_control; struct ipoib_cm_data* private_data; int qp_type; int qp_num; int service_id; int * alternate_path; struct sa_path_rec* primary_path; } ;
struct ib_cm_id {int dummy; } ;
typedef int data ;
struct TYPE_2__ {int qp_num; } ;


 int IPOIB_CM_BUF_SIZE ;
 int IPOIB_CM_IETF_ID ;
 void* cpu_to_be32 (int ) ;
 int cpu_to_be64 (int) ;
 int ib_send_cm_req (struct ib_cm_id*,struct ib_cm_req_param*) ;
 int ipoib_cm_has_srq (struct net_device*) ;
 struct ipoib_dev_priv* ipoib_priv (struct net_device*) ;

__attribute__((used)) static int ipoib_cm_send_req(struct net_device *dev,
        struct ib_cm_id *id, struct ib_qp *qp,
        u32 qpn,
        struct sa_path_rec *pathrec)
{
 struct ipoib_dev_priv *priv = ipoib_priv(dev);
 struct ipoib_cm_data data = {};
 struct ib_cm_req_param req = {};

 data.qpn = cpu_to_be32(priv->qp->qp_num);
 data.mtu = cpu_to_be32(IPOIB_CM_BUF_SIZE);

 req.primary_path = pathrec;
 req.alternate_path = ((void*)0);
 req.service_id = cpu_to_be64(IPOIB_CM_IETF_ID | qpn);
 req.qp_num = qp->qp_num;
 req.qp_type = qp->qp_type;
 req.private_data = &data;
 req.private_data_len = sizeof(data);
 req.flow_control = 0;

 req.starting_psn = 0;





 req.responder_resources = 4;
 req.remote_cm_response_timeout = 20;
 req.local_cm_response_timeout = 20;
 req.retry_count = 0;
 req.rnr_retry_count = 0;
 req.max_cm_retries = 15;
 req.srq = ipoib_cm_has_srq(dev);
 return ib_send_cm_req(id, &req);
}
