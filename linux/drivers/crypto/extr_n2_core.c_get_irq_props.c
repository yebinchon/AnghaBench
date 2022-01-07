
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spu_mdesc_info {int num_intrs; struct ino_blob* ino_table; } ;
struct mdesc_handle {int dummy; } ;
struct ino_blob {int intr; int ino; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct ino_blob* kzalloc (int,int ) ;
 int * mdesc_get_property (struct mdesc_handle*,int ,char*,int*) ;
 int printk (char*) ;

__attribute__((used)) static int get_irq_props(struct mdesc_handle *mdesc, u64 node,
    struct spu_mdesc_info *ip)
{
 const u64 *ino;
 int ino_len;
 int i;

 ino = mdesc_get_property(mdesc, node, "ino", &ino_len);
 if (!ino) {
  printk("NO 'ino'\n");
  return -ENODEV;
 }

 ip->num_intrs = ino_len / sizeof(u64);
 ip->ino_table = kzalloc((sizeof(struct ino_blob) *
     ip->num_intrs),
    GFP_KERNEL);
 if (!ip->ino_table)
  return -ENOMEM;

 for (i = 0; i < ip->num_intrs; i++) {
  struct ino_blob *b = &ip->ino_table[i];
  b->intr = i + 1;
  b->ino = ino[i];
 }

 return 0;
}
