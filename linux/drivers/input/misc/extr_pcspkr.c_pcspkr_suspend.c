
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EV_SND ;
 int SND_BELL ;
 int pcspkr_event (int *,int ,int ,int ) ;

__attribute__((used)) static int pcspkr_suspend(struct device *dev)
{
 pcspkr_event(((void*)0), EV_SND, SND_BELL, 0);

 return 0;
}
