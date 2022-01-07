
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct attribute {char* name; int mode; } ;
struct hw_stats_attribute {struct attribute attr; int port_num; scalar_t__ index; int store; int show; } ;


 int GFP_KERNEL ;
 int S_IRUGO ;
 int S_IWUSR ;
 struct hw_stats_attribute* kmalloc (int,int ) ;
 int set_stats_lifespan ;
 int show_stats_lifespan ;

__attribute__((used)) static struct attribute *alloc_hsa_lifespan(char *name, u8 port_num)
{
 struct hw_stats_attribute *hsa;

 hsa = kmalloc(sizeof(*hsa), GFP_KERNEL);
 if (!hsa)
  return ((void*)0);

 hsa->attr.name = name;
 hsa->attr.mode = S_IWUSR | S_IRUGO;
 hsa->show = show_stats_lifespan;
 hsa->store = set_stats_lifespan;
 hsa->index = 0;
 hsa->port_num = port_num;

 return &hsa->attr;
}
