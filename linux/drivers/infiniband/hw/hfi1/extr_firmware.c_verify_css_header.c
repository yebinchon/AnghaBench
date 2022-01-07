
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;
struct firmware_file {int dummy; } ;
struct css_header {int exponent_size; int modulus_size; int key_size; int module_vendor; int header_version; int header_len; int module_type; } ;


 int CSS_HEADER_VERSION ;
 int CSS_MODULE_TYPE ;
 int CSS_MODULE_VENDOR ;
 int EINVAL ;
 int EXPONENT_SIZE ;
 int KEY_SIZE ;
 scalar_t__ invalid_header (struct hfi1_devdata*,char*,int ,int) ;

__attribute__((used)) static int verify_css_header(struct hfi1_devdata *dd, struct css_header *css)
{

 if (invalid_header(dd, "module_type", css->module_type,
      CSS_MODULE_TYPE) ||
     invalid_header(dd, "header_len", css->header_len,
      (sizeof(struct firmware_file) / 4)) ||
     invalid_header(dd, "header_version", css->header_version,
      CSS_HEADER_VERSION) ||
     invalid_header(dd, "module_vendor", css->module_vendor,
      CSS_MODULE_VENDOR) ||
     invalid_header(dd, "key_size", css->key_size, KEY_SIZE / 4) ||
     invalid_header(dd, "modulus_size", css->modulus_size,
      KEY_SIZE / 4) ||
     invalid_header(dd, "exponent_size", css->exponent_size,
      EXPONENT_SIZE / 4)) {
  return -EINVAL;
 }
 return 0;
}
