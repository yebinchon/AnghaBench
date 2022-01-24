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
struct socket {int dummy; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/ * msg_name; } ;
struct kvec {char* member_0; size_t member_1; } ;

/* Variables and functions */
 int FUNC0 (struct socket*,struct msghdr*,struct kvec*,int,size_t,int) ; 

__attribute__((used)) static inline int FUNC1(struct socket *sock, char *buf, size_t size,
			     int flags)
{
	struct kvec iov = { buf, size };
	struct msghdr msg = { .msg_name = NULL, .msg_flags = flags };

	return FUNC0(sock, &msg, &iov, 1, size, flags);
}