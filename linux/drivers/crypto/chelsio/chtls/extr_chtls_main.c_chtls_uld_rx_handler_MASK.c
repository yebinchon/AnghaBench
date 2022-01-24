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
typedef  unsigned int u8 ;
struct sk_buff {int dummy; } ;
struct pkt_gl {int dummy; } ;
struct chtls_dev {int dummy; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 unsigned int CPL_RX_PKT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  RX_PULL_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct chtls_dev*,struct sk_buff**,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (struct chtls_dev*,struct pkt_gl const*,int /*<<< orphan*/  const*) ; 
 int FUNC2 (struct chtls_dev*,int /*<<< orphan*/  const*) ; 
 struct sk_buff* FUNC3 (struct pkt_gl const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(void *handle, const __be64 *rsp,
				const struct pkt_gl *gl)
{
	struct chtls_dev *cdev = handle;
	unsigned int opcode;
	struct sk_buff *skb;

	opcode = *(u8 *)rsp;

	if (FUNC4(opcode == CPL_RX_PKT)) {
		if (FUNC1(cdev, gl, rsp) < 0)
			goto nomem;
		return 0;
	}

	if (!gl)
		return FUNC2(cdev, rsp);

#define RX_PULL_LEN 128
	skb = FUNC3(gl, RX_PULL_LEN, RX_PULL_LEN);
	if (FUNC4(!skb))
		goto nomem;
	FUNC0(cdev, &skb, rsp);
	return 0;

nomem:
	return -ENOMEM;
}