
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_private {int dummy; } ;


 int mmc_test2 (struct ast_private*,int ,int) ;

__attribute__((used)) static u32 mmc_test_burst2(struct ast_private *ast, u32 datagen)
{
 return mmc_test2(ast, datagen, 0x41);
}
