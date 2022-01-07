
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vf_mode { ____Placeholder_vf_mode } vf_mode ;


 int MAX_PF_QUEUES ;






__attribute__((used)) static inline int vf_mode_to_nr_queues(enum vf_mode mode)
{
 int nr_queues = 0;

 switch (mode) {
 case 132:
  nr_queues = MAX_PF_QUEUES;
  break;
 case 130:
  nr_queues = 8;
  break;
 case 129:
  nr_queues = 4;
  break;
 case 128:
  nr_queues = 2;
  break;
 case 131:
  nr_queues = 1;
  break;
 }

 return nr_queues;
}
