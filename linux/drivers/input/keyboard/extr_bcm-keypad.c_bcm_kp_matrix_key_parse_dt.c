
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct bcm_kp {int kpcr; unsigned int n_rows; int n_cols; unsigned int imr0_val; unsigned int imr1_val; unsigned int kpemr; int kpior; TYPE_2__* input_dev; } ;
struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int EINVAL ;
 int KPCR_COLFILTERENABLE ;
 unsigned int KPCR_COLFILTERTYPE_MAX ;
 unsigned int KPCR_COLFILTERTYPE_SHIFT ;
 int KPCR_COLUMNWIDTH_SHIFT ;
 unsigned int KPCR_MODE ;
 int KPCR_ROWWIDTH_SHIFT ;
 int KPCR_STATUSFILTERENABLE ;
 unsigned int KPCR_STATUSFILTERTYPE_MAX ;
 unsigned int KPCR_STATUSFILTERTYPE_SHIFT ;
 unsigned int KPEMR_EDGETYPE_BOTH ;
 int KPIOR_COLUMNOCONTRL_SHIFT ;
 int KPIOR_ROWOCONTRL_SHIFT ;
 int MAX_COLS ;
 int dev_dbg (struct device*,char*,int,int,unsigned int,int,unsigned int) ;
 int dev_err (struct device*,char*,...) ;
 int matrix_keypad_parse_properties (struct device*,unsigned int*,int*) ;
 scalar_t__ of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;

__attribute__((used)) static int bcm_kp_matrix_key_parse_dt(struct bcm_kp *kp)
{
 struct device *dev = kp->input_dev->dev.parent;
 struct device_node *np = dev->of_node;
 int error;
 unsigned int dt_val;
 unsigned int i;
 unsigned int num_rows, col_mask, rows_set;


 kp->kpcr = KPCR_STATUSFILTERENABLE | KPCR_COLFILTERENABLE;

 error = matrix_keypad_parse_properties(dev, &kp->n_rows, &kp->n_cols);
 if (error) {
  dev_err(dev, "failed to parse kp params\n");
  return error;
 }


 kp->kpcr |= (kp->n_rows - 1) << KPCR_ROWWIDTH_SHIFT;


 kp->kpcr |= (kp->n_cols - 1) << KPCR_COLUMNWIDTH_SHIFT;
 col_mask = (1 << (kp->n_cols)) - 1;
 num_rows = kp->n_rows;


 kp->imr0_val = col_mask;

 rows_set = 1;
 while (--num_rows && rows_set++ < 4)
  kp->imr0_val |= kp->imr0_val << MAX_COLS;


 kp->imr1_val = 0;
 if (num_rows) {
  kp->imr1_val = col_mask;
  while (--num_rows)
   kp->imr1_val |= kp->imr1_val << MAX_COLS;
 }



 kp->kpemr = 0;
 for (i = 0; i <= 30; i += 2)
  kp->kpemr |= (KPEMR_EDGETYPE_BOTH << i);





 of_property_read_u32(np, "status-debounce-filter-period", &dt_val);

 if (dt_val > KPCR_STATUSFILTERTYPE_MAX) {
  dev_err(dev, "Invalid Status filter debounce value %d\n",
   dt_val);
  return -EINVAL;
 }

 kp->kpcr |= dt_val << KPCR_STATUSFILTERTYPE_SHIFT;





 of_property_read_u32(np, "col-debounce-filter-period", &dt_val);

 if (dt_val > KPCR_COLFILTERTYPE_MAX) {
  dev_err(dev, "Invalid Column filter debounce value %d\n",
   dt_val);
  return -EINVAL;
 }

 kp->kpcr |= dt_val << KPCR_COLFILTERTYPE_SHIFT;





 if (of_property_read_bool(np, "row-output-enabled")) {




  kp->kpior = ((1 << kp->n_rows) - 1) <<
    KPIOR_ROWOCONTRL_SHIFT;
 } else {
  kp->kpior = ((1 << kp->n_cols) - 1) <<
    KPIOR_COLUMNOCONTRL_SHIFT;
 }




 if (of_property_read_bool(np, "pull-up-enabled"))
  kp->kpcr |= KPCR_MODE;

 dev_dbg(dev, "n_rows=%d n_col=%d kpcr=%x kpior=%x kpemr=%x\n",
  kp->n_rows, kp->n_cols,
  kp->kpcr, kp->kpior, kp->kpemr);

 return 0;
}
