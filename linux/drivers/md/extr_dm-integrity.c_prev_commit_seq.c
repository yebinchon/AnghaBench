
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char N_COMMIT_IDS ;

__attribute__((used)) static unsigned char prev_commit_seq(unsigned char seq)
{
 return (seq + N_COMMIT_IDS - 1) % N_COMMIT_IDS;
}
