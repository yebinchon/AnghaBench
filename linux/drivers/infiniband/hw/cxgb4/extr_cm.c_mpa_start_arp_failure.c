
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int pr_err (char*) ;

__attribute__((used)) static void mpa_start_arp_failure(void *handle, struct sk_buff *skb)
{
 pr_err("ARP failure during MPA Negotiation - Closing Connection\n");
}
