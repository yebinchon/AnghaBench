
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned int c_cflag; } ;
struct tty_struct {TYPE_3__ termios; struct ipoctal_channel* driver_data; } ;
struct ktermios {int dummy; } ;
struct ipoctal_channel {int board_id; TYPE_2__* regs; scalar_t__ rx_enable; } ;
typedef int speed_t ;
struct TYPE_4__ {int cr; int csr; int mr; } ;
struct TYPE_5__ {TYPE_1__ w; } ;


 unsigned int CMSPAR ;
 unsigned int CRTSCTS ;
 unsigned char CR_ENABLE_RX ;



 unsigned int CSIZE ;
 unsigned int CSTOPB ;



 unsigned char MR1_CHRL_6_BITS ;
 unsigned char MR1_CHRL_7_BITS ;
 unsigned char MR1_CHRL_8_BITS ;
 unsigned char MR1_ERROR_CHAR ;
 unsigned char MR1_PARITY_EVEN ;
 unsigned char MR1_PARITY_ODD ;
 unsigned char MR1_PARITY_OFF ;
 unsigned char MR1_PARITY_ON ;
 unsigned char MR1_RxINT_RxRDY ;
 unsigned char MR1_RxRTS_CONTROL_OFF ;
 unsigned char MR1_RxRTS_CONTROL_ON ;
 unsigned char MR2_CTS_ENABLE_TX_OFF ;
 unsigned char MR2_CTS_ENABLE_TX_ON ;
 unsigned char MR2_STOP_BITS_LENGTH_1 ;
 unsigned char MR2_STOP_BITS_LENGTH_2 ;
 unsigned char MR2_TxRTS_CONTROL_OFF ;
 unsigned char MR2_TxRTS_CONTROL_ON ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 unsigned char RX_CLK_110 ;
 unsigned char RX_CLK_1200 ;
 unsigned char RX_CLK_150 ;
 unsigned char RX_CLK_1800 ;
 unsigned char RX_CLK_19200 ;
 unsigned char RX_CLK_2000 ;
 unsigned char RX_CLK_2400 ;
 unsigned char RX_CLK_300 ;
 unsigned char RX_CLK_38400 ;
 unsigned char RX_CLK_4800 ;
 unsigned char RX_CLK_600 ;
 unsigned char RX_CLK_75 ;
 unsigned char RX_CLK_9600 ;
 unsigned char TX_CLK_110 ;
 unsigned char TX_CLK_1200 ;
 unsigned char TX_CLK_150 ;
 unsigned char TX_CLK_1800 ;
 unsigned char TX_CLK_19200 ;
 unsigned char TX_CLK_2000 ;
 unsigned char TX_CLK_2400 ;
 unsigned char TX_CLK_300 ;
 unsigned char TX_CLK_38400 ;
 unsigned char TX_CLK_4800 ;
 unsigned char TX_CLK_600 ;
 unsigned char TX_CLK_75 ;
 unsigned char TX_CLK_9600 ;
 int iowrite8 (unsigned char,int *) ;
 int ipoctal_reset_channel (struct ipoctal_channel*) ;
 int tty_get_baud_rate (struct tty_struct*) ;
 int tty_termios_encode_baud_rate (TYPE_3__*,int,int) ;

__attribute__((used)) static void ipoctal_set_termios(struct tty_struct *tty,
    struct ktermios *old_termios)
{
 unsigned int cflag;
 unsigned char mr1 = 0;
 unsigned char mr2 = 0;
 unsigned char csr = 0;
 struct ipoctal_channel *channel = tty->driver_data;
 speed_t baud;

 cflag = tty->termios.c_cflag;


 ipoctal_reset_channel(channel);


 switch (cflag & CSIZE) {
 case 133:
  mr1 |= MR1_CHRL_6_BITS;
  break;
 case 132:
  mr1 |= MR1_CHRL_7_BITS;
  break;
 case 131:
 default:
  mr1 |= MR1_CHRL_8_BITS;

  tty->termios.c_cflag = (cflag & ~CSIZE) | 131;
  break;
 }


 if (cflag & PARENB)
  if (cflag & PARODD)
   mr1 |= MR1_PARITY_ON | MR1_PARITY_ODD;
  else
   mr1 |= MR1_PARITY_ON | MR1_PARITY_EVEN;
 else
  mr1 |= MR1_PARITY_OFF;


 tty->termios.c_cflag &= ~CMSPAR;


 if (cflag & CSTOPB)
  mr2 |= MR2_STOP_BITS_LENGTH_2;
 else
  mr2 |= MR2_STOP_BITS_LENGTH_1;


 switch (channel->board_id) {
 case 130:
  if (cflag & CRTSCTS) {
   mr1 |= MR1_RxRTS_CONTROL_ON;
   mr2 |= MR2_TxRTS_CONTROL_OFF | MR2_CTS_ENABLE_TX_ON;
  } else {
   mr1 |= MR1_RxRTS_CONTROL_OFF;
   mr2 |= MR2_TxRTS_CONTROL_OFF | MR2_CTS_ENABLE_TX_OFF;
  }
  break;
 case 129:
  mr1 |= MR1_RxRTS_CONTROL_OFF;
  mr2 |= MR2_TxRTS_CONTROL_OFF | MR2_CTS_ENABLE_TX_OFF;
  break;
 case 128:
  mr1 |= MR1_RxRTS_CONTROL_OFF;
  mr2 |= MR2_TxRTS_CONTROL_ON | MR2_CTS_ENABLE_TX_OFF;
  break;
 default:
  return;
  break;
 }

 baud = tty_get_baud_rate(tty);
 tty_termios_encode_baud_rate(&tty->termios, baud, baud);


 switch (baud) {
 case 75:
  csr |= TX_CLK_75 | RX_CLK_75;
  break;
 case 110:
  csr |= TX_CLK_110 | RX_CLK_110;
  break;
 case 150:
  csr |= TX_CLK_150 | RX_CLK_150;
  break;
 case 300:
  csr |= TX_CLK_300 | RX_CLK_300;
  break;
 case 600:
  csr |= TX_CLK_600 | RX_CLK_600;
  break;
 case 1200:
  csr |= TX_CLK_1200 | RX_CLK_1200;
  break;
 case 1800:
  csr |= TX_CLK_1800 | RX_CLK_1800;
  break;
 case 2000:
  csr |= TX_CLK_2000 | RX_CLK_2000;
  break;
 case 2400:
  csr |= TX_CLK_2400 | RX_CLK_2400;
  break;
 case 4800:
  csr |= TX_CLK_4800 | RX_CLK_4800;
  break;
 case 9600:
  csr |= TX_CLK_9600 | RX_CLK_9600;
  break;
 case 19200:
  csr |= TX_CLK_19200 | RX_CLK_19200;
  break;
 case 38400:
 default:
  csr |= TX_CLK_38400 | RX_CLK_38400;

  tty_termios_encode_baud_rate(&tty->termios, 38400, 38400);
  break;
 }

 mr1 |= MR1_ERROR_CHAR;
 mr1 |= MR1_RxINT_RxRDY;


 iowrite8(mr1, &channel->regs->w.mr);
 iowrite8(mr2, &channel->regs->w.mr);
 iowrite8(csr, &channel->regs->w.csr);


 if (channel->rx_enable)
  iowrite8(CR_ENABLE_RX, &channel->regs->w.cr);
}
