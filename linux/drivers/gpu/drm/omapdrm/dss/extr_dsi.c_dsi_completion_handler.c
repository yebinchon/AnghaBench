
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void dsi_completion_handler(void *data, u32 mask)
{
 complete((struct completion *)data);
}
