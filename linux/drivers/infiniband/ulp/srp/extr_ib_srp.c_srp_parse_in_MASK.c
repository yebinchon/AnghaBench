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
struct sockaddr_storage {int dummy; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct net*,int /*<<< orphan*/ ,char*,char*,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,struct sockaddr_storage*) ; 
 scalar_t__ FUNC4 (char*,char) ; 
 int FUNC5 (char*) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static int FUNC7(struct net *net, struct sockaddr_storage *sa,
			const char *addr_port_str, bool *has_port)
{
	char *addr_end, *addr = FUNC2(addr_port_str, GFP_KERNEL);
	char *port_str;
	int ret;

	if (!addr)
		return -ENOMEM;
	port_str = FUNC6(addr, ':');
	if (port_str && FUNC4(port_str, ']'))
		port_str = NULL;
	if (port_str)
		*port_str++ = '\0';
	if (has_port)
		*has_port = port_str != NULL;
	ret = FUNC0(net, AF_INET, addr, port_str, sa);
	if (ret && addr[0]) {
		addr_end = addr + FUNC5(addr) - 1;
		if (addr[0] == '[' && *addr_end == ']') {
			*addr_end = '\0';
			ret = FUNC0(net, AF_INET6, addr + 1,
						   port_str, sa);
		}
	}
	FUNC1(addr);
	FUNC3("%s -> %pISpfsc\n", addr_port_str, sa);
	return ret;
}