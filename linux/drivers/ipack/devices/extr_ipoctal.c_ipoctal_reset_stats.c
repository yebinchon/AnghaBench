
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipoctal_stats {scalar_t__ parity_err; scalar_t__ overrun_err; scalar_t__ framing_err; scalar_t__ rcv_break; scalar_t__ rx; scalar_t__ tx; } ;



__attribute__((used)) static void ipoctal_reset_stats(struct ipoctal_stats *stats)
{
 stats->tx = 0;
 stats->rx = 0;
 stats->rcv_break = 0;
 stats->framing_err = 0;
 stats->overrun_err = 0;
 stats->parity_err = 0;
}
