
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {scalar_t__ reset; } ;


 int reset_control_reset (scalar_t__) ;
 int v3d_init_hw_state (struct v3d_dev*) ;
 int v3d_reset_by_bridge (struct v3d_dev*) ;

__attribute__((used)) static void
v3d_reset_v3d(struct v3d_dev *v3d)
{
 if (v3d->reset)
  reset_control_reset(v3d->reset);
 else
  v3d_reset_by_bridge(v3d);

 v3d_init_hw_state(v3d);
}
