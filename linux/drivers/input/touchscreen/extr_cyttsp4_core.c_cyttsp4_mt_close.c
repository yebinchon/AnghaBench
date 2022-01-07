
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct input_dev {TYPE_1__ dev; } ;
struct cyttsp4_mt_data {int report_lock; int is_suspended; } ;


 struct cyttsp4_mt_data* input_get_drvdata (struct input_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pm_runtime_put (int ) ;

__attribute__((used)) static void cyttsp4_mt_close(struct input_dev *input)
{
 struct cyttsp4_mt_data *md = input_get_drvdata(input);
 mutex_lock(&md->report_lock);
 if (!md->is_suspended)
  pm_runtime_put(input->dev.parent);
 mutex_unlock(&md->report_lock);
}
