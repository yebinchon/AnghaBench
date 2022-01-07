
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;
struct hns_roce_cfg_global_param {int time_cfg_udp_port; } ;


 int CFG_GLOBAL_PARAM_DATA_0_ROCEE_TIME_1US_CFG_M ;
 int CFG_GLOBAL_PARAM_DATA_0_ROCEE_TIME_1US_CFG_S ;
 int CFG_GLOBAL_PARAM_DATA_0_ROCEE_UDP_PORT_M ;
 int CFG_GLOBAL_PARAM_DATA_0_ROCEE_UDP_PORT_S ;
 int HNS_ROCE_OPC_CFG_GLOBAL_PARAM ;
 int hns_roce_cmq_send (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ;
 int hns_roce_cmq_setup_basic_desc (struct hns_roce_cmq_desc*,int ,int) ;
 int memset (struct hns_roce_cfg_global_param*,int ,int) ;
 int roce_set_field (int ,int ,int ,int) ;

__attribute__((used)) static int hns_roce_config_global_param(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_cfg_global_param *req;
 struct hns_roce_cmq_desc desc;

 hns_roce_cmq_setup_basic_desc(&desc, HNS_ROCE_OPC_CFG_GLOBAL_PARAM,
          0);

 req = (struct hns_roce_cfg_global_param *)desc.data;
 memset(req, 0, sizeof(*req));
 roce_set_field(req->time_cfg_udp_port,
         CFG_GLOBAL_PARAM_DATA_0_ROCEE_TIME_1US_CFG_M,
         CFG_GLOBAL_PARAM_DATA_0_ROCEE_TIME_1US_CFG_S, 0x3e8);
 roce_set_field(req->time_cfg_udp_port,
         CFG_GLOBAL_PARAM_DATA_0_ROCEE_UDP_PORT_M,
         CFG_GLOBAL_PARAM_DATA_0_ROCEE_UDP_PORT_S, 0x12b7);

 return hns_roce_cmq_send(hr_dev, &desc, 1);
}
