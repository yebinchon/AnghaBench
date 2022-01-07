
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atom_exec_context ;


 int ATOM_UNIT_MICROSEC ;
 int SDEBUG (char*,unsigned int) ;
 unsigned int U8 (int ) ;
 int drm_can_sleep () ;
 int mdelay (unsigned int) ;
 int msleep (unsigned int) ;
 int udelay (unsigned int) ;

__attribute__((used)) static void atom_op_delay(atom_exec_context *ctx, int *ptr, int arg)
{
 unsigned count = U8((*ptr)++);
 SDEBUG("   count: %d\n", count);
 if (arg == ATOM_UNIT_MICROSEC)
  udelay(count);
 else if (!drm_can_sleep())
  mdelay(count);
 else
  msleep(count);
}
