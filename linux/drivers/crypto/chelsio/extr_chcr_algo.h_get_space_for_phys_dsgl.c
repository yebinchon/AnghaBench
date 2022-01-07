
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;


 unsigned int PHYSDSGL_MAX_LEN_SIZE ;

__attribute__((used)) static inline u16 get_space_for_phys_dsgl(unsigned int sgl_entr)
{

 return ((sgl_entr >> 3) + ((sgl_entr % 8) ?
       1 : 0)) * PHYSDSGL_MAX_LEN_SIZE +
  (sgl_entr << 3) + ((sgl_entr % 2 ? 1 : 0) << 3);
}
