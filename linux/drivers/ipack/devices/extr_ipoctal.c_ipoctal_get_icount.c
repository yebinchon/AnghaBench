
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct ipoctal_channel* driver_data; } ;
struct serial_icounter_struct {int brk; int parity; int frame; int tx; int rx; scalar_t__ dcd; scalar_t__ rng; scalar_t__ dsr; scalar_t__ cts; } ;
struct TYPE_2__ {int rcv_break; int parity_err; int framing_err; int tx; int rx; } ;
struct ipoctal_channel {TYPE_1__ stats; } ;



__attribute__((used)) static int ipoctal_get_icount(struct tty_struct *tty,
         struct serial_icounter_struct *icount)
{
 struct ipoctal_channel *channel = tty->driver_data;

 icount->cts = 0;
 icount->dsr = 0;
 icount->rng = 0;
 icount->dcd = 0;
 icount->rx = channel->stats.rx;
 icount->tx = channel->stats.tx;
 icount->frame = channel->stats.framing_err;
 icount->parity = channel->stats.parity_err;
 icount->brk = channel->stats.rcv_break;
 return 0;
}
