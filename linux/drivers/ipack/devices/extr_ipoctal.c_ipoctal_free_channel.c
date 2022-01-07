
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoctal_channel {scalar_t__ nb_bytes; scalar_t__ pointer_write; scalar_t__ pointer_read; int stats; } ;


 int ipoctal_reset_stats (int *) ;

__attribute__((used)) static void ipoctal_free_channel(struct ipoctal_channel *channel)
{
 ipoctal_reset_stats(&channel->stats);
 channel->pointer_read = 0;
 channel->pointer_write = 0;
 channel->nb_bytes = 0;
}
