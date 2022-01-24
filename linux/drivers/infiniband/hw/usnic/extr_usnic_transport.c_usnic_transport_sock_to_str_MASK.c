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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct socket {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct socket*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(char *buf, int buf_sz,
					struct socket *sock)
{
	int err;
	uint32_t addr;
	uint16_t port;
	int proto;

	FUNC0(buf, 0, buf_sz);
	err = FUNC2(sock, &proto, &addr, &port);
	if (err)
		return 0;

	return FUNC1(buf, buf_sz, "Proto:%u Addr:%pI4h Port:%hu",
			proto, &addr, port);
}