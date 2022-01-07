
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int SDEI_1_0_FN_SDEI_VERSION ;
 int invoke_sdei_fn (int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int sdei_api_get_version(u64 *version)
{
 return invoke_sdei_fn(SDEI_1_0_FN_SDEI_VERSION, 0, 0, 0, 0, 0, version);
}
