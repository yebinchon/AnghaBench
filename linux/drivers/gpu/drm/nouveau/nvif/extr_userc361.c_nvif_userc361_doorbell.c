
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvif_user {int object; } ;


 int nvif_wr32 (int *,int,int ) ;

__attribute__((used)) static void
nvif_userc361_doorbell(struct nvif_user *user, u32 token)
{
 nvif_wr32(&user->object, 0x90, token);
}
