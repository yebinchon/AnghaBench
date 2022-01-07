
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pmic8xxx_kp {scalar_t__ num_cols; scalar_t__ num_rows; int dev; int regmap; } ;
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 unsigned int KEYP_CLOCK_FREQ ;
 int KEYP_CTRL ;
 int KEYP_CTRL_SCAN_COLS_BITS ;
 scalar_t__ KEYP_CTRL_SCAN_COLS_MIN ;
 int KEYP_CTRL_SCAN_COLS_SHIFT ;
 scalar_t__ KEYP_CTRL_SCAN_ROWS_MIN ;
 int KEYP_CTRL_SCAN_ROWS_SHIFT ;
 int KEYP_SCAN ;
 int KEYP_SCAN_DBOUNCE_SHIFT ;
 int KEYP_SCAN_PAUSE_SHIFT ;
 int KEYP_SCAN_ROW_HOLD_SHIFT ;
 unsigned int MAX_DEBOUNCE_TIME ;
 unsigned int MAX_ROW_HOLD_DELAY ;
 unsigned int MAX_SCAN_DELAY ;
 unsigned int MIN_DEBOUNCE_TIME ;
 unsigned int MIN_ROW_HOLD_DELAY ;
 unsigned int MIN_SCAN_DELAY ;
 unsigned int NSEC_PER_SEC ;
 int dev_err (TYPE_1__*,char*,...) ;
 int fls (unsigned int) ;
 int is_power_of_2 (unsigned int) ;
 scalar_t__ of_property_read_u32 (struct device_node const*,char*,unsigned int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int pmic8xxx_kpd_init(struct pmic8xxx_kp *kp,
        struct platform_device *pdev)
{
 const struct device_node *of_node = pdev->dev.of_node;
 unsigned int scan_delay_ms;
 unsigned int row_hold_ns;
 unsigned int debounce_ms;
 int bits, rc, cycles;
 u8 scan_val = 0, ctrl_val = 0;
 static const u8 row_bits[] = {
  0, 1, 2, 3, 4, 4, 5, 5, 6, 6, 6, 7, 7, 7,
 };


 if (kp->num_cols < KEYP_CTRL_SCAN_COLS_MIN)
  bits = 0;
 else
  bits = kp->num_cols - KEYP_CTRL_SCAN_COLS_MIN;
 ctrl_val = (bits & KEYP_CTRL_SCAN_COLS_BITS) <<
  KEYP_CTRL_SCAN_COLS_SHIFT;


 if (kp->num_rows < KEYP_CTRL_SCAN_ROWS_MIN)
  bits = 0;
 else
  bits = row_bits[kp->num_rows - KEYP_CTRL_SCAN_ROWS_MIN];

 ctrl_val |= (bits << KEYP_CTRL_SCAN_ROWS_SHIFT);

 rc = regmap_write(kp->regmap, KEYP_CTRL, ctrl_val);
 if (rc < 0) {
  dev_err(kp->dev, "Error writing KEYP_CTRL reg, rc=%d\n", rc);
  return rc;
 }

 if (of_property_read_u32(of_node, "scan-delay", &scan_delay_ms))
  scan_delay_ms = MIN_SCAN_DELAY;

 if (scan_delay_ms > MAX_SCAN_DELAY || scan_delay_ms < MIN_SCAN_DELAY ||
     !is_power_of_2(scan_delay_ms)) {
  dev_err(&pdev->dev, "invalid keypad scan time supplied\n");
  return -EINVAL;
 }

 if (of_property_read_u32(of_node, "row-hold", &row_hold_ns))
  row_hold_ns = MIN_ROW_HOLD_DELAY;

 if (row_hold_ns > MAX_ROW_HOLD_DELAY ||
     row_hold_ns < MIN_ROW_HOLD_DELAY ||
     ((row_hold_ns % MIN_ROW_HOLD_DELAY) != 0)) {
  dev_err(&pdev->dev, "invalid keypad row hold time supplied\n");
  return -EINVAL;
 }

 if (of_property_read_u32(of_node, "debounce", &debounce_ms))
  debounce_ms = MIN_DEBOUNCE_TIME;

 if (((debounce_ms % 5) != 0) ||
     debounce_ms > MAX_DEBOUNCE_TIME ||
     debounce_ms < MIN_DEBOUNCE_TIME) {
  dev_err(&pdev->dev, "invalid debounce time supplied\n");
  return -EINVAL;
 }

 bits = (debounce_ms / 5) - 1;

 scan_val |= (bits << KEYP_SCAN_DBOUNCE_SHIFT);

 bits = fls(scan_delay_ms) - 1;
 scan_val |= (bits << KEYP_SCAN_PAUSE_SHIFT);


 cycles = (row_hold_ns * KEYP_CLOCK_FREQ) / NSEC_PER_SEC;

 scan_val |= (cycles << KEYP_SCAN_ROW_HOLD_SHIFT);

 rc = regmap_write(kp->regmap, KEYP_SCAN, scan_val);
 if (rc)
  dev_err(kp->dev, "Error writing KEYP_SCAN reg, rc=%d\n", rc);

 return rc;

}
