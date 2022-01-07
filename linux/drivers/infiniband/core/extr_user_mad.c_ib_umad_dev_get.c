
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_umad_device {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void ib_umad_dev_get(struct ib_umad_device *dev)
{
 kref_get(&dev->kref);
}
