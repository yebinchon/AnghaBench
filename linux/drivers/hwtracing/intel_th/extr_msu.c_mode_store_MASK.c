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
struct msu_buffer {void* (* assign ) (struct device*,int*) ;} ;
struct msc {int mode; int /*<<< orphan*/  buf_mutex; struct msu_buffer const* mbuf; void* mbuf_priv; int /*<<< orphan*/  do_irq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct msc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (char const*,char,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct msc*) ; 
 int FUNC8 (struct msc*) ; 
 int /*<<< orphan*/  msc_mode ; 
 struct msu_buffer* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct msu_buffer const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (struct device*,int*) ; 

__attribute__((used)) static ssize_t
FUNC14(struct device *dev, struct device_attribute *attr, const char *buf,
	   size_t size)
{
	const struct msu_buffer *mbuf = NULL;
	struct msc *msc = FUNC2(dev);
	size_t len = size;
	char *cp, *mode;
	int i, ret;

	if (!FUNC1(CAP_SYS_RAWIO))
		return -EPERM;

	cp = FUNC6(buf, '\n', len);
	if (cp)
		len = cp - buf;

	mode = FUNC4(buf, len, GFP_KERNEL);
	if (!mode)
		return -ENOMEM;

	i = FUNC5(msc_mode, FUNC0(msc_mode), mode);
	if (i >= 0) {
		FUNC3(mode);
		goto found;
	}

	/* Buffer sinks only work with a usable IRQ */
	if (!msc->do_irq) {
		FUNC3(mode);
		return -EINVAL;
	}

	mbuf = FUNC9(mode);
	FUNC3(mode);
	if (mbuf)
		goto found;

	return -EINVAL;

found:
	FUNC11(&msc->buf_mutex);
	ret = 0;

	/* Same buffer: do nothing */
	if (mbuf && mbuf == msc->mbuf) {
		/* put the extra reference we just got */
		FUNC10(mbuf);
		goto unlock;
	}

	ret = FUNC8(msc);
	if (ret)
		goto unlock;

	if (mbuf) {
		void *mbuf_priv = mbuf->assign(dev, &i);

		if (!mbuf_priv) {
			ret = -ENOMEM;
			goto unlock;
		}

		FUNC7(msc);
		msc->mbuf_priv = mbuf_priv;
		msc->mbuf = mbuf;
	} else {
		FUNC7(msc);
	}

	msc->mode = i;

unlock:
	if (ret && mbuf)
		FUNC10(mbuf);
	FUNC12(&msc->buf_mutex);

	return ret ? ret : size;
}