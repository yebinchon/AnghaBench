
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct wm97xx {TYPE_3__* ac97; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* read ) (TYPE_3__*,int ) ;} ;


 int stub1 (TYPE_3__*,int ) ;

int wm97xx_reg_read(struct wm97xx *wm, u16 reg)
{
 if (wm->ac97)
  return wm->ac97->bus->ops->read(wm->ac97, reg);
 else
  return -1;
}
