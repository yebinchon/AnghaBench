
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int drm_via_private_t ;


 int HC_HEADER2 ;
 int HC_ParaType_NotTex ;
 int VIA_OUT_RING_QW (int ,int) ;
 int via_align_buffer (int *,int *,int) ;
 int via_cmdbuf_wait (int *,int) ;
 int * via_get_dma (int *) ;

__attribute__((used)) static void via_pad_cache(drm_via_private_t *dev_priv, int qwords)
{
 uint32_t *vb;

 via_cmdbuf_wait(dev_priv, qwords + 2);
 vb = via_get_dma(dev_priv);
 VIA_OUT_RING_QW(HC_HEADER2, HC_ParaType_NotTex << 16);
 via_align_buffer(dev_priv, vb, qwords);
}
