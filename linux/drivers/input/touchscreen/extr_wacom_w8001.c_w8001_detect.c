
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001 {int dummy; } ;


 int W8001_CMD_STOP ;
 int msleep (int) ;
 int w8001_command (struct w8001*,int ,int) ;

__attribute__((used)) static int w8001_detect(struct w8001 *w8001)
{
 int error;

 error = w8001_command(w8001, W8001_CMD_STOP, 0);
 if (error)
  return error;

 msleep(250);

 return 0;
}
