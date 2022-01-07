
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_device {int type; } ;
 int mga_g200eh_set_plls (struct mga_device*,long) ;
 int mga_g200er_set_plls (struct mga_device*,long) ;
 int mga_g200ev_set_plls (struct mga_device*,long) ;
 int mga_g200se_set_plls (struct mga_device*,long) ;
 int mga_g200wb_set_plls (struct mga_device*,long) ;

__attribute__((used)) static int mga_crtc_set_plls(struct mga_device *mdev, long clock)
{
 switch(mdev->type) {
 case 130:
 case 129:
  return mga_g200se_set_plls(mdev, clock);
  break;
 case 128:
 case 131:
  return mga_g200wb_set_plls(mdev, clock);
  break;
 case 132:
  return mga_g200ev_set_plls(mdev, clock);
  break;
 case 135:
 case 134:
  return mga_g200eh_set_plls(mdev, clock);
  break;
 case 133:
  return mga_g200er_set_plls(mdev, clock);
  break;
 }
 return 0;
}
