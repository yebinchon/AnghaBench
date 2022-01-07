
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iowait {scalar_t__ starved_cnt; } ;



__attribute__((used)) static inline void iowait_starve_clear(bool pkts_sent, struct iowait *w)
{
 if (pkts_sent)
  w->starved_cnt = 0;
}
