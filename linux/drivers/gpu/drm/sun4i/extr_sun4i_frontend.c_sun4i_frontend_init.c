
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_frontend {int dev; } ;


 int pm_runtime_get_sync (int ) ;

int sun4i_frontend_init(struct sun4i_frontend *frontend)
{
 return pm_runtime_get_sync(frontend->dev);
}
