
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cper_sec_mem_err {int mem_dev_handle; int mem_array_handle; int rank; int target_id; int responder_id; int requestor_id; int bit_pos; int column; int row; int device; int bank; int module; int card; int node; int validation_bits; } ;
struct cper_mem_err_compact {int mem_dev_handle; int mem_array_handle; int rank; int target_id; int responder_id; int requestor_id; int bit_pos; int column; int row; int device; int bank; int module; int card; int node; int validation_bits; } ;



void cper_mem_err_pack(const struct cper_sec_mem_err *mem,
         struct cper_mem_err_compact *cmem)
{
 cmem->validation_bits = mem->validation_bits;
 cmem->node = mem->node;
 cmem->card = mem->card;
 cmem->module = mem->module;
 cmem->bank = mem->bank;
 cmem->device = mem->device;
 cmem->row = mem->row;
 cmem->column = mem->column;
 cmem->bit_pos = mem->bit_pos;
 cmem->requestor_id = mem->requestor_id;
 cmem->responder_id = mem->responder_id;
 cmem->target_id = mem->target_id;
 cmem->rank = mem->rank;
 cmem->mem_array_handle = mem->mem_array_handle;
 cmem->mem_dev_handle = mem->mem_dev_handle;
}
