
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDEI_1_0_FN_SDEI_SHARED_RESET ;
 int invoke_sdei_fn (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int sdei_api_shared_reset(void)
{
 return invoke_sdei_fn(SDEI_1_0_FN_SDEI_SHARED_RESET, 0, 0, 0, 0, 0,
         ((void*)0));
}
