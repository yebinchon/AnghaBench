
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qcom_icc_node {size_t num_bcms; struct qcom_icc_bcm** bcms; } ;
struct TYPE_2__ {int reserved; int vcd; int width; int unit; } ;
struct qcom_icc_bcm {int num_nodes; struct qcom_icc_node** nodes; TYPE_1__ aux_data; int name; int addr; } ;
struct device {int dummy; } ;
struct bcm_db {int reserved; int vcd; int width; int unit; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct bcm_db const*) ;
 int PTR_ERR (struct bcm_db const*) ;
 int cmd_db_read_addr (int ) ;
 struct bcm_db* cmd_db_read_aux_data (int ,size_t*) ;
 int dev_err (struct device*,char*,int ,...) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int qcom_icc_bcm_init(struct qcom_icc_bcm *bcm, struct device *dev)
{
 struct qcom_icc_node *qn;
 const struct bcm_db *data;
 size_t data_count;
 int i;

 bcm->addr = cmd_db_read_addr(bcm->name);
 if (!bcm->addr) {
  dev_err(dev, "%s could not find RPMh address\n",
   bcm->name);
  return -EINVAL;
 }

 data = cmd_db_read_aux_data(bcm->name, &data_count);
 if (IS_ERR(data)) {
  dev_err(dev, "%s command db read error (%ld)\n",
   bcm->name, PTR_ERR(data));
  return PTR_ERR(data);
 }
 if (!data_count) {
  dev_err(dev, "%s command db missing or partial aux data\n",
   bcm->name);
  return -EINVAL;
 }

 bcm->aux_data.unit = le32_to_cpu(data->unit);
 bcm->aux_data.width = le16_to_cpu(data->width);
 bcm->aux_data.vcd = data->vcd;
 bcm->aux_data.reserved = data->reserved;




 for (i = 0; i < bcm->num_nodes; i++) {
  qn = bcm->nodes[i];
  qn->bcms[qn->num_bcms] = bcm;
  qn->num_bcms++;
 }

 return 0;
}
