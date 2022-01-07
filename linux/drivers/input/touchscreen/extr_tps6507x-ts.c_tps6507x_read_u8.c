
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tps6507x_ts {TYPE_1__* mfd; } ;
struct TYPE_2__ {int (* read_dev ) (TYPE_1__*,int ,int,int *) ;} ;


 int stub1 (TYPE_1__*,int ,int,int *) ;

__attribute__((used)) static int tps6507x_read_u8(struct tps6507x_ts *tsc, u8 reg, u8 *data)
{
 return tsc->mfd->read_dev(tsc->mfd, reg, 1, data);
}
