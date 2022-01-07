
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct cytp_data* private; } ;
struct cytp_data {unsigned int pkt_size; } ;



__attribute__((used)) static void cypress_set_packet_size(struct psmouse *psmouse, unsigned int n)
{
 struct cytp_data *cytp = psmouse->private;
 cytp->pkt_size = n;
}
