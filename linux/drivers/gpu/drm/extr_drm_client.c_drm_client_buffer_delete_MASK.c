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
struct drm_device {int dummy; } ;
struct drm_client_buffer {TYPE_1__* client; scalar_t__ handle; scalar_t__ gem; int /*<<< orphan*/  vaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; struct drm_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_client_buffer*) ; 

__attribute__((used)) static void FUNC4(struct drm_client_buffer *buffer)
{
	struct drm_device *dev = buffer->client->dev;

	FUNC1(buffer->gem, buffer->vaddr);

	if (buffer->gem)
		FUNC0(buffer->gem);

	if (buffer->handle)
		FUNC2(dev, buffer->handle, buffer->client->file);

	FUNC3(buffer);
}