
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umad_device {int kref; } ;


 int ib_umad_dev_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void ib_umad_dev_put(struct ib_umad_device *dev)
{
 kref_put(&dev->kref, ib_umad_dev_free);
}
