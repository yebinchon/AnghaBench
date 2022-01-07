
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_frontend {int dev; } ;


 int pm_runtime_put (int ) ;

void sun4i_frontend_exit(struct sun4i_frontend *frontend)
{
 pm_runtime_put(frontend->dev);
}
