
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd64_pvt {scalar_t__ ext_model; int dclr0; scalar_t__ dclr1; } ;


 scalar_t__ K8_REV_F ;
 int REVE_WIDTH_128 ;
 int WIDTH_128 ;

__attribute__((used)) static int k8_early_channel_count(struct amd64_pvt *pvt)
{
 int flag;

 if (pvt->ext_model >= K8_REV_F)

  flag = pvt->dclr0 & WIDTH_128;
 else

  flag = pvt->dclr0 & REVE_WIDTH_128;


 pvt->dclr1 = 0;

 return (flag) ? 2 : 1;
}
