
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int SDEI_1_0_FN_SDEI_EVENT_CONTEXT ;
 int invoke_sdei_fn (int ,int ,int ,int ,int ,int ,int *) ;

int sdei_api_event_context(u32 query, u64 *result)
{
 return invoke_sdei_fn(SDEI_1_0_FN_SDEI_EVENT_CONTEXT, query, 0, 0, 0, 0,
         result);
}
