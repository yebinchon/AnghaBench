
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_ordird_qp; } ;
struct TYPE_4__ {TYPE_1__ lldi; } ;
struct c4iw_dev {TYPE_2__ rdev; } ;


 int c4iw_max_read_depth ;
 int min (int ,int ) ;

__attribute__((used)) static inline int cur_max_read_depth(struct c4iw_dev *dev)
{
 return min(dev->rdev.lldi.max_ordird_qp, c4iw_max_read_depth);
}
