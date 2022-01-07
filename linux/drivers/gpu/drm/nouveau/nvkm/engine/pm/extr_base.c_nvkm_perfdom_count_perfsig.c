
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct nvkm_perfdom {int signal_nr; TYPE_1__* signal; } ;
struct TYPE_2__ {scalar_t__ name; } ;



__attribute__((used)) static u16
nvkm_perfdom_count_perfsig(struct nvkm_perfdom *dom)
{
 u16 signal_nr = 0;
 int i;

 if (dom) {
  for (i = 0; i < dom->signal_nr; i++) {
   if (dom->signal[i].name)
    signal_nr++;
  }
 }
 return signal_nr;
}
