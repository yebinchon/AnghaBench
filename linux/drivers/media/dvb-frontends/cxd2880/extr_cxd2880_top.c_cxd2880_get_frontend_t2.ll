; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_get_frontend_t2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_get_frontend_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2880_priv* }
%struct.cxd2880_priv = type { i32, i32 }
%struct.dtv_frontend_properties = type { %struct.TYPE_8__, %struct.TYPE_7__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.cxd2880_dvbt2_l1pre = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"invalid arg.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i8* null, align 8
@TRANSMISSION_MODE_8K = common dso_local global i8* null, align 8
@TRANSMISSION_MODE_4K = common dso_local global i8* null, align 8
@TRANSMISSION_MODE_1K = common dso_local global i8* null, align 8
@TRANSMISSION_MODE_16K = common dso_local global i8* null, align 8
@TRANSMISSION_MODE_32K = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"L1Pre fft_mode is invalid %d\0A\00", align 1
@GUARD_INTERVAL_1_32 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_16 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_8 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_4 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_128 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_19_128 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_19_256 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"L1Pre guard interval is invalid %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"L1Pre err %d\0A\00", align 1
@CXD2880_DVBT2_PLP_DATA = common dso_local global i32 0, align 4
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_3_5 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_4_5 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_NONE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"CodeRate is invalid %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"CodeRate %d\0A\00", align 1
@QPSK = common dso_local global i8* null, align 8
@QAM_16 = common dso_local global i8* null, align 8
@QAM_64 = common dso_local global i8* null, align 8
@QAM_256 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"QAM is invalid %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"QAM %d\0A\00", align 1
@INVERSION_OFF = common dso_local global i8* null, align 8
@INVERSION_ON = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [30 x i8] c"spectrum sense is invalid %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"SpectrumSense %d\0A\00", align 1
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"mon_rf_lvl %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"read_snr %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @cxd2880_get_frontend_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_get_frontend_t2(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_priv*, align 8
  %8 = alloca %struct.cxd2880_dvbt2_l1pre, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store %struct.cxd2880_priv* null, %struct.cxd2880_priv** %7, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %15 = icmp ne %struct.dvb_frontend* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %18 = icmp ne %struct.dtv_frontend_properties* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %2
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %341

23:                                               ; preds = %16
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  %26 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %25, align 8
  store %struct.cxd2880_priv* %26, %struct.cxd2880_priv** %7, align 8
  %27 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %28 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mutex_lock(i32 %29)
  %31 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %32 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %31, i32 0, i32 1
  %33 = call i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(i32* %32, %struct.cxd2880_dvbt2_l1pre* %8)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %35 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mutex_unlock(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %113, label %40

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %67 [
    i32 143, label %43
    i32 140, label %47
    i32 141, label %51
    i32 144, label %55
    i32 145, label %59
    i32 142, label %63
  ]

43:                                               ; preds = %40
  %44 = load i8*, i8** @TRANSMISSION_MODE_2K, align 8
  %45 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %46 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  br label %74

47:                                               ; preds = %40
  %48 = load i8*, i8** @TRANSMISSION_MODE_8K, align 8
  %49 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %49, i32 0, i32 6
  store i8* %48, i8** %50, align 8
  br label %74

51:                                               ; preds = %40
  %52 = load i8*, i8** @TRANSMISSION_MODE_4K, align 8
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  br label %74

55:                                               ; preds = %40
  %56 = load i8*, i8** @TRANSMISSION_MODE_1K, align 8
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %58 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 6
  store i8* %56, i8** %58, align 8
  br label %74

59:                                               ; preds = %40
  %60 = load i8*, i8** @TRANSMISSION_MODE_16K, align 8
  %61 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %62 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  br label %74

63:                                               ; preds = %40
  %64 = load i8*, i8** @TRANSMISSION_MODE_32K, align 8
  %65 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %66 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %65, i32 0, i32 6
  store i8* %64, i8** %66, align 8
  br label %74

67:                                               ; preds = %40
  %68 = load i8*, i8** @TRANSMISSION_MODE_2K, align 8
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 6
  store i8* %68, i8** %70, align 8
  %71 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %8, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67, %63, %59, %55, %51, %47, %43
  %75 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %8, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %105 [
    i32 148, label %77
    i32 149, label %81
    i32 146, label %85
    i32 147, label %89
    i32 150, label %93
    i32 152, label %97
    i32 151, label %101
  ]

77:                                               ; preds = %74
  %78 = load i8*, i8** @GUARD_INTERVAL_1_32, align 8
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  br label %112

81:                                               ; preds = %74
  %82 = load i8*, i8** @GUARD_INTERVAL_1_16, align 8
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  br label %112

85:                                               ; preds = %74
  %86 = load i8*, i8** @GUARD_INTERVAL_1_8, align 8
  %87 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %88 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  br label %112

89:                                               ; preds = %74
  %90 = load i8*, i8** @GUARD_INTERVAL_1_4, align 8
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %92 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 5
  store i8* %90, i8** %92, align 8
  br label %112

93:                                               ; preds = %74
  %94 = load i8*, i8** @GUARD_INTERVAL_1_128, align 8
  %95 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %96 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  br label %112

97:                                               ; preds = %74
  %98 = load i8*, i8** @GUARD_INTERVAL_19_128, align 8
  %99 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %100 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %99, i32 0, i32 5
  store i8* %98, i8** %100, align 8
  br label %112

101:                                              ; preds = %74
  %102 = load i8*, i8** @GUARD_INTERVAL_19_256, align 8
  %103 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %104 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %103, i32 0, i32 5
  store i8* %102, i8** %104, align 8
  br label %112

105:                                              ; preds = %74
  %106 = load i8*, i8** @GUARD_INTERVAL_1_32, align 8
  %107 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %108 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = getelementptr inbounds %struct.cxd2880_dvbt2_l1pre, %struct.cxd2880_dvbt2_l1pre* %8, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %105, %101, %97, %93, %89, %85, %81, %77
  br label %122

113:                                              ; preds = %23
  %114 = load i8*, i8** @TRANSMISSION_MODE_2K, align 8
  %115 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %116 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @GUARD_INTERVAL_1_32, align 8
  %118 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %119 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %113, %112
  %123 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %124 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @mutex_lock(i32 %125)
  %127 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %128 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %127, i32 0, i32 1
  %129 = load i32, i32* @CXD2880_DVBT2_PLP_DATA, align 4
  %130 = call i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(i32* %128, i32 %129, i32* %9)
  store i32 %130, i32* %6, align 4
  %131 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %132 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @mutex_unlock(i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %170, label %137

137:                                              ; preds = %122
  %138 = load i32, i32* %9, align 4
  switch i32 %138, label %163 [
    i32 135, label %139
    i32 132, label %143
    i32 134, label %147
    i32 133, label %151
    i32 131, label %155
    i32 130, label %159
  ]

139:                                              ; preds = %137
  %140 = load i8*, i8** @FEC_1_2, align 8
  %141 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %142 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %141, i32 0, i32 4
  store i8* %140, i8** %142, align 8
  br label %169

143:                                              ; preds = %137
  %144 = load i8*, i8** @FEC_3_5, align 8
  %145 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %146 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %145, i32 0, i32 4
  store i8* %144, i8** %146, align 8
  br label %169

147:                                              ; preds = %137
  %148 = load i8*, i8** @FEC_2_3, align 8
  %149 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %149, i32 0, i32 4
  store i8* %148, i8** %150, align 8
  br label %169

151:                                              ; preds = %137
  %152 = load i8*, i8** @FEC_3_4, align 8
  %153 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %154 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %153, i32 0, i32 4
  store i8* %152, i8** %154, align 8
  br label %169

155:                                              ; preds = %137
  %156 = load i8*, i8** @FEC_4_5, align 8
  %157 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %158 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  br label %169

159:                                              ; preds = %137
  %160 = load i8*, i8** @FEC_5_6, align 8
  %161 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %162 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %161, i32 0, i32 4
  store i8* %160, i8** %162, align 8
  br label %169

163:                                              ; preds = %137
  %164 = load i8*, i8** @FEC_NONE, align 8
  %165 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %166 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %165, i32 0, i32 4
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %163, %159, %155, %151, %147, %143, %139
  br label %176

170:                                              ; preds = %122
  %171 = load i8*, i8** @FEC_NONE, align 8
  %172 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %173 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %170, %169
  %177 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %178 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @mutex_lock(i32 %179)
  %181 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %182 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %181, i32 0, i32 1
  %183 = load i32, i32* @CXD2880_DVBT2_PLP_DATA, align 4
  %184 = call i32 @cxd2880_tnrdmd_dvbt2_mon_qam(i32* %182, i32 %183, i32* %10)
  store i32 %184, i32* %6, align 4
  %185 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %186 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @mutex_unlock(i32 %187)
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %216, label %191

191:                                              ; preds = %176
  %192 = load i32, i32* %10, align 4
  switch i32 %192, label %209 [
    i32 136, label %193
    i32 139, label %197
    i32 137, label %201
    i32 138, label %205
  ]

193:                                              ; preds = %191
  %194 = load i8*, i8** @QPSK, align 8
  %195 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %196 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %195, i32 0, i32 3
  store i8* %194, i8** %196, align 8
  br label %215

197:                                              ; preds = %191
  %198 = load i8*, i8** @QAM_16, align 8
  %199 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %200 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  br label %215

201:                                              ; preds = %191
  %202 = load i8*, i8** @QAM_64, align 8
  %203 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %204 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  br label %215

205:                                              ; preds = %191
  %206 = load i8*, i8** @QAM_256, align 8
  %207 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %208 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  br label %215

209:                                              ; preds = %191
  %210 = load i8*, i8** @QPSK, align 8
  %211 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %212 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %211, i32 0, i32 3
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %209, %205, %201, %197, %193
  br label %222

216:                                              ; preds = %176
  %217 = load i8*, i8** @QPSK, align 8
  %218 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %219 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %218, i32 0, i32 3
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %220)
  br label %222

222:                                              ; preds = %216, %215
  %223 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %224 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @mutex_lock(i32 %225)
  %227 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %228 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %227, i32 0, i32 1
  %229 = call i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(i32* %228, i32* %11)
  store i32 %229, i32* %6, align 4
  %230 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %231 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @mutex_unlock(i32 %232)
  %234 = load i32, i32* %6, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %253, label %236

236:                                              ; preds = %222
  %237 = load i32, i32* %11, align 4
  switch i32 %237, label %246 [
    i32 128, label %238
    i32 129, label %242
  ]

238:                                              ; preds = %236
  %239 = load i8*, i8** @INVERSION_OFF, align 8
  %240 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %241 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %240, i32 0, i32 2
  store i8* %239, i8** %241, align 8
  br label %252

242:                                              ; preds = %236
  %243 = load i8*, i8** @INVERSION_ON, align 8
  %244 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %245 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %244, i32 0, i32 2
  store i8* %243, i8** %245, align 8
  br label %252

246:                                              ; preds = %236
  %247 = load i8*, i8** @INVERSION_OFF, align 8
  %248 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %249 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %248, i32 0, i32 2
  store i8* %247, i8** %249, align 8
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %246, %242, %238
  br label %259

253:                                              ; preds = %222
  %254 = load i8*, i8** @INVERSION_OFF, align 8
  %255 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %256 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %255, i32 0, i32 2
  store i8* %254, i8** %256, align 8
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %257)
  br label %259

259:                                              ; preds = %253, %252
  %260 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %261 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @mutex_lock(i32 %262)
  %264 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %265 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %264, i32 0, i32 1
  %266 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(i32* %265, i32* %13)
  store i32 %266, i32* %6, align 4
  %267 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %268 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @mutex_unlock(i32 %269)
  %271 = load i32, i32* %6, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %291, label %273

273:                                              ; preds = %259
  %274 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %275 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 0
  store i32 1, i32* %276, align 8
  %277 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %278 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %279 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i64 0
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 1
  store i8* %277, i8** %283, align 8
  %284 = load i32, i32* %13, align 4
  %285 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %286 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i64 0
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  store i32 %284, i32* %290, align 8
  br label %304

291:                                              ; preds = %259
  %292 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %293 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 0
  store i32 1, i32* %294, align 8
  %295 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %296 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %297 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i64 0
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 1
  store i8* %295, i8** %301, align 8
  %302 = load i32, i32* %6, align 4
  %303 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %302)
  br label %304

304:                                              ; preds = %291, %273
  %305 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %306 = call i32 @cxd2880_read_snr(%struct.dvb_frontend* %305, i32* %12)
  store i32 %306, i32* %6, align 4
  %307 = load i32, i32* %6, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %327, label %309

309:                                              ; preds = %304
  %310 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %311 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  store i32 1, i32* %312, align 8
  %313 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %314 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %315 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i64 0
  %319 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %318, i32 0, i32 0
  store i8* %313, i8** %319, align 8
  %320 = load i32, i32* %12, align 4
  %321 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %322 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 1
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i64 0
  %326 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %325, i32 0, i32 1
  store i32 %320, i32* %326, align 8
  br label %340

327:                                              ; preds = %304
  %328 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %329 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  store i32 1, i32* %330, align 8
  %331 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %332 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %333 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 0
  store i8* %331, i8** %337, align 8
  %338 = load i32, i32* %6, align 4
  %339 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %338)
  br label %340

340:                                              ; preds = %327, %309
  store i32 0, i32* %3, align 4
  br label %341

341:                                              ; preds = %340, %19
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_l1_pre(i32*, %struct.cxd2880_dvbt2_l1pre*) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_code_rate(i32*, i32, i32*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_qam(i32*, i32, i32*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt2_mon_spectrum_sense(i32*, i32*) #1

declare dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(i32*, i32*) #1

declare dso_local i32 @cxd2880_read_snr(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
