
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum transmitter { ____Placeholder_transmitter } transmitter ;


 int ATOM_PHY_ID_UNIPHYA ;
 int ATOM_PHY_ID_UNIPHYB ;
 int ATOM_PHY_ID_UNIPHYC ;
 int ATOM_PHY_ID_UNIPHYD ;
 int ATOM_PHY_ID_UNIPHYE ;
 int ATOM_PHY_ID_UNIPHYF ;
 int ATOM_PHY_ID_UNIPHYG ;
__attribute__((used)) static uint8_t phy_id_to_atom(enum transmitter t)
{
 uint8_t atom_phy_id;

 switch (t) {
 case 134:
  atom_phy_id = ATOM_PHY_ID_UNIPHYA;
  break;
 case 133:
  atom_phy_id = ATOM_PHY_ID_UNIPHYB;
  break;
 case 132:
  atom_phy_id = ATOM_PHY_ID_UNIPHYC;
  break;
 case 131:
  atom_phy_id = ATOM_PHY_ID_UNIPHYD;
  break;
 case 130:
  atom_phy_id = ATOM_PHY_ID_UNIPHYE;
  break;
 case 129:
  atom_phy_id = ATOM_PHY_ID_UNIPHYF;
  break;
 case 128:
  atom_phy_id = ATOM_PHY_ID_UNIPHYG;
  break;
 default:
  atom_phy_id = ATOM_PHY_ID_UNIPHYA;
  break;
 }
 return atom_phy_id;
}
