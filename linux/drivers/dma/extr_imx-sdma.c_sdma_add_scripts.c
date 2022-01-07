
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sdma_script_start_addrs {int dummy; } ;
struct sdma_engine {int script_number; int dev; scalar_t__ script_addrs; } ;
typedef scalar_t__ s32 ;


 int SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1 ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static void sdma_add_scripts(struct sdma_engine *sdma,
  const struct sdma_script_start_addrs *addr)
{
 s32 *addr_arr = (u32 *)addr;
 s32 *saddr_arr = (u32 *)sdma->script_addrs;
 int i;


 if (!sdma->script_number)
  sdma->script_number = SDMA_SCRIPT_ADDRS_ARRAY_SIZE_V1;

 if (sdma->script_number > sizeof(struct sdma_script_start_addrs)
      / sizeof(s32)) {
  dev_err(sdma->dev,
   "SDMA script number %d not match with firmware.\n",
   sdma->script_number);
  return;
 }

 for (i = 0; i < sdma->script_number; i++)
  if (addr_arr[i] > 0)
   saddr_arr[i] = addr_arr[i];
}
