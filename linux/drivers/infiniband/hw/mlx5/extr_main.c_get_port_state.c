
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_port_attr {int state; } ;
struct TYPE_2__ {int (* query_port ) (struct ib_device*,int ,struct ib_port_attr*) ;} ;
struct ib_device {TYPE_1__ ops; } ;
typedef enum ib_port_state { ____Placeholder_ib_port_state } ib_port_state ;
typedef int attr ;


 int memset (struct ib_port_attr*,int ,int) ;
 int stub1 (struct ib_device*,int ,struct ib_port_attr*) ;

__attribute__((used)) static int get_port_state(struct ib_device *ibdev,
     u8 port_num,
     enum ib_port_state *state)
{
 struct ib_port_attr attr;
 int ret;

 memset(&attr, 0, sizeof(attr));
 ret = ibdev->ops.query_port(ibdev, port_num, &attr);
 if (!ret)
  *state = attr.state;
 return ret;
}
