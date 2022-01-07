
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int (* get_if_frequency ) (TYPE_3__*,int*) ;} ;
struct TYPE_5__ {TYPE_1__ tuner_ops; } ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct cxd2841er_priv {int flags; TYPE_3__ frontend; } ;


 int CXD2841ER_AUTO_IFHZ ;
 int stub1 (TYPE_3__*,int*) ;

__attribute__((used)) static int cxd2841er_get_if_hz(struct cxd2841er_priv *priv, u32 def_hz)
{
 u32 hz;

 if (priv->frontend.ops.tuner_ops.get_if_frequency
   && (priv->flags & CXD2841ER_AUTO_IFHZ))
  priv->frontend.ops.tuner_ops.get_if_frequency(
   &priv->frontend, &hz);
 else
  hz = def_hz;

 return hz;
}
