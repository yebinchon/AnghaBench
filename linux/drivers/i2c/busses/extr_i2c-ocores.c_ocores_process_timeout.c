
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocores_i2c {int process_lock; int state; } ;


 int OCI2C_CMD ;
 int OCI2C_CMD_STOP ;
 int STATE_ERROR ;
 int oc_setreg (struct ocores_i2c*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ocores_process_timeout(struct ocores_i2c *i2c)
{
 unsigned long flags;

 spin_lock_irqsave(&i2c->process_lock, flags);
 i2c->state = STATE_ERROR;
 oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_STOP);
 spin_unlock_irqrestore(&i2c->process_lock, flags);
}
