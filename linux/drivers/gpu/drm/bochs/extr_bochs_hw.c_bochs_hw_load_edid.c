
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bochs_device {int * edid; int connector; int mmio; } ;


 int ARRAY_SIZE (int *) ;
 int bochs_get_edid_block (struct bochs_device*,int *,int ,int ) ;
 int * drm_do_get_edid (int *,int (*) (struct bochs_device*,int *,int ,int ),struct bochs_device*) ;
 int drm_edid_header_is_valid (int *) ;
 int kfree (int *) ;

int bochs_hw_load_edid(struct bochs_device *bochs)
{
 u8 header[8];

 if (!bochs->mmio)
  return -1;


 bochs_get_edid_block(bochs, header, 0, ARRAY_SIZE(header));
 if (drm_edid_header_is_valid(header) != 8)
  return -1;

 kfree(bochs->edid);
 bochs->edid = drm_do_get_edid(&bochs->connector,
          bochs_get_edid_block, bochs);
 if (bochs->edid == ((void*)0))
  return -1;

 return 0;
}
