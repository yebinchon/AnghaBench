
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder_atom_dig {int coherent_mode; int dig_encoder; int linkb; } ;
struct radeon_encoder {int encoder_enum; } ;


 int ENUM_ID_MASK ;
 int ENUM_ID_SHIFT ;
 int GFP_KERNEL ;
 struct radeon_encoder_atom_dig* kzalloc (int,int ) ;

__attribute__((used)) static struct radeon_encoder_atom_dig *
radeon_atombios_set_dig_info(struct radeon_encoder *radeon_encoder)
{
 int encoder_enum = (radeon_encoder->encoder_enum & ENUM_ID_MASK) >> ENUM_ID_SHIFT;
 struct radeon_encoder_atom_dig *dig = kzalloc(sizeof(struct radeon_encoder_atom_dig), GFP_KERNEL);

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
