
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* mode; int size; int start; scalar_t__ p; } ;
struct TYPE_3__ {void* mode; int size; int start; scalar_t__ p; } ;
struct inf_hw {TYPE_2__ addr; TYPE_1__ cfg; } ;


 void* AM_NONE ;
 int iounmap (scalar_t__) ;
 int release_mem_region (int ,int ) ;
 int release_region (int ,int ) ;

__attribute__((used)) static void
release_io(struct inf_hw *hw)
{
 if (hw->cfg.mode) {
  if (hw->cfg.p) {
   release_mem_region(hw->cfg.start, hw->cfg.size);
   iounmap(hw->cfg.p);
  } else
   release_region(hw->cfg.start, hw->cfg.size);
  hw->cfg.mode = AM_NONE;
 }
 if (hw->addr.mode) {
  if (hw->addr.p) {
   release_mem_region(hw->addr.start, hw->addr.size);
   iounmap(hw->addr.p);
  } else
   release_region(hw->addr.start, hw->addr.size);
  hw->addr.mode = AM_NONE;
 }
}
