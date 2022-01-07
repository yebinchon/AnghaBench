
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nct7904_data {int bank_lock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void nct7904_bank_release(struct nct7904_data *data)
{
 mutex_unlock(&data->bank_lock);
}
