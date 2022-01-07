
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_tavor_ud_seg {int dummy; } ;
struct mthca_raddr_seg {int dummy; } ;
struct mthca_qp {int transport; } ;
struct mthca_next_seg {int dummy; } ;
struct mthca_dev {int dummy; } ;
struct mthca_data_seg {int dummy; } ;
struct mthca_arbel_ud_seg {int dummy; } ;




 int mthca_is_memfree (struct mthca_dev*) ;

__attribute__((used)) static int mthca_max_data_size(struct mthca_dev *dev, struct mthca_qp *qp, int desc_sz)
{




 int max_data_size = desc_sz - sizeof (struct mthca_next_seg);

 switch (qp->transport) {
 case 129:
  max_data_size -= 2 * sizeof (struct mthca_data_seg);
  break;

 case 128:
  if (mthca_is_memfree(dev))
   max_data_size -= sizeof (struct mthca_arbel_ud_seg);
  else
   max_data_size -= sizeof (struct mthca_tavor_ud_seg);
  break;

 default:
  max_data_size -= sizeof (struct mthca_raddr_seg);
  break;
 }

 return max_data_size;
}
