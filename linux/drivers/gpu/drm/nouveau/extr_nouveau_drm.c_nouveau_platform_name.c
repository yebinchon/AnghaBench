
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct platform_device {int id; } ;



__attribute__((used)) static u64
nouveau_platform_name(struct platform_device *platformdev)
{
 return platformdev->id;
}
