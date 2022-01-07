
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mip4_ts {int dummy; } ;
struct input_dev {int dummy; } ;


 struct mip4_ts* input_get_drvdata (struct input_dev*) ;
 int mip4_disable (struct mip4_ts*) ;

__attribute__((used)) static void mip4_input_close(struct input_dev *dev)
{
 struct mip4_ts *ts = input_get_drvdata(dev);

 mip4_disable(ts);
}
