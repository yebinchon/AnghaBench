
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sii8620 {scalar_t__ mode; } ;


 scalar_t__ CM_MHL3 ;

__attribute__((used)) static inline bool sii8620_is_mhl3(struct sii8620 *ctx)
{
 return ctx->mode >= CM_MHL3;
}
