
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsc200x {int dev; int (* tsc200x_cmd ) (int ,int ) ;} ;


 int TSC200X_CMD_STOP ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void tsc200x_stop_scan(struct tsc200x *ts)
{
 ts->tsc200x_cmd(ts->dev, TSC200X_CMD_STOP);
}
