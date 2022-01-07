
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i7300_pvt {char* tmp_prt_buffer; struct i7300_dimm_info** dimm_info; } ;
struct i7300_dimm_info {int megabytes; } ;


 int MAX_CHANNELS ;
 int MAX_SLOTS ;
 int PAGE_SIZE ;
 int edac_dbg (int,char*,char*) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void print_dimm_size(struct i7300_pvt *pvt)
{
}
