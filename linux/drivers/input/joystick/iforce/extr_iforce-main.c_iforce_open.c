
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int evbit; } ;
struct iforce {TYPE_1__* xport_ops; } ;
struct TYPE_2__ {int (* start_io ) (struct iforce*) ;} ;


 int EV_FF ;
 int FF_CMD_ENABLE ;
 int iforce_send_packet (struct iforce*,int ,char*) ;
 struct iforce* input_get_drvdata (struct input_dev*) ;
 int stub1 (struct iforce*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int iforce_open(struct input_dev *dev)
{
 struct iforce *iforce = input_get_drvdata(dev);

 iforce->xport_ops->start_io(iforce);

 if (test_bit(EV_FF, dev->evbit)) {

  iforce_send_packet(iforce, FF_CMD_ENABLE, "\004");
 }

 return 0;
}
