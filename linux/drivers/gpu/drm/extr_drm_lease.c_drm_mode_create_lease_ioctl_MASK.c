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
struct file {int /*<<< orphan*/  lessee_id; struct drm_file* private_data; scalar_t__ lessor; } ;
typedef  struct file uint32_t ;
struct idr {int dummy; } ;
struct drm_mode_create_lease {size_t object_count; int flags; int fd; int /*<<< orphan*/  lessee_id; int /*<<< orphan*/  object_ids; } ;
struct drm_master {int /*<<< orphan*/  lessee_id; struct drm_file* private_data; scalar_t__ lessor; } ;
struct drm_file {int is_master; int authenticated; struct file* master; struct file* filp; } ;
struct drm_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_MODESET ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC1 (struct file*) ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct file* FUNC5 (struct file*,struct idr*) ; 
 int /*<<< orphan*/  FUNC6 (struct file**) ; 
 int /*<<< orphan*/  FUNC7 (int,struct file*) ; 
 struct file* FUNC8 (struct file*) ; 
 int FUNC9 (struct drm_device*,struct drm_file*,struct idr*,size_t,struct file*) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct idr*) ; 
 int /*<<< orphan*/  FUNC12 (struct idr*) ; 
 int /*<<< orphan*/  FUNC13 (struct file*) ; 
 struct file* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17(struct drm_device *dev,
				void *data, struct drm_file *lessor_priv)
{
	struct drm_mode_create_lease *cl = data;
	size_t object_count;
	int ret = 0;
	struct idr leases;
	struct drm_master *lessor = lessor_priv->master;
	struct drm_master *lessee = NULL;
	struct file *lessee_file = NULL;
	struct file *lessor_file = lessor_priv->filp;
	struct drm_file *lessee_priv;
	int fd = -1;
	uint32_t *object_ids;

	/* Can't lease without MODESET */
	if (!FUNC4(dev, DRIVER_MODESET))
		return -EOPNOTSUPP;

	/* Do not allow sub-leases */
	if (lessor->lessor) {
		FUNC0("recursive leasing not allowed\n");
		return -EINVAL;
	}

	/* need some objects */
	if (cl->object_count == 0) {
		FUNC0("no objects in lease\n");
		return -EINVAL;
	}

	if (cl->flags && (cl->flags & ~(O_CLOEXEC | O_NONBLOCK))) {
		FUNC0("invalid flags\n");
		return -EINVAL;
	}

	object_count = cl->object_count;

	object_ids = FUNC14(FUNC16(cl->object_ids),
			FUNC3(object_count, sizeof(__u32)));
	if (FUNC1(object_ids))
		return FUNC2(object_ids);

	FUNC12(&leases);

	/* fill and validate the object idr */
	ret = FUNC9(dev, lessor_priv, &leases,
			      object_count, object_ids);
	FUNC13(object_ids);
	if (ret) {
		FUNC0("lease object lookup failed: %i\n", ret);
		FUNC11(&leases);
		return ret;
	}

	/* Allocate a file descriptor for the lease */
	fd = FUNC10(cl->flags & (O_CLOEXEC | O_NONBLOCK));
	if (fd < 0) {
		FUNC11(&leases);
		return fd;
	}

	FUNC0("Creating lease\n");
	lessee = FUNC5(lessor, &leases);

	if (FUNC1(lessee)) {
		ret = FUNC2(lessee);
		goto out_leases;
	}

	/* Clone the lessor file to create a new file for us */
	FUNC0("Allocating lease file\n");
	lessee_file = FUNC8(lessor_file);
	if (FUNC1(lessee_file)) {
		ret = FUNC2(lessee_file);
		goto out_lessee;
	}

	lessee_priv = lessee_file->private_data;
	/* Change the file to a master one */
	FUNC6(&lessee_priv->master);
	lessee_priv->master = lessee;
	lessee_priv->is_master = 1;
	lessee_priv->authenticated = 1;

	/* Pass fd back to userspace */
	FUNC0("Returning fd %d id %d\n", fd, lessee->lessee_id);
	cl->fd = fd;
	cl->lessee_id = lessee->lessee_id;

	/* Hook up the fd */
	FUNC7(fd, lessee_file);

	FUNC0("drm_mode_create_lease_ioctl succeeded\n");
	return 0;

out_lessee:
	FUNC6(&lessee);

out_leases:
	FUNC15(fd);
	FUNC11(&leases);

	FUNC0("drm_mode_create_lease_ioctl failed: %d\n", ret);
	return ret;
}