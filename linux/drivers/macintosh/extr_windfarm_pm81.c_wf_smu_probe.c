
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int wf_register_client (int *) ;
 int wf_smu_events ;

__attribute__((used)) static int wf_smu_probe(struct platform_device *ddev)
{
 wf_register_client(&wf_smu_events);

 return 0;
}
