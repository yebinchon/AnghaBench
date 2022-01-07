
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int timeout; } ;
struct riic_dev {int err; int is_last; TYPE_1__ adapter; int msg_done; scalar_t__ base; struct i2c_msg* msg; int buf; int bytes_left; } ;
struct i2c_msg {int buf; } ;
struct TYPE_4__ {int parent; } ;
struct i2c_adapter {TYPE_2__ dev; } ;


 int EBUSY ;
 int ETIMEDOUT ;
 int ICCR2_BBSY ;
 int ICCR2_RS ;
 int ICCR2_ST ;
 int ICIER_NAKIE ;
 int ICIER_TIE ;
 scalar_t__ RIIC_ICCR2 ;
 scalar_t__ RIIC_ICIER ;
 scalar_t__ RIIC_ICSR2 ;
 int RIIC_INIT_MSG ;
 struct riic_dev* i2c_get_adapdata (struct i2c_adapter*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int readb (scalar_t__) ;
 int reinit_completion (int *) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static int riic_xfer(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
{
 struct riic_dev *riic = i2c_get_adapdata(adap);
 unsigned long time_left;
 int i;
 u8 start_bit;

 pm_runtime_get_sync(adap->dev.parent);

 if (readb(riic->base + RIIC_ICCR2) & ICCR2_BBSY) {
  riic->err = -EBUSY;
  goto out;
 }

 reinit_completion(&riic->msg_done);
 riic->err = 0;

 writeb(0, riic->base + RIIC_ICSR2);

 for (i = 0, start_bit = ICCR2_ST; i < num; i++) {
  riic->bytes_left = RIIC_INIT_MSG;
  riic->buf = msgs[i].buf;
  riic->msg = &msgs[i];
  riic->is_last = (i == num - 1);

  writeb(ICIER_NAKIE | ICIER_TIE, riic->base + RIIC_ICIER);

  writeb(start_bit, riic->base + RIIC_ICCR2);

  time_left = wait_for_completion_timeout(&riic->msg_done, riic->adapter.timeout);
  if (time_left == 0)
   riic->err = -ETIMEDOUT;

  if (riic->err)
   break;

  start_bit = ICCR2_RS;
 }

 out:
 pm_runtime_put(adap->dev.parent);

 return riic->err ?: num;
}
