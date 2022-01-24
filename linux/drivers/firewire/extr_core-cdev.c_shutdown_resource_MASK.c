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
struct client_resource {int /*<<< orphan*/  (* release ) (struct client*,struct client_resource*) ;} ;
struct client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct client*) ; 
 int /*<<< orphan*/  FUNC1 (struct client*,struct client_resource*) ; 

__attribute__((used)) static int FUNC2(int id, void *p, void *data)
{
	struct client_resource *resource = p;
	struct client *client = data;

	resource->release(client, resource);
	FUNC0(client);

	return 0;
}