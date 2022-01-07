
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adf_accel_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {int number; } ;


 TYPE_2__* accel_to_pci_dev (struct adf_accel_dev*) ;
 int adf_get_vf_id (struct adf_accel_dev*) ;

__attribute__((used)) static int adf_get_vf_num(struct adf_accel_dev *vf)
{
 return (accel_to_pci_dev(vf)->bus->number << 8) | adf_get_vf_id(vf);
}
