
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ipoctal_channel* driver_data; } ;
struct ipoctal_channel {int nb_bytes; } ;



__attribute__((used)) static int ipoctal_chars_in_buffer(struct tty_struct *tty)
{
 struct ipoctal_channel *channel = tty->driver_data;

 return channel->nb_bytes;
}
