
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ast_private {int dummy; } ;


 int mmc_test (struct ast_private*,int ,int) ;

__attribute__((used)) static bool mmc_test_single_2500(struct ast_private *ast, u32 datagen)
{
 return mmc_test(ast, datagen, 0x85);
}
