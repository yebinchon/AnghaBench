
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct mn88443x_priv {struct regmap* regmap_s; } ;
struct dtv_frontend_properties {int stream_id; } ;


 int ATSIDL_S ;
 int ATSIDU_S ;
 int TSSET_S ;
 int regmap_write (struct regmap*,int ,int) ;

__attribute__((used)) static void mn88443x_s_tune(struct mn88443x_priv *chip,
       struct dtv_frontend_properties *c)
{
 struct regmap *r_s = chip->regmap_s;

 regmap_write(r_s, ATSIDU_S, c->stream_id >> 8);
 regmap_write(r_s, ATSIDL_S, c->stream_id);
 regmap_write(r_s, TSSET_S, 0);
}
