
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;
struct iforce {int dummy; } ;


 int FF_CMD_PLAY ;
 unsigned char LO (unsigned int) ;
 int iforce_send_packet (struct iforce*,int ,unsigned char*) ;

int iforce_control_playback(struct iforce* iforce, u16 id, unsigned int value)
{
 unsigned char data[3];

 data[0] = LO(id);
 data[1] = (value > 0) ? ((value > 1) ? 0x41 : 0x01) : 0;
 data[2] = LO(value);
 return iforce_send_packet(iforce, FF_CMD_PLAY, data);
}
