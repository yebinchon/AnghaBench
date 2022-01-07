; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000mb_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mb.c_dib3000mb_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.dtv_frontend_properties, %struct.dib3000_state* }
%struct.TYPE_4__ = type { i32 (%struct.dvb_frontend.0*, i32)*, %struct.TYPE_3__ }
%struct.dvb_frontend.0 = type opaque
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.1*)* }
%struct.dvb_frontend.1 = type opaque
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dib3000_state = type { i32 }

@dib3000mb_reg_timing_freq = common dso_local global i32 0, align 4
@dib3000mb_timing_freq = common dso_local global i32* null, align 8
@dib3000mb_reg_bandwidth = common dso_local global i32 0, align 4
@dib3000mb_bandwidth_8mhz = common dso_local global i32 0, align 4
@dib3000mb_bandwidth_7mhz = common dso_local global i32 0, align 4
@dib3000mb_bandwidth_6mhz = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unknown bandwidth value.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"bandwidth: %d MHZ\0A\00", align 1
@DIB3000MB_REG_LOCK1_MASK = common dso_local global i32 0, align 4
@DIB3000MB_LOCK1_SEARCH_4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"transmission mode: 2k\0A\00", align 1
@DIB3000MB_REG_FFT = common dso_local global i32 0, align 4
@DIB3000_TRANSMISSION_MODE_2K = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"transmission mode: 8k\0A\00", align 1
@DIB3000_TRANSMISSION_MODE_8K = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"transmission mode: auto\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"guard 1_32\0A\00", align 1
@DIB3000MB_REG_GUARD_TIME = common dso_local global i32 0, align 4
@DIB3000_GUARD_TIME_1_32 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"guard 1_16\0A\00", align 1
@DIB3000_GUARD_TIME_1_16 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"guard 1_8\0A\00", align 1
@DIB3000_GUARD_TIME_1_8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c"guard 1_4\0A\00", align 1
@DIB3000_GUARD_TIME_1_4 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"guard auto\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"inversion off\0A\00", align 1
@DIB3000MB_REG_DDS_INV = common dso_local global i32 0, align 4
@DIB3000_DDS_INVERSION_OFF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"inversion auto\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"inversion on\0A\00", align 1
@DIB3000_DDS_INVERSION_ON = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"modulation: qpsk\0A\00", align 1
@DIB3000MB_REG_QAM = common dso_local global i32 0, align 4
@DIB3000_CONSTELLATION_QPSK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"modulation: qam16\0A\00", align 1
@DIB3000_CONSTELLATION_16QAM = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [19 x i8] c"modulation: qam64\0A\00", align 1
@DIB3000_CONSTELLATION_64QAM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"hierarchy: none\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"hierarchy: alpha=1\0A\00", align 1
@DIB3000MB_REG_VIT_ALPHA = common dso_local global i32 0, align 4
@DIB3000_ALPHA_1 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [20 x i8] c"hierarchy: alpha=2\0A\00", align 1
@DIB3000_ALPHA_2 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [20 x i8] c"hierarchy: alpha=4\0A\00", align 1
@DIB3000_ALPHA_4 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"hierarchy: alpha=auto\0A\00", align 1
@DIB3000MB_REG_VIT_HRCH = common dso_local global i32 0, align 4
@DIB3000_HRCH_OFF = common dso_local global i32 0, align 4
@DIB3000MB_REG_VIT_HP = common dso_local global i32 0, align 4
@DIB3000_SELECT_HP = common dso_local global i32 0, align 4
@DIB3000_HRCH_ON = common dso_local global i32 0, align 4
@DIB3000_SELECT_LP = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"fec: 1_2\0A\00", align 1
@DIB3000MB_REG_VIT_CODE_RATE = common dso_local global i32 0, align 4
@DIB3000_FEC_1_2 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"fec: 2_3\0A\00", align 1
@DIB3000_FEC_2_3 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [10 x i8] c"fec: 3_4\0A\00", align 1
@DIB3000_FEC_3_4 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [10 x i8] c"fec: 5_6\0A\00", align 1
@DIB3000_FEC_5_6 = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"fec: 7_8\0A\00", align 1
@DIB3000_FEC_7_8 = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"fec: none\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"fec: auto\0A\00", align 1
@dib3000_seq = common dso_local global i32*** null, align 8
@.str.28 = private unnamed_addr constant [9 x i8] c"seq? %d\0A\00", align 1
@DIB3000MB_REG_SEQ = common dso_local global i32 0, align 4
@DIB3000MB_REG_ISI = common dso_local global i32 0, align 4
@DIB3000MB_ISI_INHIBIT = common dso_local global i32 0, align 4
@DIB3000MB_ISI_ACTIVATE = common dso_local global i32 0, align 4
@DIB3000MB_REG_SYNC_IMPROVEMENT = common dso_local global i32 0, align 4
@DIB3000MB_SYNC_IMPROVE_2K_1_8 = common dso_local global i32 0, align 4
@DIB3000MB_SYNC_IMPROVE_DEFAULT = common dso_local global i32 0, align 4
@DIB3000MB_REG_UNK_121 = common dso_local global i32 0, align 4
@DIB3000MB_UNK_121_2K = common dso_local global i32 0, align 4
@DIB3000MB_UNK_121_DEFAULT = common dso_local global i32 0, align 4
@DIB3000MB_REG_MOBILE_ALGO = common dso_local global i32 0, align 4
@DIB3000MB_MOBILE_ALGO_OFF = common dso_local global i32 0, align 4
@DIB3000MB_REG_MOBILE_MODE_QAM = common dso_local global i32 0, align 4
@DIB3000MB_MOBILE_MODE_QAM_OFF = common dso_local global i32 0, align 4
@DIB3000MB_REG_MOBILE_MODE = common dso_local global i32 0, align 4
@DIB3000MB_MOBILE_MODE_OFF = common dso_local global i32 0, align 4
@dib3000mb_reg_agc_bandwidth = common dso_local global i32 0, align 4
@dib3000mb_agc_bandwidth_high = common dso_local global i32 0, align 4
@DIB3000MB_REG_RESTART = common dso_local global i32 0, align 4
@DIB3000MB_RESTART_AGC = common dso_local global i32 0, align 4
@DIB3000MB_RESTART_CTRL = common dso_local global i32 0, align 4
@DIB3000MB_RESTART_OFF = common dso_local global i32 0, align 4
@dib3000mb_agc_bandwidth_low = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [21 x i8] c"autosearch enabled.\0A\00", align 1
@DIB3000MB_RESTART_AUTO_SEARCH = common dso_local global i32 0, align 4
@DIB3000MB_REG_AS_IRQ_PENDING = common dso_local global i32 0, align 4
@DIB3000MB_REG_LOCK2_VALUE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [50 x i8] c"search_state after autosearch %d after %d checks\0A\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"reading tuning data from frontend succeeded.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib3000mb_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib3000mb_set_frontend(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dib3000_state*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 2
  %14 = load %struct.dib3000_state*, %struct.dib3000_state** %13, align 8
  store %struct.dib3000_state* %14, %struct.dib3000_state** %6, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  store %struct.dtv_frontend_properties* %16, %struct.dtv_frontend_properties** %7, align 8
  store i32 148, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %92

19:                                               ; preds = %2
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %21 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %23, align 8
  %25 = icmp ne i32 (%struct.dvb_frontend.1*)* %24, null
  br i1 %25, label %26, label %92

26:                                               ; preds = %19
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dvb_frontend.1*)*, i32 (%struct.dvb_frontend.1*)** %30, align 8
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %33 = bitcast %struct.dvb_frontend* %32 to %struct.dvb_frontend.1*
  %34 = call i32 %31(%struct.dvb_frontend.1* %33)
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %37, align 8
  %39 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %26
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %42 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %43, align 8
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %46 = bitcast %struct.dvb_frontend* %45 to %struct.dvb_frontend.0*
  %47 = call i32 %44(%struct.dvb_frontend.0* %46, i32 0)
  br label %48

48:                                               ; preds = %40, %26
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %82 [
    i32 8000000, label %52
    i32 7000000, label %61
    i32 6000000, label %70
    i32 0, label %79
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @dib3000mb_reg_timing_freq, align 4
  %54 = load i32*, i32** @dib3000mb_timing_freq, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wr_foreach(i32 %53, i32 %56)
  %58 = load i32, i32* @dib3000mb_reg_bandwidth, align 4
  %59 = load i32, i32* @dib3000mb_bandwidth_8mhz, align 4
  %60 = call i32 @wr_foreach(i32 %58, i32 %59)
  br label %86

61:                                               ; preds = %48
  %62 = load i32, i32* @dib3000mb_reg_timing_freq, align 4
  %63 = load i32*, i32** @dib3000mb_timing_freq, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @wr_foreach(i32 %62, i32 %65)
  %67 = load i32, i32* @dib3000mb_reg_bandwidth, align 4
  %68 = load i32, i32* @dib3000mb_bandwidth_7mhz, align 4
  %69 = call i32 @wr_foreach(i32 %67, i32 %68)
  br label %86

70:                                               ; preds = %48
  %71 = load i32, i32* @dib3000mb_reg_timing_freq, align 4
  %72 = load i32*, i32** @dib3000mb_timing_freq, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @wr_foreach(i32 %71, i32 %74)
  %76 = load i32, i32* @dib3000mb_reg_bandwidth, align 4
  %77 = load i32, i32* @dib3000mb_bandwidth_6mhz, align 4
  %78 = call i32 @wr_foreach(i32 %76, i32 %77)
  br label %86

79:                                               ; preds = %48
  %80 = load i32, i32* @EOPNOTSUPP, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %438

82:                                               ; preds = %48
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %438

86:                                               ; preds = %70, %61, %52
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sdiv i32 %89, 1000000
  %91 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %86, %19, %2
  %93 = load i32, i32* @DIB3000MB_REG_LOCK1_MASK, align 4
  %94 = load i32, i32* @DIB3000MB_LOCK1_SEARCH_4, align 4
  %95 = call i32 @wr(i32 %93, i32 %94)
  %96 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %97 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %111 [
    i32 130, label %99
    i32 129, label %104
    i32 128, label %109
  ]

99:                                               ; preds = %92
  %100 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @DIB3000MB_REG_FFT, align 4
  %102 = load i32, i32* @DIB3000_TRANSMISSION_MODE_2K, align 4
  %103 = call i32 @wr(i32 %101, i32 %102)
  br label %114

104:                                              ; preds = %92
  %105 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* @DIB3000MB_REG_FFT, align 4
  %107 = load i32, i32* @DIB3000_TRANSMISSION_MODE_8K, align 4
  %108 = call i32 @wr(i32 %106, i32 %107)
  br label %114

109:                                              ; preds = %92
  %110 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %114

111:                                              ; preds = %92
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %438

114:                                              ; preds = %109, %104, %99
  %115 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %116 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %140 [
    i32 146, label %118
    i32 147, label %123
    i32 144, label %128
    i32 145, label %133
    i32 143, label %138
  ]

118:                                              ; preds = %114
  %119 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* @DIB3000MB_REG_GUARD_TIME, align 4
  %121 = load i32, i32* @DIB3000_GUARD_TIME_1_32, align 4
  %122 = call i32 @wr(i32 %120, i32 %121)
  br label %143

123:                                              ; preds = %114
  %124 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* @DIB3000MB_REG_GUARD_TIME, align 4
  %126 = load i32, i32* @DIB3000_GUARD_TIME_1_16, align 4
  %127 = call i32 @wr(i32 %125, i32 %126)
  br label %143

128:                                              ; preds = %114
  %129 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32, i32* @DIB3000MB_REG_GUARD_TIME, align 4
  %131 = load i32, i32* @DIB3000_GUARD_TIME_1_8, align 4
  %132 = call i32 @wr(i32 %130, i32 %131)
  br label %143

133:                                              ; preds = %114
  %134 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %135 = load i32, i32* @DIB3000MB_REG_GUARD_TIME, align 4
  %136 = load i32, i32* @DIB3000_GUARD_TIME_1_4, align 4
  %137 = call i32 @wr(i32 %135, i32 %136)
  br label %143

138:                                              ; preds = %114
  %139 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  br label %143

140:                                              ; preds = %114
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %438

143:                                              ; preds = %138, %133, %128, %123, %118
  %144 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %145 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  switch i32 %146, label %159 [
    i32 136, label %147
    i32 137, label %152
    i32 135, label %154
  ]

147:                                              ; preds = %143
  %148 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %149 = load i32, i32* @DIB3000MB_REG_DDS_INV, align 4
  %150 = load i32, i32* @DIB3000_DDS_INVERSION_OFF, align 4
  %151 = call i32 @wr(i32 %149, i32 %150)
  br label %162

152:                                              ; preds = %143
  %153 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  br label %162

154:                                              ; preds = %143
  %155 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %156 = load i32, i32* @DIB3000MB_REG_DDS_INV, align 4
  %157 = load i32, i32* @DIB3000_DDS_INVERSION_ON, align 4
  %158 = call i32 @wr(i32 %156, i32 %157)
  br label %162

159:                                              ; preds = %143
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %438

162:                                              ; preds = %154, %152, %147
  %163 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %164 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %182 [
    i32 131, label %166
    i32 134, label %171
    i32 133, label %176
    i32 132, label %181
  ]

166:                                              ; preds = %162
  %167 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %168 = load i32, i32* @DIB3000MB_REG_QAM, align 4
  %169 = load i32, i32* @DIB3000_CONSTELLATION_QPSK, align 4
  %170 = call i32 @wr(i32 %168, i32 %169)
  br label %185

171:                                              ; preds = %162
  %172 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %173 = load i32, i32* @DIB3000MB_REG_QAM, align 4
  %174 = load i32, i32* @DIB3000_CONSTELLATION_16QAM, align 4
  %175 = call i32 @wr(i32 %173, i32 %174)
  br label %185

176:                                              ; preds = %162
  %177 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  %178 = load i32, i32* @DIB3000MB_REG_QAM, align 4
  %179 = load i32, i32* @DIB3000_CONSTELLATION_64QAM, align 4
  %180 = call i32 @wr(i32 %178, i32 %179)
  br label %185

181:                                              ; preds = %162
  br label %185

182:                                              ; preds = %162
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %438

185:                                              ; preds = %181, %176, %171, %166
  %186 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %187 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  switch i32 %188, label %208 [
    i32 138, label %189
    i32 142, label %191
    i32 141, label %196
    i32 140, label %201
    i32 139, label %206
  ]

189:                                              ; preds = %185
  %190 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  br label %191

191:                                              ; preds = %185, %189
  %192 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  %193 = load i32, i32* @DIB3000MB_REG_VIT_ALPHA, align 4
  %194 = load i32, i32* @DIB3000_ALPHA_1, align 4
  %195 = call i32 @wr(i32 %193, i32 %194)
  br label %211

196:                                              ; preds = %185
  %197 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  %198 = load i32, i32* @DIB3000MB_REG_VIT_ALPHA, align 4
  %199 = load i32, i32* @DIB3000_ALPHA_2, align 4
  %200 = call i32 @wr(i32 %198, i32 %199)
  br label %211

201:                                              ; preds = %185
  %202 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %203 = load i32, i32* @DIB3000MB_REG_VIT_ALPHA, align 4
  %204 = load i32, i32* @DIB3000_ALPHA_4, align 4
  %205 = call i32 @wr(i32 %203, i32 %204)
  br label %211

206:                                              ; preds = %185
  %207 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %211

208:                                              ; preds = %185
  %209 = load i32, i32* @EINVAL, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %3, align 4
  br label %438

211:                                              ; preds = %206, %201, %196, %191
  %212 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %213 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = icmp eq i32 %214, 138
  br i1 %215, label %216, label %226

216:                                              ; preds = %211
  %217 = load i32, i32* @DIB3000MB_REG_VIT_HRCH, align 4
  %218 = load i32, i32* @DIB3000_HRCH_OFF, align 4
  %219 = call i32 @wr(i32 %217, i32 %218)
  %220 = load i32, i32* @DIB3000MB_REG_VIT_HP, align 4
  %221 = load i32, i32* @DIB3000_SELECT_HP, align 4
  %222 = call i32 @wr(i32 %220, i32 %221)
  %223 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %224 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %8, align 4
  br label %242

226:                                              ; preds = %211
  %227 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %228 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 139
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load i32, i32* @DIB3000MB_REG_VIT_HRCH, align 4
  %233 = load i32, i32* @DIB3000_HRCH_ON, align 4
  %234 = call i32 @wr(i32 %232, i32 %233)
  %235 = load i32, i32* @DIB3000MB_REG_VIT_HP, align 4
  %236 = load i32, i32* @DIB3000_SELECT_LP, align 4
  %237 = call i32 @wr(i32 %235, i32 %236)
  %238 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %239 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  store i32 %240, i32* %8, align 4
  br label %241

241:                                              ; preds = %231, %226
  br label %242

242:                                              ; preds = %241, %216
  %243 = load i32, i32* %8, align 4
  switch i32 %243, label %273 [
    i32 154, label %244
    i32 153, label %249
    i32 152, label %254
    i32 151, label %259
    i32 150, label %264
    i32 148, label %269
    i32 149, label %271
  ]

244:                                              ; preds = %242
  %245 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  %246 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %247 = load i32, i32* @DIB3000_FEC_1_2, align 4
  %248 = call i32 @wr(i32 %246, i32 %247)
  br label %276

249:                                              ; preds = %242
  %250 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %251 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %252 = load i32, i32* @DIB3000_FEC_2_3, align 4
  %253 = call i32 @wr(i32 %251, i32 %252)
  br label %276

254:                                              ; preds = %242
  %255 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %256 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %257 = load i32, i32* @DIB3000_FEC_3_4, align 4
  %258 = call i32 @wr(i32 %256, i32 %257)
  br label %276

259:                                              ; preds = %242
  %260 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0))
  %261 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %262 = load i32, i32* @DIB3000_FEC_5_6, align 4
  %263 = call i32 @wr(i32 %261, i32 %262)
  br label %276

264:                                              ; preds = %242
  %265 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  %266 = load i32, i32* @DIB3000MB_REG_VIT_CODE_RATE, align 4
  %267 = load i32, i32* @DIB3000_FEC_7_8, align 4
  %268 = call i32 @wr(i32 %266, i32 %267)
  br label %276

269:                                              ; preds = %242
  %270 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %276

271:                                              ; preds = %242
  %272 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0))
  br label %276

273:                                              ; preds = %242
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %3, align 4
  br label %438

276:                                              ; preds = %271, %269, %264, %259, %254, %249, %244
  %277 = load i32***, i32**** @dib3000_seq, align 8
  %278 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %279 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 128
  %282 = zext i1 %281 to i32
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32**, i32*** %277, i64 %283
  %285 = load i32**, i32*** %284, align 8
  %286 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %287 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 143
  %290 = zext i1 %289 to i32
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32*, i32** %285, i64 %291
  %293 = load i32*, i32** %292, align 8
  %294 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %295 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, 137
  %298 = zext i1 %297 to i32
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %293, i64 %299
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %10, align 4
  %302 = load i32, i32* %10, align 4
  %303 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* @DIB3000MB_REG_SEQ, align 4
  %305 = load i32, i32* %10, align 4
  %306 = call i32 @wr(i32 %304, i32 %305)
  %307 = load i32, i32* @DIB3000MB_REG_ISI, align 4
  %308 = load i32, i32* %10, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %276
  %311 = load i32, i32* @DIB3000MB_ISI_INHIBIT, align 4
  br label %314

312:                                              ; preds = %276
  %313 = load i32, i32* @DIB3000MB_ISI_ACTIVATE, align 4
  br label %314

314:                                              ; preds = %312, %310
  %315 = phi i32 [ %311, %310 ], [ %313, %312 ]
  %316 = call i32 @wr(i32 %307, i32 %315)
  %317 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %318 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = icmp eq i32 %319, 130
  br i1 %320, label %321, label %338

321:                                              ; preds = %314
  %322 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %323 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 144
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  %327 = load i32, i32* @DIB3000MB_REG_SYNC_IMPROVEMENT, align 4
  %328 = load i32, i32* @DIB3000MB_SYNC_IMPROVE_2K_1_8, align 4
  %329 = call i32 @wr(i32 %327, i32 %328)
  br label %334

330:                                              ; preds = %321
  %331 = load i32, i32* @DIB3000MB_REG_SYNC_IMPROVEMENT, align 4
  %332 = load i32, i32* @DIB3000MB_SYNC_IMPROVE_DEFAULT, align 4
  %333 = call i32 @wr(i32 %331, i32 %332)
  br label %334

334:                                              ; preds = %330, %326
  %335 = load i32, i32* @DIB3000MB_REG_UNK_121, align 4
  %336 = load i32, i32* @DIB3000MB_UNK_121_2K, align 4
  %337 = call i32 @wr(i32 %335, i32 %336)
  br label %342

338:                                              ; preds = %314
  %339 = load i32, i32* @DIB3000MB_REG_UNK_121, align 4
  %340 = load i32, i32* @DIB3000MB_UNK_121_DEFAULT, align 4
  %341 = call i32 @wr(i32 %339, i32 %340)
  br label %342

342:                                              ; preds = %338, %334
  %343 = load i32, i32* @DIB3000MB_REG_MOBILE_ALGO, align 4
  %344 = load i32, i32* @DIB3000MB_MOBILE_ALGO_OFF, align 4
  %345 = call i32 @wr(i32 %343, i32 %344)
  %346 = load i32, i32* @DIB3000MB_REG_MOBILE_MODE_QAM, align 4
  %347 = load i32, i32* @DIB3000MB_MOBILE_MODE_QAM_OFF, align 4
  %348 = call i32 @wr(i32 %346, i32 %347)
  %349 = load i32, i32* @DIB3000MB_REG_MOBILE_MODE, align 4
  %350 = load i32, i32* @DIB3000MB_MOBILE_MODE_OFF, align 4
  %351 = call i32 @wr(i32 %349, i32 %350)
  %352 = load i32, i32* @dib3000mb_reg_agc_bandwidth, align 4
  %353 = load i32, i32* @dib3000mb_agc_bandwidth_high, align 4
  %354 = call i32 @wr_foreach(i32 %352, i32 %353)
  %355 = load i32, i32* @DIB3000MB_REG_ISI, align 4
  %356 = load i32, i32* @DIB3000MB_ISI_ACTIVATE, align 4
  %357 = call i32 @wr(i32 %355, i32 %356)
  %358 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %359 = load i32, i32* @DIB3000MB_RESTART_AGC, align 4
  %360 = load i32, i32* @DIB3000MB_RESTART_CTRL, align 4
  %361 = add nsw i32 %359, %360
  %362 = call i32 @wr(i32 %358, i32 %361)
  %363 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %364 = load i32, i32* @DIB3000MB_RESTART_OFF, align 4
  %365 = call i32 @wr(i32 %363, i32 %364)
  %366 = call i32 @msleep(i32 70)
  %367 = load i32, i32* @dib3000mb_reg_agc_bandwidth, align 4
  %368 = load i32, i32* @dib3000mb_agc_bandwidth_low, align 4
  %369 = call i32 @wr_foreach(i32 %367, i32 %368)
  %370 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %371 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = icmp eq i32 %372, 132
  br i1 %373, label %387, label %374

374:                                              ; preds = %342
  %375 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %376 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 4
  %378 = icmp eq i32 %377, 139
  br i1 %378, label %387, label %379

379:                                              ; preds = %374
  %380 = load i32, i32* %8, align 4
  %381 = icmp eq i32 %380, 149
  br i1 %381, label %387, label %382

382:                                              ; preds = %379
  %383 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %384 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %383, i32 0, i32 3
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 137
  br i1 %386, label %387, label %430

387:                                              ; preds = %382, %379, %374, %342
  store i32 0, i32* %11, align 4
  %388 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0))
  %389 = load i32, i32* @DIB3000MB_REG_ISI, align 4
  %390 = load i32, i32* @DIB3000MB_ISI_INHIBIT, align 4
  %391 = call i32 @wr(i32 %389, i32 %390)
  %392 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %393 = load i32, i32* @DIB3000MB_RESTART_AUTO_SEARCH, align 4
  %394 = call i32 @wr(i32 %392, i32 %393)
  %395 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %396 = load i32, i32* @DIB3000MB_RESTART_OFF, align 4
  %397 = call i32 @wr(i32 %395, i32 %396)
  br label %398

398:                                              ; preds = %411, %387
  %399 = load i32, i32* @DIB3000MB_REG_AS_IRQ_PENDING, align 4
  %400 = call i32 @rd(i32 %399)
  %401 = load i32, i32* @DIB3000MB_REG_LOCK2_VALUE, align 4
  %402 = call i32 @rd(i32 %401)
  %403 = call i32 @dib3000_search_status(i32 %400, i32 %402)
  store i32 %403, i32* %9, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %409

405:                                              ; preds = %398
  %406 = load i32, i32* %11, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %11, align 4
  %408 = icmp slt i32 %406, 100
  br label %409

409:                                              ; preds = %405, %398
  %410 = phi i1 [ false, %398 ], [ %408, %405 ]
  br i1 %410, label %411, label %413

411:                                              ; preds = %409
  %412 = call i32 @msleep(i32 1)
  br label %398

413:                                              ; preds = %409
  %414 = load i32, i32* %9, align 4
  %415 = load i32, i32* %11, align 4
  %416 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0), i32 %414, i32 %415)
  %417 = load i32, i32* %9, align 4
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %419, label %429

419:                                              ; preds = %413
  %420 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %421 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %422 = call i64 @dib3000mb_get_frontend(%struct.dvb_frontend* %420, %struct.dtv_frontend_properties* %421)
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %419
  %425 = call i32 (i8*, ...) @deb_setf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i64 0, i64 0))
  %426 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %427 = call i32 @dib3000mb_set_frontend(%struct.dvb_frontend* %426, i32 0)
  store i32 %427, i32* %3, align 4
  br label %438

428:                                              ; preds = %419
  br label %429

429:                                              ; preds = %428, %413
  br label %437

430:                                              ; preds = %382
  %431 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %432 = load i32, i32* @DIB3000MB_RESTART_CTRL, align 4
  %433 = call i32 @wr(i32 %431, i32 %432)
  %434 = load i32, i32* @DIB3000MB_REG_RESTART, align 4
  %435 = load i32, i32* @DIB3000MB_RESTART_OFF, align 4
  %436 = call i32 @wr(i32 %434, i32 %435)
  br label %437

437:                                              ; preds = %430, %429
  store i32 0, i32* %3, align 4
  br label %438

438:                                              ; preds = %437, %424, %273, %208, %182, %159, %140, %111, %82, %79
  %439 = load i32, i32* %3, align 4
  ret i32 %439
}

declare dso_local i32 @wr_foreach(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @deb_setf(i8*, ...) #1

declare dso_local i32 @wr(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib3000_search_status(i32, i32) #1

declare dso_local i32 @rd(i32) #1

declare dso_local i64 @dib3000mb_get_frontend(%struct.dvb_frontend*, %struct.dtv_frontend_properties*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
