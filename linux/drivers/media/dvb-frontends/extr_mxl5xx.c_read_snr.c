
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mxl {TYPE_1__* base; int demod; } ;
struct TYPE_6__ {TYPE_2__* stat; } ;
struct dtv_frontend_properties {TYPE_3__ cnr; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct mxl* demodulator_priv; } ;
typedef int s16 ;
struct TYPE_5__ {int svalue; int scale; } ;
struct TYPE_4__ {int status_lock; } ;


 int FE_SCALE_DECIBEL ;
 int HYDRA_DEMOD_STATUS_LOCK (struct mxl*,int ) ;
 int HYDRA_DEMOD_STATUS_UNLOCK (struct mxl*,int ) ;
 scalar_t__ HYDRA_DMD_SNR_ADDR_OFFSET ;
 scalar_t__ HYDRA_DMD_STATUS_OFFSET (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_register (struct mxl*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static int read_snr(struct dvb_frontend *fe)
{
 struct mxl *state = fe->demodulator_priv;
 int stat;
 u32 reg_data = 0;
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;

 mutex_lock(&state->base->status_lock);
 HYDRA_DEMOD_STATUS_LOCK(state, state->demod);
 stat = read_register(state, (HYDRA_DMD_SNR_ADDR_OFFSET +
         HYDRA_DMD_STATUS_OFFSET(state->demod)),
        &reg_data);
 HYDRA_DEMOD_STATUS_UNLOCK(state, state->demod);
 mutex_unlock(&state->base->status_lock);

 p->cnr.stat[0].scale = FE_SCALE_DECIBEL;
 p->cnr.stat[0].svalue = (s16)reg_data * 10;

 return stat;
}
