
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sony_sc {int * mac_address; TYPE_1__* hdev; } ;
struct TYPE_2__ {int uniq; } ;


 int EINVAL ;
 int sscanf (int ,char*,int *,int *,int *,int *,int *,int *) ;
 int strlen (int ) ;

__attribute__((used)) static int sony_get_bt_devaddr(struct sony_sc *sc)
{
 int ret;


 ret = strlen(sc->hdev->uniq);
 if (ret != 17)
  return -EINVAL;

 ret = sscanf(sc->hdev->uniq,
  "%02hhx:%02hhx:%02hhx:%02hhx:%02hhx:%02hhx",
  &sc->mac_address[5], &sc->mac_address[4], &sc->mac_address[3],
  &sc->mac_address[2], &sc->mac_address[1], &sc->mac_address[0]);

 if (ret != 6)
  return -EINVAL;

 return 0;
}
