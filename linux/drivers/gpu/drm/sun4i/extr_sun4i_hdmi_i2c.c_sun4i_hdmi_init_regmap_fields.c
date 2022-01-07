
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_hdmi {void* field_ddc_sck_en; TYPE_1__* variant; int regmap; int dev; void* field_ddc_sda_en; void* field_ddc_cmd; void* field_ddc_byte_count; void* field_ddc_fifo_tx_thres; void* field_ddc_fifo_rx_thres; void* field_ddc_fifo_clear; void* field_ddc_int_status; void* field_ddc_int_mask; void* field_ddc_slave_addr; void* field_ddc_addr_reg; void* field_ddc_reset; void* field_ddc_start; void* field_ddc_en; } ;
struct TYPE_2__ {int field_ddc_sck_en; int field_ddc_sda_en; int field_ddc_cmd; int field_ddc_byte_count; int field_ddc_fifo_tx_thres; int field_ddc_fifo_rx_thres; int field_ddc_fifo_clear; int field_ddc_int_status; int field_ddc_int_mask; int field_ddc_slave_addr; int field_ddc_addr_reg; int field_ddc_reset; int field_ddc_start; int field_ddc_en; } ;


 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* devm_regmap_field_alloc (int ,int ,int ) ;

__attribute__((used)) static int sun4i_hdmi_init_regmap_fields(struct sun4i_hdmi *hdmi)
{
 hdmi->field_ddc_en =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_en);
 if (IS_ERR(hdmi->field_ddc_en))
  return PTR_ERR(hdmi->field_ddc_en);

 hdmi->field_ddc_start =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_start);
 if (IS_ERR(hdmi->field_ddc_start))
  return PTR_ERR(hdmi->field_ddc_start);

 hdmi->field_ddc_reset =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_reset);
 if (IS_ERR(hdmi->field_ddc_reset))
  return PTR_ERR(hdmi->field_ddc_reset);

 hdmi->field_ddc_addr_reg =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_addr_reg);
 if (IS_ERR(hdmi->field_ddc_addr_reg))
  return PTR_ERR(hdmi->field_ddc_addr_reg);

 hdmi->field_ddc_slave_addr =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_slave_addr);
 if (IS_ERR(hdmi->field_ddc_slave_addr))
  return PTR_ERR(hdmi->field_ddc_slave_addr);

 hdmi->field_ddc_int_mask =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_int_mask);
 if (IS_ERR(hdmi->field_ddc_int_mask))
  return PTR_ERR(hdmi->field_ddc_int_mask);

 hdmi->field_ddc_int_status =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_int_status);
 if (IS_ERR(hdmi->field_ddc_int_status))
  return PTR_ERR(hdmi->field_ddc_int_status);

 hdmi->field_ddc_fifo_clear =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_fifo_clear);
 if (IS_ERR(hdmi->field_ddc_fifo_clear))
  return PTR_ERR(hdmi->field_ddc_fifo_clear);

 hdmi->field_ddc_fifo_rx_thres =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_fifo_rx_thres);
 if (IS_ERR(hdmi->field_ddc_fifo_rx_thres))
  return PTR_ERR(hdmi->field_ddc_fifo_rx_thres);

 hdmi->field_ddc_fifo_tx_thres =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_fifo_tx_thres);
 if (IS_ERR(hdmi->field_ddc_fifo_tx_thres))
  return PTR_ERR(hdmi->field_ddc_fifo_tx_thres);

 hdmi->field_ddc_byte_count =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_byte_count);
 if (IS_ERR(hdmi->field_ddc_byte_count))
  return PTR_ERR(hdmi->field_ddc_byte_count);

 hdmi->field_ddc_cmd =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_cmd);
 if (IS_ERR(hdmi->field_ddc_cmd))
  return PTR_ERR(hdmi->field_ddc_cmd);

 hdmi->field_ddc_sda_en =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_sda_en);
 if (IS_ERR(hdmi->field_ddc_sda_en))
  return PTR_ERR(hdmi->field_ddc_sda_en);

 hdmi->field_ddc_sck_en =
  devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
     hdmi->variant->field_ddc_sck_en);
 if (IS_ERR(hdmi->field_ddc_sck_en))
  return PTR_ERR(hdmi->field_ddc_sck_en);

 return 0;
}
