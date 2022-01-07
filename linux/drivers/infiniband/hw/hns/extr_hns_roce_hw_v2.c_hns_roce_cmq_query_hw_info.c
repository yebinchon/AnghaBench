
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hns_roce_query_version {int rocee_hw_version; } ;
struct hns_roce_dev {TYPE_1__* pci_dev; int vendor_id; int hw_rev; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;
struct TYPE_2__ {int vendor; } ;


 int HNS_ROCE_OPC_QUERY_HW_VER ;
 int hns_roce_cmq_send (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ;
 int hns_roce_cmq_setup_basic_desc (struct hns_roce_cmq_desc*,int ,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int hns_roce_cmq_query_hw_info(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_query_version *resp;
 struct hns_roce_cmq_desc desc;
 int ret;

 hns_roce_cmq_setup_basic_desc(&desc, HNS_ROCE_OPC_QUERY_HW_VER, 1);
 ret = hns_roce_cmq_send(hr_dev, &desc, 1);
 if (ret)
  return ret;

 resp = (struct hns_roce_query_version *)desc.data;
 hr_dev->hw_rev = le16_to_cpu(resp->rocee_hw_version);
 hr_dev->vendor_id = hr_dev->pci_dev->vendor;

 return 0;
}
