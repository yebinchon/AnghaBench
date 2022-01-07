
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int pm72_events ;
 int wf_register_client (int *) ;

__attribute__((used)) static int wf_pm72_probe(struct platform_device *dev)
{
 wf_register_client(&pm72_events);
 return 0;
}
