
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int (* set_vf_link_state ) (struct ib_device*,int,int ,int) ;} ;
struct ib_device {TYPE_1__ ops; } ;


 int EOPNOTSUPP ;
 int stub1 (struct ib_device*,int,int ,int) ;

int ib_set_vf_link_state(struct ib_device *device, int vf, u8 port,
    int state)
{
 if (!device->ops.set_vf_link_state)
  return -EOPNOTSUPP;

 return device->ops.set_vf_link_state(device, vf, port, state);
}
