
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c24xx_i2c {int msg_idx; int quirks; int wait; scalar_t__ msg_num; int * msg; scalar_t__ msg_ptr; int dev; } ;


 int QUIRK_POLL ;
 int dev_dbg (int ,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void s3c24xx_i2c_master_complete(struct s3c24xx_i2c *i2c, int ret)
{
 dev_dbg(i2c->dev, "master_complete %d\n", ret);

 i2c->msg_ptr = 0;
 i2c->msg = ((void*)0);
 i2c->msg_idx++;
 i2c->msg_num = 0;
 if (ret)
  i2c->msg_idx = ret;

 if (!(i2c->quirks & QUIRK_POLL))
  wake_up(&i2c->wait);
}
