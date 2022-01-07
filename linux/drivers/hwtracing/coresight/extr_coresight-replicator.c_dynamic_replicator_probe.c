
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amba_id {int dummy; } ;
struct amba_device {int res; int dev; } ;


 int replicator_probe (int *,int *) ;

__attribute__((used)) static int dynamic_replicator_probe(struct amba_device *adev,
        const struct amba_id *id)
{
 return replicator_probe(&adev->dev, &adev->res);
}
