
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct cyttsp {int suspended; } ;


 int cyttsp_disable (struct cyttsp*) ;
 struct cyttsp* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void cyttsp_close(struct input_dev *dev)
{
 struct cyttsp *ts = input_get_drvdata(dev);

 if (!ts->suspended)
  cyttsp_disable(ts);
}
