
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int packet; int pktsize; } ;


 int KERN_DEBUG ;
 int psmouse_printk (int ,struct psmouse*,char*,int ,int ) ;

__attribute__((used)) static void elantech_packet_dump(struct psmouse *psmouse)
{
 psmouse_printk(KERN_DEBUG, psmouse, "PS/2 packet [%*ph]\n",
         psmouse->pktsize, psmouse->packet);
}
