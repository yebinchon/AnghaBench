
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int fsp_onpad_hscr (struct psmouse*,int) ;
 int fsp_onpad_vscr (struct psmouse*,int) ;
 int fsp_opc_tag_enable (struct psmouse*,int) ;

__attribute__((used)) static void fsp_reset(struct psmouse *psmouse)
{
 fsp_opc_tag_enable(psmouse, 0);
 fsp_onpad_vscr(psmouse, 0);
 fsp_onpad_hscr(psmouse, 0);
}
