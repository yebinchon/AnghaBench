
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int SDEI_1_0_FN_SDEI_EVENT_REGISTER ;
 int invoke_sdei_fn (int ,int ,unsigned long,unsigned long,int ,int ,int *) ;

__attribute__((used)) static int sdei_api_event_register(u32 event_num, unsigned long entry_point,
       void *arg, u64 flags, u64 affinity)
{
 return invoke_sdei_fn(SDEI_1_0_FN_SDEI_EVENT_REGISTER, event_num,
         (unsigned long)entry_point, (unsigned long)arg,
         flags, affinity, ((void*)0));
}
