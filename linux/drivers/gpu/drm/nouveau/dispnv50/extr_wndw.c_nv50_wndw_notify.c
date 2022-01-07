
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvif_notify {int dummy; } ;


 int NVIF_NOTIFY_KEEP ;

__attribute__((used)) static int
nv50_wndw_notify(struct nvif_notify *notify)
{
 return NVIF_NOTIFY_KEEP;
}
