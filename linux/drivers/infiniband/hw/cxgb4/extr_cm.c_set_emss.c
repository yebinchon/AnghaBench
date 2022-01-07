
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct tcphdr {int dummy; } ;
struct ipv6hdr {int dummy; } ;
struct iphdr {int dummy; } ;
struct TYPE_9__ {scalar_t__ ss_family; } ;
struct TYPE_10__ {TYPE_4__ remote_addr; TYPE_3__* dev; } ;
struct c4iw_ep {int emss; int mss; TYPE_5__ com; } ;
struct TYPE_6__ {int* mtus; } ;
struct TYPE_7__ {TYPE_1__ lldi; } ;
struct TYPE_8__ {TYPE_2__ rdev; } ;


 scalar_t__ AF_INET ;
 int TCPOLEN_TIMESTAMP ;
 size_t TCPOPT_MSS_G (int ) ;
 scalar_t__ TCPOPT_TSTAMP_G (int ) ;
 int pr_debug (char*,size_t,int,int) ;
 scalar_t__ round_up (int ,int) ;

__attribute__((used)) static void set_emss(struct c4iw_ep *ep, u16 opt)
{
 ep->emss = ep->com.dev->rdev.lldi.mtus[TCPOPT_MSS_G(opt)] -
     ((AF_INET == ep->com.remote_addr.ss_family) ?
      sizeof(struct iphdr) : sizeof(struct ipv6hdr)) -
     sizeof(struct tcphdr);
 ep->mss = ep->emss;
 if (TCPOPT_TSTAMP_G(opt))
  ep->emss -= round_up(TCPOLEN_TIMESTAMP, 4);
 if (ep->emss < 128)
  ep->emss = 128;
 if (ep->emss & 7)
  pr_debug("Warning: misaligned mtu idx %u mss %u emss=%u\n",
    TCPOPT_MSS_G(opt), ep->mss, ep->emss);
 pr_debug("mss_idx %u mss %u emss=%u\n", TCPOPT_MSS_G(opt), ep->mss,
   ep->emss);
}
