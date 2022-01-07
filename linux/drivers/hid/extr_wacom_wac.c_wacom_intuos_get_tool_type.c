
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTN_TOOL_AIRBRUSH ;
 int BTN_TOOL_BRUSH ;
 int BTN_TOOL_LENS ;
 int BTN_TOOL_MOUSE ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_PENCIL ;
 int BTN_TOOL_RUBBER ;

__attribute__((used)) static int wacom_intuos_get_tool_type(int tool_id)
{
 int tool_type;

 switch (tool_id) {
 case 0x812:
 case 0x801:
 case 0x12802:
 case 0x012:
  tool_type = BTN_TOOL_PENCIL;
  break;

 case 0x822:
 case 0x842:
 case 0x852:
 case 0x823:
 case 0x813:
 case 0x885:
 case 0x802:
 case 0x804:
 case 0x8e2:
 case 0x022:
 case 0x10804:
 case 0x10842:
 case 0x14802:
 case 0x16802:
 case 0x18802:
 case 0x10802:
  tool_type = BTN_TOOL_PEN;
  break;

 case 0x832:
 case 0x032:
  tool_type = BTN_TOOL_BRUSH;
  break;

 case 0x007:
 case 0x09c:
 case 0x094:
 case 0x017:
 case 0x806:
  tool_type = BTN_TOOL_MOUSE;
  break;

 case 0x096:
 case 0x097:
 case 0x006:
  tool_type = BTN_TOOL_LENS;
  break;

 case 0x82a:
 case 0x84a:
 case 0x85a:
 case 0x91a:
 case 0xd1a:
 case 0x0fa:
 case 0x82b:
 case 0x81b:
 case 0x91b:
 case 0x80c:
 case 0x80a:
 case 0x90a:
 case 0x1480a:
 case 0x1090a:
 case 0x1080c:
 case 0x1084a:
 case 0x1680a:
 case 0x1880a:
 case 0x1080a:
  tool_type = BTN_TOOL_RUBBER;
  break;

 case 0xd12:
 case 0x912:
 case 0x112:
 case 0x913:
 case 0x902:
 case 0x10902:
  tool_type = BTN_TOOL_AIRBRUSH;
  break;

 default:
  tool_type = BTN_TOOL_PEN;
  break;
 }
 return tool_type;
}
