
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;



void caam_dump_sg(const char *prefix_str, int prefix_type,
    int rowsize, int groupsize, struct scatterlist *sg,
    size_t tlen, bool ascii)
{}
