
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dispc_device {int dummy; } ;


 int DISPC_CONTROL2 ;
 int REG_GET (struct dispc_device*,int ,int,int) ;

__attribute__((used)) static bool dispc_wb_go_busy(struct dispc_device *dispc)
{
 return REG_GET(dispc, DISPC_CONTROL2, 6, 6) == 1;
}
