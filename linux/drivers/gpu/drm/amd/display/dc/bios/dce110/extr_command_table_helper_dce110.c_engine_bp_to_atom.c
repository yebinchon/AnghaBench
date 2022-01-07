
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;


 int ASIC_INT_DAC1_ENCODER_ID ;
 int ASIC_INT_DIG1_ENCODER_ID ;
 int ASIC_INT_DIG2_ENCODER_ID ;
 int ASIC_INT_DIG3_ENCODER_ID ;
 int ASIC_INT_DIG4_ENCODER_ID ;
 int ASIC_INT_DIG5_ENCODER_ID ;
 int ASIC_INT_DIG6_ENCODER_ID ;
 int ASIC_INT_DIG7_ENCODER_ID ;
__attribute__((used)) static bool engine_bp_to_atom(enum engine_id id, uint32_t *atom_engine_id)
{
 bool result = 0;

 if (atom_engine_id != ((void*)0))
  switch (id) {
  case 134:
   *atom_engine_id = ASIC_INT_DIG1_ENCODER_ID;
   result = 1;
   break;
  case 133:
   *atom_engine_id = ASIC_INT_DIG2_ENCODER_ID;
   result = 1;
   break;
  case 132:
   *atom_engine_id = ASIC_INT_DIG3_ENCODER_ID;
   result = 1;
   break;
  case 131:
   *atom_engine_id = ASIC_INT_DIG4_ENCODER_ID;
   result = 1;
   break;
  case 130:
   *atom_engine_id = ASIC_INT_DIG5_ENCODER_ID;
   result = 1;
   break;
  case 129:
   *atom_engine_id = ASIC_INT_DIG6_ENCODER_ID;
   result = 1;
   break;
  case 128:
   *atom_engine_id = ASIC_INT_DIG7_ENCODER_ID;
   result = 1;
   break;
  case 135:
   *atom_engine_id = ASIC_INT_DAC1_ENCODER_ID;
   result = 1;
   break;
  default:
   break;
  }

 return result;
}
