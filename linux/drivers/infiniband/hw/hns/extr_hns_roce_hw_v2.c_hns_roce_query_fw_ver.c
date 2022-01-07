
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hns_roce_query_fw_info {int fw_ver; } ;
struct TYPE_2__ {scalar_t__ fw_ver; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;


 int HNS_QUERY_FW_VER ;
 int hns_roce_cmq_send (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ;
 int hns_roce_cmq_setup_basic_desc (struct hns_roce_cmq_desc*,int ,int) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int hns_roce_query_fw_ver(struct hns_roce_dev *hr_dev)
{
 struct hns_roce_query_fw_info *resp;
 struct hns_roce_cmq_desc desc;
 int ret;

 hns_roce_cmq_setup_basic_desc(&desc, HNS_QUERY_FW_VER, 1);
 ret = hns_roce_cmq_send(hr_dev, &desc, 1);
 if (ret)
  return ret;

 resp = (struct hns_roce_query_fw_info *)desc.data;
 hr_dev->caps.fw_ver = (u64)(le32_to_cpu(resp->fw_ver));

 return 0;
}
