
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_card {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int dummy_enable_phys_dma(struct fw_card *card,
     int node_id, int generation)
{
 return -ENODEV;
}
