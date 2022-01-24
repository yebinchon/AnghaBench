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
typedef  scalar_t__ __be64 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline int FUNC2(__be64 local_ca_guid, __be64 remote_ca_guid,
				    __be32 local_qpn, __be32 remote_qpn)
{
	return (FUNC1(local_ca_guid) > FUNC1(remote_ca_guid) ||
		((local_ca_guid == remote_ca_guid) &&
		 (FUNC0(local_qpn) > FUNC0(remote_qpn))));
}