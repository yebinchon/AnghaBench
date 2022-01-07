
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct attribute {char* name; int mode; } ;
struct hw_stats_attribute {int index; struct attribute attr; int port_num; int * store; int show; } ;


 int GFP_KERNEL ;
 int S_IRUGO ;
 struct hw_stats_attribute* kmalloc (int,int ) ;
 int show_hw_stats ;

__attribute__((used)) static struct attribute *alloc_hsa(int index, u8 port_num, const char *name)
{
 struct hw_stats_attribute *hsa;

 hsa = kmalloc(sizeof(*hsa), GFP_KERNEL);
 if (!hsa)
  return ((void*)0);

 hsa->attr.name = (char *)name;
 hsa->attr.mode = S_IRUGO;
 hsa->show = show_hw_stats;
 hsa->store = ((void*)0);
 hsa->index = index;
 hsa->port_num = port_num;

 return &hsa->attr;
}
