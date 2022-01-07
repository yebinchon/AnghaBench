
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_wss {struct rvt_wss* entries; } ;
struct rvt_dev_info {struct rvt_wss* wss; } ;


 int kfree (struct rvt_wss*) ;

void rvt_wss_exit(struct rvt_dev_info *rdi)
{
 struct rvt_wss *wss = rdi->wss;

 if (!wss)
  return;


 kfree(wss->entries);
 wss->entries = ((void*)0);
 kfree(rdi->wss);
 rdi->wss = ((void*)0);
}
