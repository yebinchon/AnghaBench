
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u64 ;
typedef int u32 ;
struct cec_pin {unsigned int* error_inj; int rx_toggle; int tx_toggle; int tx_ignore_nack_until_eom; int tx_custom_pulse; int tx_custom_low_usecs; int tx_custom_high_usecs; int** error_inj_args; } ;
struct cec_adapter {struct cec_pin* pin; } ;
struct TYPE_2__ {char* cmd; unsigned int mode_offset; int arg_idx; } ;


 int CEC_ERROR_INJ_MODE_ALWAYS ;
 unsigned int CEC_ERROR_INJ_MODE_MASK ;
 int CEC_ERROR_INJ_MODE_OFF ;
 int CEC_ERROR_INJ_MODE_ONCE ;
 int CEC_ERROR_INJ_MODE_TOGGLE ;
 unsigned int CEC_ERROR_INJ_OP_ANY ;
 unsigned int CEC_ERROR_INJ_RX_ARB_LOST_OFFSET ;
 unsigned int CEC_ERROR_INJ_RX_MASK ;
 unsigned int CEC_ERROR_INJ_TX_ADD_BYTES_OFFSET ;
 unsigned int CEC_ERROR_INJ_TX_CUSTOM_BIT_OFFSET ;
 unsigned int CEC_ERROR_INJ_TX_LONG_BIT_OFFSET ;
 unsigned int CEC_ERROR_INJ_TX_MASK ;
 unsigned int CEC_ERROR_INJ_TX_SHORT_BIT_OFFSET ;
 void* CEC_TIM_CUSTOM_DEFAULT ;
 TYPE_1__* cec_error_inj_cmds ;
 int cec_pin_start_timer (struct cec_pin*) ;
 scalar_t__ kstrtou32 (char*,int ,int*) ;
 int kstrtou8 (char*,int ,int*) ;
 int memset (unsigned int*,int ,int) ;
 char* skip_spaces (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strsep (char**,char const*) ;

bool cec_pin_error_inj_parse_line(struct cec_adapter *adap, char *line)
{
 static const char *delims = " \t\r";
 struct cec_pin *pin = adap->pin;
 unsigned int i;
 bool has_pos = 0;
 char *p = line;
 char *token;
 char *comma;
 u64 *error;
 u8 *args;
 bool has_op;
 u8 op;
 u8 mode;
 u8 pos;

 p = skip_spaces(p);
 token = strsep(&p, delims);
 if (!strcmp(token, "clear")) {
  memset(pin->error_inj, 0, sizeof(pin->error_inj));
  pin->rx_toggle = pin->tx_toggle = 0;
  pin->tx_ignore_nack_until_eom = 0;
  pin->tx_custom_pulse = 0;
  pin->tx_custom_low_usecs = CEC_TIM_CUSTOM_DEFAULT;
  pin->tx_custom_high_usecs = CEC_TIM_CUSTOM_DEFAULT;
  return 1;
 }
 if (!strcmp(token, "rx-clear")) {
  for (i = 0; i <= CEC_ERROR_INJ_OP_ANY; i++)
   pin->error_inj[i] &= ~CEC_ERROR_INJ_RX_MASK;
  pin->rx_toggle = 0;
  return 1;
 }
 if (!strcmp(token, "tx-clear")) {
  for (i = 0; i <= CEC_ERROR_INJ_OP_ANY; i++)
   pin->error_inj[i] &= ~CEC_ERROR_INJ_TX_MASK;
  pin->tx_toggle = 0;
  pin->tx_ignore_nack_until_eom = 0;
  pin->tx_custom_pulse = 0;
  pin->tx_custom_low_usecs = CEC_TIM_CUSTOM_DEFAULT;
  pin->tx_custom_high_usecs = CEC_TIM_CUSTOM_DEFAULT;
  return 1;
 }
 if (!strcmp(token, "tx-ignore-nack-until-eom")) {
  pin->tx_ignore_nack_until_eom = 1;
  return 1;
 }
 if (!strcmp(token, "tx-custom-pulse")) {
  pin->tx_custom_pulse = 1;
  cec_pin_start_timer(pin);
  return 1;
 }
 if (!p)
  return 0;

 p = skip_spaces(p);
 if (!strcmp(token, "tx-custom-low-usecs")) {
  u32 usecs;

  if (kstrtou32(p, 0, &usecs) || usecs > 10000000)
   return 0;
  pin->tx_custom_low_usecs = usecs;
  return 1;
 }
 if (!strcmp(token, "tx-custom-high-usecs")) {
  u32 usecs;

  if (kstrtou32(p, 0, &usecs) || usecs > 10000000)
   return 0;
  pin->tx_custom_high_usecs = usecs;
  return 1;
 }

 comma = strchr(token, ',');
 if (comma)
  *comma++ = '\0';
 if (!strcmp(token, "any")) {
  has_op = 0;
  error = pin->error_inj + CEC_ERROR_INJ_OP_ANY;
  args = pin->error_inj_args[CEC_ERROR_INJ_OP_ANY];
 } else if (!kstrtou8(token, 0, &op)) {
  has_op = 1;
  error = pin->error_inj + op;
  args = pin->error_inj_args[op];
 } else {
  return 0;
 }

 mode = CEC_ERROR_INJ_MODE_ONCE;
 if (comma) {
  if (!strcmp(comma, "off"))
   mode = CEC_ERROR_INJ_MODE_OFF;
  else if (!strcmp(comma, "once"))
   mode = CEC_ERROR_INJ_MODE_ONCE;
  else if (!strcmp(comma, "always"))
   mode = CEC_ERROR_INJ_MODE_ALWAYS;
  else if (!strcmp(comma, "toggle"))
   mode = CEC_ERROR_INJ_MODE_TOGGLE;
  else
   return 0;
 }

 token = strsep(&p, delims);
 if (p) {
  p = skip_spaces(p);
  has_pos = !kstrtou8(p, 0, &pos);
 }

 if (!strcmp(token, "clear")) {
  *error = 0;
  return 1;
 }
 if (!strcmp(token, "rx-clear")) {
  *error &= ~CEC_ERROR_INJ_RX_MASK;
  return 1;
 }
 if (!strcmp(token, "tx-clear")) {
  *error &= ~CEC_ERROR_INJ_TX_MASK;
  return 1;
 }

 for (i = 0; cec_error_inj_cmds[i].cmd; i++) {
  const char *cmd = cec_error_inj_cmds[i].cmd;
  unsigned int mode_offset;
  u64 mode_mask;
  int arg_idx;
  bool is_bit_pos = 1;

  if (strcmp(token, cmd))
   continue;

  mode_offset = cec_error_inj_cmds[i].mode_offset;
  mode_mask = CEC_ERROR_INJ_MODE_MASK << mode_offset;
  arg_idx = cec_error_inj_cmds[i].arg_idx;

  if (mode_offset == CEC_ERROR_INJ_RX_ARB_LOST_OFFSET) {
   if (has_op)
    return 0;
   if (!has_pos)
    pos = 0x0f;
   is_bit_pos = 0;
  } else if (mode_offset == CEC_ERROR_INJ_TX_ADD_BYTES_OFFSET) {
   if (!has_pos || !pos)
    return 0;
   is_bit_pos = 0;
  }

  if (arg_idx >= 0 && is_bit_pos) {
   if (!has_pos || pos >= 160)
    return 0;
   if (has_op && pos < 10 + 8)
    return 0;

   if ((mode_offset == CEC_ERROR_INJ_TX_SHORT_BIT_OFFSET ||
        mode_offset == CEC_ERROR_INJ_TX_LONG_BIT_OFFSET ||
        mode_offset == CEC_ERROR_INJ_TX_CUSTOM_BIT_OFFSET) &&
       (pos % 10) == 9)
    return 0;
  }
  *error &= ~mode_mask;
  *error |= (u64)mode << mode_offset;
  if (arg_idx >= 0)
   args[arg_idx] = pos;
  return 1;
 }
 return 0;
}
