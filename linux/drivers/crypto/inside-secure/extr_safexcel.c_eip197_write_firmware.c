
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct safexcel_crypto_priv {scalar_t__ base; } ;
struct firmware {int size; scalar_t__ data; } ;


 scalar_t__ EIP197_CLASSIFICATION_RAMS ;
 int EIP197_FW_TERMINAL_NOPS ;
 int be32_to_cpu (int const) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int eip197_write_firmware(struct safexcel_crypto_priv *priv,
      const struct firmware *fw)
{
 const u32 *data = (const u32 *)fw->data;
 int i;


 for (i = 0; i < fw->size / sizeof(u32); i++)
  writel(be32_to_cpu(data[i]),
         priv->base + EIP197_CLASSIFICATION_RAMS + i * sizeof(u32));


 return i - EIP197_FW_TERMINAL_NOPS;
}
