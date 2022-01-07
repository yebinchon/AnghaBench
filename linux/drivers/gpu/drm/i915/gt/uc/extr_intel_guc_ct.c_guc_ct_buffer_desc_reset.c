
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct guc_ct_buffer_desc {scalar_t__ is_in_error; scalar_t__ tail; scalar_t__ head; } ;


 int CT_DEBUG_DRIVER (char*,struct guc_ct_buffer_desc*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void guc_ct_buffer_desc_reset(struct guc_ct_buffer_desc *desc)
{
 CT_DEBUG_DRIVER("CT: desc %p reset head=%u tail=%u\n",
   desc, desc->head, desc->tail);
 desc->head = 0;
 desc->tail = 0;
 desc->is_in_error = 0;
}
