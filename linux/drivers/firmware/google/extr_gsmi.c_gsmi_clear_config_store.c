
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct kobj_attribute {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int lock; TYPE_1__* param_buf; } ;
struct TYPE_3__ {int length; int start; } ;


 int GSMI_CALLBACK ;
 int GSMI_CMD_CLEAR_CONFIG ;
 TYPE_2__ gsmi_dev ;
 int gsmi_exec (int ,int ) ;
 int memset (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t gsmi_clear_config_store(struct kobject *kobj,
           struct kobj_attribute *attr,
           const char *buf, size_t count)
{
 int rc;
 unsigned long flags;

 spin_lock_irqsave(&gsmi_dev.lock, flags);


 memset(gsmi_dev.param_buf->start, 0, gsmi_dev.param_buf->length);

 rc = gsmi_exec(GSMI_CALLBACK, GSMI_CMD_CLEAR_CONFIG);

 spin_unlock_irqrestore(&gsmi_dev.lock, flags);

 if (rc)
  return rc;
 return count;
}
