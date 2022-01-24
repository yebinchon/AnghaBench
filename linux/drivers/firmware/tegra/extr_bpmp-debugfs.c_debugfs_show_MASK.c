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
struct tegra_bpmp {int /*<<< orphan*/  dev; } ;
struct seq_file {size_t size; struct file* private; } ;
struct inode {struct tegra_bpmp* i_private; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int GFP_DMA32 ; 
 int GFP_KERNEL ; 
 size_t SZ_256 ; 
 void* FUNC0 (int /*<<< orphan*/ ,size_t const,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t const,void*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct file*) ; 
 char* FUNC3 (struct tegra_bpmp*,struct file*,char*,int) ; 
 int FUNC4 (struct tegra_bpmp*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t const,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,void*,size_t) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char const*,size_t const) ; 

__attribute__((used)) static int FUNC8(struct seq_file *m, void *p)
{
	struct file *file = m->private;
	struct inode *inode = FUNC2(file);
	struct tegra_bpmp *bpmp = inode->i_private;
	const size_t datasize = m->size;
	const size_t namesize = SZ_256;
	void *datavirt, *namevirt;
	dma_addr_t dataphys, namephys;
	char buf[256];
	const char *filename;
	size_t len, nbytes;
	int ret;

	filename = FUNC3(bpmp, file, buf, sizeof(buf));
	if (!filename)
		return -ENOENT;

	namevirt = FUNC0(bpmp->dev, namesize, &namephys,
				      GFP_KERNEL | GFP_DMA32);
	if (!namevirt)
		return -ENOMEM;

	datavirt = FUNC0(bpmp->dev, datasize, &dataphys,
				      GFP_KERNEL | GFP_DMA32);
	if (!datavirt) {
		ret = -ENOMEM;
		goto free_namebuf;
	}

	len = FUNC6(filename);
	FUNC7(namevirt, filename, namesize);

	ret = FUNC4(bpmp, namephys, len, dataphys, datasize,
			       &nbytes);

	if (!ret)
		FUNC5(m, datavirt, nbytes);

	FUNC1(bpmp->dev, datasize, datavirt, dataphys);
free_namebuf:
	FUNC1(bpmp->dev, namesize, namevirt, namephys);

	return ret;
}