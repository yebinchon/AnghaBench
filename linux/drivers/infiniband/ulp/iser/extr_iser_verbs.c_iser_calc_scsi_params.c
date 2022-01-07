
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct iser_device {TYPE_1__* ib_device; } ;
struct TYPE_4__ {scalar_t__ pi_support; struct iser_device* device; } ;
struct iser_conn {int scsi_sg_tablesize; scalar_t__ pages_per_mr; TYPE_2__ ib_conn; } ;
struct ib_device_attr {int device_cap_flags; scalar_t__ max_fast_reg_page_list_len; scalar_t__ max_pi_fast_reg_page_list_len; } ;
struct TYPE_3__ {struct ib_device_attr attrs; } ;


 unsigned short DIV_ROUND_UP (unsigned int,int ) ;
 int IB_DEVICE_MEM_MGT_EXTENSIONS ;
 int IB_DEVICE_SG_GAPS_REG ;
 unsigned short ISCSI_ISER_MAX_SG_TABLESIZE ;
 int SIZE_4K ;
 int min (unsigned short,unsigned short) ;
 unsigned short min_t (int ,unsigned short,scalar_t__) ;
 int uint ;

__attribute__((used)) static void
iser_calc_scsi_params(struct iser_conn *iser_conn,
        unsigned int max_sectors)
{
 struct iser_device *device = iser_conn->ib_conn.device;
 struct ib_device_attr *attr = &device->ib_device->attrs;
 unsigned short sg_tablesize, sup_sg_tablesize;
 unsigned short reserved_mr_pages;
 u32 max_num_sg;







 if ((attr->device_cap_flags & IB_DEVICE_MEM_MGT_EXTENSIONS) &&
     (attr->device_cap_flags & IB_DEVICE_SG_GAPS_REG))
  reserved_mr_pages = 0;
 else
  reserved_mr_pages = 1;

 if (iser_conn->ib_conn.pi_support)
  max_num_sg = attr->max_pi_fast_reg_page_list_len;
 else
  max_num_sg = attr->max_fast_reg_page_list_len;

 sg_tablesize = DIV_ROUND_UP(max_sectors * 512, SIZE_4K);
 if (attr->device_cap_flags & IB_DEVICE_MEM_MGT_EXTENSIONS)
  sup_sg_tablesize =
   min_t(
    uint, ISCSI_ISER_MAX_SG_TABLESIZE,
    max_num_sg - reserved_mr_pages);
 else
  sup_sg_tablesize = ISCSI_ISER_MAX_SG_TABLESIZE;

 iser_conn->scsi_sg_tablesize = min(sg_tablesize, sup_sg_tablesize);
 iser_conn->pages_per_mr =
  iser_conn->scsi_sg_tablesize + reserved_mr_pages;
}
