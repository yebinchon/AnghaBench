
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hgpk_data {int spew_flag; scalar_t__ y_tally; scalar_t__ x_tally; scalar_t__ dupe_count; scalar_t__ spew_count; } ;


 int NO_SPEW ;

__attribute__((used)) static void hgpk_reset_spew_detection(struct hgpk_data *priv)
{
 priv->spew_count = 0;
 priv->dupe_count = 0;
 priv->x_tally = 0;
 priv->y_tally = 0;
 priv->spew_flag = NO_SPEW;
}
