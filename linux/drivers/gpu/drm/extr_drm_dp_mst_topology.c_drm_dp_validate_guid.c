
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct drm_dp_mst_topology_mgr {int dummy; } ;


 int get_jiffies_64 () ;
 scalar_t__ memchr_inv (int *,int ,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static bool drm_dp_validate_guid(struct drm_dp_mst_topology_mgr *mgr,
     u8 *guid)
{
 u64 salt;

 if (memchr_inv(guid, 0, 16))
  return 1;

 salt = get_jiffies_64();

 memcpy(&guid[0], &salt, sizeof(u64));
 memcpy(&guid[8], &salt, sizeof(u64));

 return 0;
}
