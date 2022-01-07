
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct radeon_device {int dummy; } ;


 int VOLTAGE_TYPE_VDDC ;
 int radeon_atom_get_max_vddc (struct radeon_device*,int ,int ,int *) ;

int radeon_atom_get_leakage_vddc_based_on_leakage_idx(struct radeon_device *rdev,
            u16 *voltage,
            u16 leakage_idx)
{
 return radeon_atom_get_max_vddc(rdev, VOLTAGE_TYPE_VDDC, leakage_idx, voltage);
}
