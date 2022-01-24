#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct ipoib_header {scalar_t__ reserved; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 int IPOIB_HARD_LEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void const*) ; 
 struct ipoib_header* FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb,
			     struct net_device *dev,
			     unsigned short type,
			     const void *daddr,
			     const void *saddr,
			     unsigned int len)
{
	struct ipoib_header *header;

	header = FUNC2(skb, sizeof(*header));

	header->proto = FUNC0(type);
	header->reserved = 0;

	/*
	 * we don't rely on dst_entry structure,  always stuff the
	 * destination address into skb hard header so we can figure out where
	 * to send the packet later.
	 */
	FUNC1(skb, daddr);

	return IPOIB_HARD_LEN;
}