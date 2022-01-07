
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_data {int dev; } ;
struct g2d_buf_info {struct g2d_buf_desc* descs; int * types; } ;
struct g2d_cmdlist_node {struct g2d_buf_info buf_info; struct g2d_cmdlist* cmdlist; } ;
struct g2d_cmdlist {int last; int* data; } ;
struct g2d_buf_desc {int stride; unsigned long format; unsigned long left_x; unsigned long top_y; unsigned long right_x; unsigned long bottom_y; } ;
typedef enum g2d_reg_type { ____Placeholder_g2d_reg_type } g2d_reg_type ;


 int BUF_TYPE_GEM ;
 int BUF_TYPE_USERPTR ;
 int EINVAL ;
 int G2D_BUF_USERPTR ;
 int G2D_VALID_END ;
 int G2D_VALID_START ;
 int dev_err (int ,char*,unsigned long) ;
 int g2d_get_reg_type (struct g2d_data*,int) ;

__attribute__((used)) static int g2d_check_reg_offset(struct g2d_data *g2d,
    struct g2d_cmdlist_node *node,
    int nr, bool for_addr)
{
 struct g2d_cmdlist *cmdlist = node->cmdlist;
 int reg_offset;
 int index;
 int i;

 for (i = 0; i < nr; i++) {
  struct g2d_buf_info *buf_info = &node->buf_info;
  struct g2d_buf_desc *buf_desc;
  enum g2d_reg_type reg_type;
  unsigned long value;

  index = cmdlist->last - 2 * (i + 1);

  reg_offset = cmdlist->data[index] & ~0xfffff000;
  if (reg_offset < G2D_VALID_START || reg_offset > G2D_VALID_END)
   goto err;
  if (reg_offset % 4)
   goto err;

  switch (reg_offset) {
  case 133:
  case 130:
  case 141:
  case 138:
  case 134:
  case 135:
   if (!for_addr)
    goto err;

   reg_type = g2d_get_reg_type(g2d, reg_offset);


   if ((cmdlist->data[index] & ~0x7fffffff) >> 31) {
    buf_info->types[reg_type] = BUF_TYPE_USERPTR;
    cmdlist->data[index] &= ~G2D_BUF_USERPTR;
   } else
    buf_info->types[reg_type] = BUF_TYPE_GEM;
   break;
  case 128:
  case 136:
   if (for_addr)
    goto err;

   reg_type = g2d_get_reg_type(g2d, reg_offset);

   buf_desc = &buf_info->descs[reg_type];
   buf_desc->stride = cmdlist->data[index + 1];
   break;
  case 132:
  case 140:
   if (for_addr)
    goto err;

   reg_type = g2d_get_reg_type(g2d, reg_offset);

   buf_desc = &buf_info->descs[reg_type];
   value = cmdlist->data[index + 1];

   buf_desc->format = value & 0xf;
   break;
  case 131:
  case 139:
   if (for_addr)
    goto err;

   reg_type = g2d_get_reg_type(g2d, reg_offset);

   buf_desc = &buf_info->descs[reg_type];
   value = cmdlist->data[index + 1];

   buf_desc->left_x = value & 0x1fff;
   buf_desc->top_y = (value & 0x1fff0000) >> 16;
   break;
  case 129:
  case 137:
   if (for_addr)
    goto err;

   reg_type = g2d_get_reg_type(g2d, reg_offset);

   buf_desc = &buf_info->descs[reg_type];
   value = cmdlist->data[index + 1];

   buf_desc->right_x = value & 0x1fff;
   buf_desc->bottom_y = (value & 0x1fff0000) >> 16;
   break;
  default:
   if (for_addr)
    goto err;
   break;
  }
 }

 return 0;

err:
 dev_err(g2d->dev, "Bad register offset: 0x%lx\n", cmdlist->data[index]);
 return -EINVAL;
}
