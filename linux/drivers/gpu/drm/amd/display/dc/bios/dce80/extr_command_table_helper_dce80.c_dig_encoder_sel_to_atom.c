
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum engine_id { ____Placeholder_engine_id } engine_id ;


 int ATOM_TRANMSITTER_V5__DIGA_SEL ;
 int ATOM_TRANMSITTER_V5__DIGB_SEL ;
 int ATOM_TRANMSITTER_V5__DIGC_SEL ;
 int ATOM_TRANMSITTER_V5__DIGD_SEL ;
 int ATOM_TRANMSITTER_V5__DIGE_SEL ;
 int ATOM_TRANMSITTER_V5__DIGF_SEL ;
 int ATOM_TRANMSITTER_V5__DIGG_SEL ;
__attribute__((used)) static uint8_t dig_encoder_sel_to_atom(enum engine_id id)
{
 uint8_t atom_dig_encoder_sel = 0;

 switch (id) {
 case 134:
  atom_dig_encoder_sel = ATOM_TRANMSITTER_V5__DIGA_SEL;
  break;
 case 133:
  atom_dig_encoder_sel = ATOM_TRANMSITTER_V5__DIGB_SEL;
  break;
 case 132:
  atom_dig_encoder_sel = ATOM_TRANMSITTER_V5__DIGC_SEL;
  break;
 case 131:
  atom_dig_encoder_sel = ATOM_TRANMSITTER_V5__DIGD_SEL;
  break;
 case 130:
  atom_dig_encoder_sel = ATOM_TRANMSITTER_V5__DIGE_SEL;
  break;
 case 129:
  atom_dig_encoder_sel = ATOM_TRANMSITTER_V5__DIGF_SEL;
  break;
 case 128:
  atom_dig_encoder_sel = ATOM_TRANMSITTER_V5__DIGG_SEL;
  break;
 default:
  atom_dig_encoder_sel = ATOM_TRANMSITTER_V5__DIGA_SEL;
  break;
 }

 return atom_dig_encoder_sel;
}
