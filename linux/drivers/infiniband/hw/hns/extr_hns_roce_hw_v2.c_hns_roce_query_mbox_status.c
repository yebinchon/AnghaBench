
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_mbox_status {int mb_status_hw_run; } ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;
typedef enum hns_roce_cmd_return_status { ____Placeholder_hns_roce_cmd_return_status } hns_roce_cmd_return_status ;


 int HNS_ROCE_OPC_QUERY_MB_ST ;
 int hns_roce_cmq_send (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ;
 int hns_roce_cmq_setup_basic_desc (struct hns_roce_cmq_desc*,int ,int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int hns_roce_query_mbox_status(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_cmq_desc desc;
 struct hns_roce_mbox_status *mb_st =
           (struct hns_roce_mbox_status *)desc.data;
 enum hns_roce_cmd_return_status status;

 hns_roce_cmq_setup_basic_desc(&desc, HNS_ROCE_OPC_QUERY_MB_ST, 1);

 status = hns_roce_cmq_send(hr_dev, &desc, 1);
 if (status)
  return status;

 return le32_to_cpu(mb_st->mb_status_hw_run);
}
