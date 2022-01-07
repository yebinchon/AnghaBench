
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int mthca_dbg (struct mthca_dev*,char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void dump_cqe(struct mthca_dev *dev, void *cqe_ptr)
{
 __be32 *cqe = cqe_ptr;

 (void) cqe;
 mthca_dbg(dev, "CQE contents %08x %08x %08x %08x %08x %08x %08x %08x\n",
    be32_to_cpu(cqe[0]), be32_to_cpu(cqe[1]), be32_to_cpu(cqe[2]),
    be32_to_cpu(cqe[3]), be32_to_cpu(cqe[4]), be32_to_cpu(cqe[5]),
    be32_to_cpu(cqe[6]), be32_to_cpu(cqe[7]));
}
