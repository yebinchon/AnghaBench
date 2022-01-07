
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct device {TYPE_1__* driver; } ;
struct TYPE_16__ {struct device* parent; } ;
struct TYPE_11__ {TYPE_7__ dev; } ;
struct cec_adapter {int capabilities; int name; struct cec_adapter* error_inj_file; struct cec_adapter* cec_dir; TYPE_3__* ops; struct cec_adapter* status_file; TYPE_10__ devnode; TYPE_4__* rc; int owner; } ;
struct TYPE_13__ {struct device* parent; } ;
struct TYPE_15__ {TYPE_2__ dev; } ;
struct TYPE_14__ {int error_inj_parse_line; int error_inj_show; } ;
struct TYPE_12__ {int owner; } ;


 int CEC_CAP_RC ;
 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (struct cec_adapter*) ;
 scalar_t__ WARN_ON (int) ;
 int cec_adap_status ;
 int cec_devnode_register (TYPE_10__*,int ) ;
 int cec_error_inj_fops ;
 struct cec_adapter* debugfs_create_devm_seqfile (TYPE_7__*,char*,struct cec_adapter*,int ) ;
 struct cec_adapter* debugfs_create_dir (int ,int ) ;
 struct cec_adapter* debugfs_create_file (char*,int,struct cec_adapter*,struct cec_adapter*,int *) ;
 int debugfs_remove_recursive (struct cec_adapter*) ;
 int dev_name (TYPE_7__*) ;
 int dev_set_drvdata (TYPE_7__*,struct cec_adapter*) ;
 int pr_err (char*,int ) ;
 int pr_warn (char*,int ) ;
 int rc_free_device (TYPE_4__*) ;
 int rc_register_device (TYPE_4__*) ;
 int rc_unregister_device (TYPE_4__*) ;
 int top_cec_dir ;

int cec_register_adapter(struct cec_adapter *adap,
    struct device *parent)
{
 int res;

 if (IS_ERR_OR_NULL(adap))
  return 0;

 if (WARN_ON(!parent))
  return -EINVAL;

 adap->owner = parent->driver->owner;
 adap->devnode.dev.parent = parent;
 res = cec_devnode_register(&adap->devnode, adap->owner);
 if (res) {





  return res;
 }

 dev_set_drvdata(&adap->devnode.dev, adap);
 return 0;
}
