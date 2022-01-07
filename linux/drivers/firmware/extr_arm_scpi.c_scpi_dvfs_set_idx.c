
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvfs_set {int member_1; int member_0; } ;
typedef int stat ;
typedef int dvfs ;


 int CMD_SET_DVFS ;
 int scpi_send_message (int ,struct dvfs_set*,int,int*,int) ;

__attribute__((used)) static int scpi_dvfs_set_idx(u8 domain, u8 index)
{
 int stat;
 struct dvfs_set dvfs = {domain, index};

 return scpi_send_message(CMD_SET_DVFS, &dvfs, sizeof(dvfs),
     &stat, sizeof(stat));
}
