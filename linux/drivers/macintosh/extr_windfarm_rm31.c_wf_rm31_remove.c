
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int rm31_events ;
 int wf_unregister_client (int *) ;

__attribute__((used)) static int wf_rm31_remove(struct platform_device *dev)
{
 wf_unregister_client(&rm31_events);


 return 0;
}
