
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int SDEI_1_0_FN_SDEI_EVENT_GET_INFO ;
 int invoke_sdei_fn (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int sdei_api_event_get_info(u32 event, u32 info, u64 *result)
{
 return invoke_sdei_fn(SDEI_1_0_FN_SDEI_EVENT_GET_INFO, event, info, 0,
         0, 0, result);
}
