
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dev; } ;
struct geni_i2c_dev {TYPE_2__ se; TYPE_1__* cur; scalar_t__ err; } ;
struct TYPE_6__ {int msg; scalar_t__ err; } ;
struct TYPE_4__ {int flags; int addr; int len; } ;


 int GENI_ABORT_DONE ;
 int NACK ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_err (int ,char*,int ) ;
 int geni_i2c_err_misc (struct geni_i2c_dev*) ;
 TYPE_3__* gi2c_log ;

__attribute__((used)) static void geni_i2c_err(struct geni_i2c_dev *gi2c, int err)
{
 if (!gi2c->err)
  gi2c->err = gi2c_log[err].err;
 if (gi2c->cur)
  dev_dbg(gi2c->se.dev, "len:%d, slv-addr:0x%x, RD/WR:%d\n",
   gi2c->cur->len, gi2c->cur->addr, gi2c->cur->flags);

 if (err != NACK && err != GENI_ABORT_DONE) {
  dev_err(gi2c->se.dev, "%s\n", gi2c_log[err].msg);
  geni_i2c_err_misc(gi2c);
 }
}
