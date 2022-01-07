
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct cec_fh* private_data; } ;
struct cec_fh {TYPE_1__* adap; } ;
struct cec_devnode {int dummy; } ;
struct TYPE_2__ {struct cec_devnode devnode; } ;



__attribute__((used)) static inline struct cec_devnode *cec_devnode_data(struct file *filp)
{
 struct cec_fh *fh = filp->private_data;

 return &fh->adap->devnode;
}
