#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct request_sock {int dummy; } ;
typedef  void* __be32 ;
struct TYPE_2__ {void* ir_rmt_addr; void* ir_loc_addr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct request_sock*) ; 

__attribute__((used)) static inline void FUNC1(struct request_sock *oreq,
				      __be32 local_ip, __be32 peer_ip)
{
	FUNC0(oreq)->ir_loc_addr = local_ip;
	FUNC0(oreq)->ir_rmt_addr = peer_ip;
}