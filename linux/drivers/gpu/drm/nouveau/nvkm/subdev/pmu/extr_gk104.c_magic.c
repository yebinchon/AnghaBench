
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_device {int dummy; } ;


 int magic_ (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
magic(struct nvkm_device *device, u32 ctrl)
{
 magic_(device, 0x8000a41f | ctrl, 6);
 magic_(device, 0x80000421 | ctrl, 1);
}
