
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct drxd_state {int dummy; } ;


 int DRX_I2C_CLEARCRC ;
 int WriteBlock (struct drxd_state*,int,int,int*,int ) ;

__attribute__((used)) static int DownloadMicrocode(struct drxd_state *state,
        const u8 *pMCImage, u32 Length)
{
 u8 *pSrc;
 u32 Address;
 u16 nBlocks;
 u16 BlockSize;
 u32 offset = 0;
 int i, status = 0;

 pSrc = (u8 *) pMCImage;


 pSrc += sizeof(u16);
 offset += sizeof(u16);
 nBlocks = (pSrc[0] << 8) | pSrc[1];
 pSrc += sizeof(u16);
 offset += sizeof(u16);

 for (i = 0; i < nBlocks; i++) {
  Address = (pSrc[0] << 24) | (pSrc[1] << 16) |
      (pSrc[2] << 8) | pSrc[3];
  pSrc += sizeof(u32);
  offset += sizeof(u32);

  BlockSize = ((pSrc[0] << 8) | pSrc[1]) * sizeof(u16);
  pSrc += sizeof(u16);
  offset += sizeof(u16);



  pSrc += sizeof(u16);
  offset += sizeof(u16);



  pSrc += sizeof(u16);
  offset += sizeof(u16);

  status = WriteBlock(state, Address, BlockSize,
        pSrc, DRX_I2C_CLEARCRC);
  if (status < 0)
   break;
  pSrc += BlockSize;
  offset += BlockSize;
 }

 return status;
}
