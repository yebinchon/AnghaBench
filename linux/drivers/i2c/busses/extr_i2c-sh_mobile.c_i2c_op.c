
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {size_t pos; int dev; int lock; int send_stop; TYPE_1__* msg; } ;
typedef enum sh_mobile_i2c_op { ____Placeholder_sh_mobile_i2c_op } sh_mobile_i2c_op ;
struct TYPE_2__ {int* buf; } ;


 int ICCR ;
 int ICCR_BBSY ;
 int ICCR_ICE ;
 int ICCR_RACK ;
 int ICCR_SCP ;
 int ICCR_TRS ;
 int ICDR ;
 int ICIC ;
 int ICIC_ALE ;
 int ICIC_DTEE ;
 int ICIC_TACKE ;
 int ICIC_WAITE ;
 int dev_dbg (int ,char*,int,...) ;
 int i2c_8bit_addr_from_msg (TYPE_1__*) ;
 unsigned char iic_rd (struct sh_mobile_i2c_data*,int ) ;
 int iic_wr (struct sh_mobile_i2c_data*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char i2c_op(struct sh_mobile_i2c_data *pd, enum sh_mobile_i2c_op op)
{
 unsigned char ret = 0;
 unsigned long flags;

 dev_dbg(pd->dev, "op %d\n", op);

 spin_lock_irqsave(&pd->lock, flags);

 switch (op) {
 case 132:
  iic_wr(pd, ICCR, ICCR_ICE | ICCR_TRS | ICCR_BBSY);
  break;
 case 130:
  iic_wr(pd, ICIC, ICIC_WAITE | ICIC_ALE | ICIC_TACKE);
  iic_wr(pd, ICDR, i2c_8bit_addr_from_msg(pd->msg));
  break;
 case 131:
  iic_wr(pd, ICDR, pd->msg->buf[pd->pos]);
  break;
 case 129:
  iic_wr(pd, ICCR, pd->send_stop ? ICCR_ICE | ICCR_TRS
            : ICCR_ICE | ICCR_TRS | ICCR_BBSY);
  break;
 case 128:
  iic_wr(pd, ICCR, ICCR_ICE | ICCR_SCP);
  break;
 case 135:
  ret = iic_rd(pd, ICDR);
  break;
 case 134:
  iic_wr(pd, ICIC,
         ICIC_DTEE | ICIC_WAITE | ICIC_ALE | ICIC_TACKE);
  iic_wr(pd, ICCR, ICCR_ICE | ICCR_RACK);
  break;
 case 133:
  iic_wr(pd, ICIC,
         ICIC_DTEE | ICIC_WAITE | ICIC_ALE | ICIC_TACKE);
  ret = iic_rd(pd, ICDR);
  iic_wr(pd, ICCR, ICCR_ICE | ICCR_RACK);
  break;
 }

 spin_unlock_irqrestore(&pd->lock, flags);

 dev_dbg(pd->dev, "op %d, data out 0x%02x\n", op, ret);
 return ret;
}
