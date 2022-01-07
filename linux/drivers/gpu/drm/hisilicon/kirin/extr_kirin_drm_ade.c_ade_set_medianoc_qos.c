
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct ade_hw_ctx {struct regmap* noc_regmap; } ;


 int ADE0_QOSGENERATOR_EXTCONTROL ;
 int ADE0_QOSGENERATOR_MODE ;
 int ADE1_QOSGENERATOR_EXTCONTROL ;
 int ADE1_QOSGENERATOR_MODE ;
 int BYPASS_MODE ;
 int QOSGENERATOR_MODE_MASK ;
 int SOCKET_QOS_EN ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static void ade_set_medianoc_qos(struct ade_hw_ctx *ctx)
{
 struct regmap *map = ctx->noc_regmap;

 regmap_update_bits(map, ADE0_QOSGENERATOR_MODE,
      QOSGENERATOR_MODE_MASK, BYPASS_MODE);
 regmap_update_bits(map, ADE0_QOSGENERATOR_EXTCONTROL,
      SOCKET_QOS_EN, SOCKET_QOS_EN);

 regmap_update_bits(map, ADE1_QOSGENERATOR_MODE,
      QOSGENERATOR_MODE_MASK, BYPASS_MODE);
 regmap_update_bits(map, ADE1_QOSGENERATOR_EXTCONTROL,
      SOCKET_QOS_EN, SOCKET_QOS_EN);
}
