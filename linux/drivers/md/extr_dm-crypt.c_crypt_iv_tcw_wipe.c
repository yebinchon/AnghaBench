
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iv_tcw_private {int whitening; int iv_seed; } ;
struct TYPE_2__ {struct iv_tcw_private tcw; } ;
struct crypt_config {int iv_size; TYPE_1__ iv_gen_private; } ;


 int TCW_WHITENING_SIZE ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int crypt_iv_tcw_wipe(struct crypt_config *cc)
{
 struct iv_tcw_private *tcw = &cc->iv_gen_private.tcw;

 memset(tcw->iv_seed, 0, cc->iv_size);
 memset(tcw->whitening, 0, TCW_WHITENING_SIZE);

 return 0;
}
