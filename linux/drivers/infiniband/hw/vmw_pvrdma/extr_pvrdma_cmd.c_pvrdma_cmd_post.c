
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union pvrdma_cmd_resp {int dummy; } pvrdma_cmd_resp ;
typedef union pvrdma_cmd_req {int dummy; } pvrdma_cmd_req ;
struct pvrdma_dev {int cmd_sema; TYPE_1__* pdev; int cmd_done; int cmd_lock; int cmd_slot; } ;
struct pvrdma_cmd_modify_qp {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int BUILD_BUG_ON (int) ;
 int EFAULT ;
 int PVRDMA_REG_ERR ;
 int PVRDMA_REG_REQUEST ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int down (int *) ;
 int init_completion (int *) ;
 int mb () ;
 int memcpy (int ,union pvrdma_cmd_req*,int) ;
 int pvrdma_cmd_recv (struct pvrdma_dev*,union pvrdma_cmd_resp*,unsigned int) ;
 int pvrdma_read_reg (struct pvrdma_dev*,int ) ;
 int pvrdma_write_reg (struct pvrdma_dev*,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up (int *) ;

int
pvrdma_cmd_post(struct pvrdma_dev *dev, union pvrdma_cmd_req *req,
  union pvrdma_cmd_resp *resp, unsigned resp_code)
{
 int err;

 dev_dbg(&dev->pdev->dev, "post request to device\n");


 down(&dev->cmd_sema);

 BUILD_BUG_ON(sizeof(union pvrdma_cmd_req) !=
       sizeof(struct pvrdma_cmd_modify_qp));

 spin_lock(&dev->cmd_lock);
 memcpy(dev->cmd_slot, req, sizeof(*req));
 spin_unlock(&dev->cmd_lock);

 init_completion(&dev->cmd_done);
 pvrdma_write_reg(dev, PVRDMA_REG_REQUEST, 0);


 mb();

 err = pvrdma_read_reg(dev, PVRDMA_REG_ERR);
 if (err == 0) {
  if (resp != ((void*)0))
   err = pvrdma_cmd_recv(dev, resp, resp_code);
 } else {
  dev_warn(&dev->pdev->dev,
    "failed to write request error reg: %d\n", err);
  err = -EFAULT;
 }

 up(&dev->cmd_sema);

 return err;
}
