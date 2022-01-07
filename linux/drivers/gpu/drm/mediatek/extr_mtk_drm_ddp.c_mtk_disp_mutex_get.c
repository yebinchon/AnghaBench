
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_disp_mutex {int claimed; } ;
struct mtk_ddp {struct mtk_disp_mutex* mutex; } ;
struct device {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 struct mtk_disp_mutex* ERR_PTR (int ) ;
 struct mtk_ddp* dev_get_drvdata (struct device*) ;

struct mtk_disp_mutex *mtk_disp_mutex_get(struct device *dev, unsigned int id)
{
 struct mtk_ddp *ddp = dev_get_drvdata(dev);

 if (id >= 10)
  return ERR_PTR(-EINVAL);
 if (ddp->mutex[id].claimed)
  return ERR_PTR(-EBUSY);

 ddp->mutex[id].claimed = 1;

 return &ddp->mutex[id];
}
