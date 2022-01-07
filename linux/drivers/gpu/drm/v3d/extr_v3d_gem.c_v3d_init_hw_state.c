
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int dummy; } ;


 int v3d_init_core (struct v3d_dev*,int ) ;

__attribute__((used)) static void
v3d_init_hw_state(struct v3d_dev *v3d)
{
 v3d_init_core(v3d, 0);
}
