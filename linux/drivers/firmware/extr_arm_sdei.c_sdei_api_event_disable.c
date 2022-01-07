
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SDEI_1_0_FN_SDEI_EVENT_DISABLE ;
 int invoke_sdei_fn (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int sdei_api_event_disable(u32 event_num)
{
 return invoke_sdei_fn(SDEI_1_0_FN_SDEI_EVENT_DISABLE, event_num, 0, 0,
         0, 0, ((void*)0));
}
