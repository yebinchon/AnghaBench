
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct atbm_state {int dummy; } ;


 int REG_LOCK_STATUS ;
 int atbm8830_read_reg (struct atbm_state*,int ,int*) ;

__attribute__((used)) static int is_locked(struct atbm_state *priv, u8 *locked)
{
 u8 status;

 atbm8830_read_reg(priv, REG_LOCK_STATUS, &status);

 if (locked != ((void*)0))
  *locked = (status == 1);
 return 0;
}
