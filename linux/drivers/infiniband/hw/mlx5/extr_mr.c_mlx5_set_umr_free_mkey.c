
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ib_pd {int dummy; } ;
struct TYPE_2__ {int pdn; } ;


 void* MLX5_ADDR_OF (int ,int *,int ) ;
 int MLX5_SET (void*,void*,struct ib_pd*,int) ;
 struct ib_pd* access_mode_1_0 ;
 struct ib_pd* access_mode_4_2 ;
 int create_mkey_in ;
 struct ib_pd* free ;
 struct ib_pd* log_page_size ;
 int memory_key_mkey_entry ;
 struct ib_pd* qpn ;
 TYPE_1__* to_mpd (struct ib_pd*) ;
 struct ib_pd* translations_octword_size ;
 struct ib_pd* umr_en ;

__attribute__((used)) static void mlx5_set_umr_free_mkey(struct ib_pd *pd, u32 *in, int ndescs,
       int access_mode, int page_shift)
{
 void *mkc;

 mkc = MLX5_ADDR_OF(create_mkey_in, in, memory_key_mkey_entry);

 MLX5_SET(mkc, mkc, free, 1);
 MLX5_SET(mkc, mkc, qpn, 0xffffff);
 MLX5_SET(mkc, mkc, pd, to_mpd(pd)->pdn);
 MLX5_SET(mkc, mkc, translations_octword_size, ndescs);
 MLX5_SET(mkc, mkc, access_mode_1_0, access_mode & 0x3);
 MLX5_SET(mkc, mkc, access_mode_4_2, (access_mode >> 2) & 0x7);
 MLX5_SET(mkc, mkc, umr_en, 1);
 MLX5_SET(mkc, mkc, log_page_size, page_shift);
}
