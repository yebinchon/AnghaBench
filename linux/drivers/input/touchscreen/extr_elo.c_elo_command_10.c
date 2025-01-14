
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elo {scalar_t__ expected_packet; int cmd_mutex; int response; int cmd_done; int serio; } ;


 int ELO10_LEAD_BYTE ;
 int ELO10_PACKET_LEN ;
 scalar_t__ ELO10_TOUCH_PACKET ;
 int HZ ;
 int init_completion (int *) ;
 int memcpy (unsigned char*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int serio_continue_rx (int ) ;
 int serio_pause_rx (int ) ;
 scalar_t__ serio_write (int ,unsigned char) ;
 scalar_t__ toupper (unsigned char) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int elo_command_10(struct elo *elo, unsigned char *packet)
{
 int rc = -1;
 int i;
 unsigned char csum = 0xaa + ELO10_LEAD_BYTE;

 mutex_lock(&elo->cmd_mutex);

 serio_pause_rx(elo->serio);
 elo->expected_packet = toupper(packet[0]);
 init_completion(&elo->cmd_done);
 serio_continue_rx(elo->serio);

 if (serio_write(elo->serio, ELO10_LEAD_BYTE))
  goto out;

 for (i = 0; i < ELO10_PACKET_LEN; i++) {
  csum += packet[i];
  if (serio_write(elo->serio, packet[i]))
   goto out;
 }

 if (serio_write(elo->serio, csum))
  goto out;

 wait_for_completion_timeout(&elo->cmd_done, HZ);

 if (elo->expected_packet == ELO10_TOUCH_PACKET) {

  memcpy(packet, elo->response, ELO10_PACKET_LEN);
  rc = 0;
 }

 out:
 mutex_unlock(&elo->cmd_mutex);
 return rc;
}
