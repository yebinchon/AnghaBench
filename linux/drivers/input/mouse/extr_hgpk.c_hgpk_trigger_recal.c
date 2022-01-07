
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct hgpk_data* private; } ;
struct hgpk_data {int recalib_wq; } ;
typedef int ssize_t ;


 int EINVAL ;
 int kstrtouint (char const*,int,unsigned int*) ;
 int psmouse_queue_work (struct psmouse*,int *,int ) ;

__attribute__((used)) static ssize_t hgpk_trigger_recal(struct psmouse *psmouse, void *data,
    const char *buf, size_t count)
{
 struct hgpk_data *priv = psmouse->private;
 unsigned int value;
 int err;

 err = kstrtouint(buf, 10, &value);
 if (err)
  return err;

 if (value != 1)
  return -EINVAL;






 psmouse_queue_work(psmouse, &priv->recalib_wq, 0);
 return count;
}
