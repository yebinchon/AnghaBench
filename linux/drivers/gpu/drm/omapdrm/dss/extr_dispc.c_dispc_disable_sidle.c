
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;


 int DISPC_SYSCONFIG ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;

void dispc_disable_sidle(struct dispc_device *dispc)
{
 REG_FLD_MOD(dispc, DISPC_SYSCONFIG, 1, 4, 3);
}
