
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_encoder_atom_dig {int coherent_mode; int dig_encoder; int linkb; } ;
struct amdgpu_encoder {int encoder_enum; } ;


 int ENUM_ID_MASK ;
 int ENUM_ID_SHIFT ;
 int GFP_KERNEL ;
 struct amdgpu_encoder_atom_dig* kzalloc (int,int ) ;

struct amdgpu_encoder_atom_dig *
amdgpu_atombios_encoder_get_dig_info(struct amdgpu_encoder *amdgpu_encoder)
{
 int encoder_enum = (amdgpu_encoder->encoder_enum & ENUM_ID_MASK) >> ENUM_ID_SHIFT;
 struct amdgpu_encoder_atom_dig *dig = kzalloc(sizeof(struct amdgpu_encoder_atom_dig), GFP_KERNEL);

 if (!dig)
  return ((void*)0);


 dig->coherent_mode = 1;
 dig->dig_encoder = -1;

 if (encoder_enum == 2)
  dig->linkb = 1;
 else
  dig->linkb = 0;

 return dig;
}
