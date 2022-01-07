
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum hpd_source_id { ____Placeholder_hpd_source_id } hpd_source_id ;


 int ATOM_TRANSMITTER_V6_HPD1_SEL ;
 int ATOM_TRANSMITTER_V6_HPD2_SEL ;
 int ATOM_TRANSMITTER_V6_HPD3_SEL ;
 int ATOM_TRANSMITTER_V6_HPD4_SEL ;
 int ATOM_TRANSMITTER_V6_HPD5_SEL ;
 int ATOM_TRANSMITTER_V6_HPD6_SEL ;
__attribute__((used)) static uint8_t hpd_sel_to_atom(enum hpd_source_id id)
{
 uint8_t atom_hpd_sel = 0;

 switch (id) {
 case 134:
  atom_hpd_sel = ATOM_TRANSMITTER_V6_HPD1_SEL;
  break;
 case 133:
  atom_hpd_sel = ATOM_TRANSMITTER_V6_HPD2_SEL;
  break;
 case 132:
  atom_hpd_sel = ATOM_TRANSMITTER_V6_HPD3_SEL;
  break;
 case 131:
  atom_hpd_sel = ATOM_TRANSMITTER_V6_HPD4_SEL;
  break;
 case 130:
  atom_hpd_sel = ATOM_TRANSMITTER_V6_HPD5_SEL;
  break;
 case 129:
  atom_hpd_sel = ATOM_TRANSMITTER_V6_HPD6_SEL;
  break;
 case 128:
 default:
  atom_hpd_sel = 0;
  break;
 }
 return atom_hpd_sel;
}
