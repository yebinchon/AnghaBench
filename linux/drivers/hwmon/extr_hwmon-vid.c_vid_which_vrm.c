
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int pr_info (char*) ;

u8 vid_which_vrm(void)
{
 pr_info("Unknown VRM version of your CPU\n");
 return 0;
}
