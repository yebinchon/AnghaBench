; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_get_frontend_t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/cxd2880/extr_cxd2880_top.c_cxd2880_get_frontend_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.cxd2880_priv* }
%struct.cxd2880_priv = type { i32, i32 }
%struct.dtv_frontend_properties = type { %struct.TYPE_6__, %struct.TYPE_8__, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i8* }
%struct.cxd2880_dvbt_tpsinfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TRANSMISSION_MODE_2K = common dso_local global i8* null, align 8
@TRANSMISSION_MODE_8K = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"transmission mode is invalid %d\0A\00", align 1
@GUARD_INTERVAL_1_32 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_16 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_8 = common dso_local global i8* null, align 8
@GUARD_INTERVAL_1_4 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"guard interval is invalid %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"ModeGuard err %d\0A\00", align 1
@HIERARCHY_NONE = common dso_local global i8* null, align 8
@HIERARCHY_1 = common dso_local global i8* null, align 8
@HIERARCHY_2 = common dso_local global i8* null, align 8
@HIERARCHY_4 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"TPSInfo hierarchy is invalid %d\0A\00", align 1
@FEC_1_2 = common dso_local global i8* null, align 8
@FEC_2_3 = common dso_local global i8* null, align 8
@FEC_3_4 = common dso_local global i8* null, align 8
@FEC_5_6 = common dso_local global i8* null, align 8
@FEC_7_8 = common dso_local global i8* null, align 8
@FEC_NONE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"TPSInfo rateHP is invalid %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"TPSInfo rateLP is invalid %d\0A\00", align 1
@QPSK = common dso_local global i8* null, align 8
@QAM_16 = common dso_local global i8* null, align 8
@QAM_64 = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"TPSInfo constellation is invalid %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"TPS info err %d\0A\00", align 1
@INVERSION_OFF = common dso_local global i8* null, align 8
@INVERSION_ON = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"spectrum sense is invalid %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"spectrum_sense %d\0A\00", align 1
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [15 x i8] c"mon_rf_lvl %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"read_snr %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @cxd2880_get_frontend_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_get_frontend_t(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd2880_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxd2880_dvbt_tpsinfo, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store %struct.cxd2880_priv* null, %struct.cxd2880_priv** %7, align 8
  store i32 131, i32* %8, align 4
  store i32 138, i32* %9, align 4
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
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %347

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
  %33 = call i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(i32* %32, i32* %8, i32* %9)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %35 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mutex_unlock(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %81, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %50 [
    i32 131, label %42
    i32 130, label %46
  ]

42:                                               ; preds = %40
  %43 = load i8*, i8** @TRANSMISSION_MODE_2K, align 8
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  br label %56

46:                                               ; preds = %40
  %47 = load i8*, i8** @TRANSMISSION_MODE_8K, align 8
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 8
  store i8* %47, i8** %49, align 8
  br label %56

50:                                               ; preds = %40
  %51 = load i8*, i8** @TRANSMISSION_MODE_2K, align 8
  %52 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %53 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %46, %42
  %57 = load i32, i32* %9, align 4
  switch i32 %57, label %74 [
    i32 138, label %58
    i32 139, label %62
    i32 136, label %66
    i32 137, label %70
  ]

58:                                               ; preds = %56
  %59 = load i8*, i8** @GUARD_INTERVAL_1_32, align 8
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 7
  store i8* %59, i8** %61, align 8
  br label %80

62:                                               ; preds = %56
  %63 = load i8*, i8** @GUARD_INTERVAL_1_16, align 8
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 7
  store i8* %63, i8** %65, align 8
  br label %80

66:                                               ; preds = %56
  %67 = load i8*, i8** @GUARD_INTERVAL_1_8, align 8
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  br label %80

70:                                               ; preds = %56
  %71 = load i8*, i8** @GUARD_INTERVAL_1_4, align 8
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 7
  store i8* %71, i8** %73, align 8
  br label %80

74:                                               ; preds = %56
  %75 = load i8*, i8** @GUARD_INTERVAL_1_32, align 8
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %77 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %74, %70, %66, %62, %58
  br label %90

81:                                               ; preds = %23
  %82 = load i8*, i8** @TRANSMISSION_MODE_2K, align 8
  %83 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %84 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @GUARD_INTERVAL_1_32, align 8
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %87 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 7
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %81, %80
  %91 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %92 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mutex_lock(i32 %93)
  %95 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %96 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %95, i32 0, i32 1
  %97 = call i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(i32* %96, %struct.cxd2880_dvbt_tpsinfo* %10)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %99 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mutex_unlock(i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %213, label %104

104:                                              ; preds = %90
  %105 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %10, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %123 [
    i32 132, label %107
    i32 135, label %111
    i32 134, label %115
    i32 133, label %119
  ]

107:                                              ; preds = %104
  %108 = load i8*, i8** @HIERARCHY_NONE, align 8
  %109 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %110 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  br label %130

111:                                              ; preds = %104
  %112 = load i8*, i8** @HIERARCHY_1, align 8
  %113 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %113, i32 0, i32 6
  store i8* %112, i8** %114, align 8
  br label %130

115:                                              ; preds = %104
  %116 = load i8*, i8** @HIERARCHY_2, align 8
  %117 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %118 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  br label %130

119:                                              ; preds = %104
  %120 = load i8*, i8** @HIERARCHY_4, align 8
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  br label %130

123:                                              ; preds = %104
  %124 = load i8*, i8** @HIERARCHY_NONE, align 8
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  %127 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %10, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %123, %119, %115, %111, %107
  %131 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %10, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %153 [
    i32 147, label %133
    i32 146, label %137
    i32 145, label %141
    i32 144, label %145
    i32 143, label %149
  ]

133:                                              ; preds = %130
  %134 = load i8*, i8** @FEC_1_2, align 8
  %135 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  br label %160

137:                                              ; preds = %130
  %138 = load i8*, i8** @FEC_2_3, align 8
  %139 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %140 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %139, i32 0, i32 5
  store i8* %138, i8** %140, align 8
  br label %160

141:                                              ; preds = %130
  %142 = load i8*, i8** @FEC_3_4, align 8
  %143 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %144 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %143, i32 0, i32 5
  store i8* %142, i8** %144, align 8
  br label %160

145:                                              ; preds = %130
  %146 = load i8*, i8** @FEC_5_6, align 8
  %147 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %148 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  br label %160

149:                                              ; preds = %130
  %150 = load i8*, i8** @FEC_7_8, align 8
  %151 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %152 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %151, i32 0, i32 5
  store i8* %150, i8** %152, align 8
  br label %160

153:                                              ; preds = %130
  %154 = load i8*, i8** @FEC_NONE, align 8
  %155 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %155, i32 0, i32 5
  store i8* %154, i8** %156, align 8
  %157 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %10, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %153, %149, %145, %141, %137, %133
  %161 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %10, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  switch i32 %162, label %183 [
    i32 147, label %163
    i32 146, label %167
    i32 145, label %171
    i32 144, label %175
    i32 143, label %179
  ]

163:                                              ; preds = %160
  %164 = load i8*, i8** @FEC_1_2, align 8
  %165 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %166 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %165, i32 0, i32 4
  store i8* %164, i8** %166, align 8
  br label %190

167:                                              ; preds = %160
  %168 = load i8*, i8** @FEC_2_3, align 8
  %169 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %170 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %169, i32 0, i32 4
  store i8* %168, i8** %170, align 8
  br label %190

171:                                              ; preds = %160
  %172 = load i8*, i8** @FEC_3_4, align 8
  %173 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %174 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %173, i32 0, i32 4
  store i8* %172, i8** %174, align 8
  br label %190

175:                                              ; preds = %160
  %176 = load i8*, i8** @FEC_5_6, align 8
  %177 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %178 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %177, i32 0, i32 4
  store i8* %176, i8** %178, align 8
  br label %190

179:                                              ; preds = %160
  %180 = load i8*, i8** @FEC_7_8, align 8
  %181 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %182 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  br label %190

183:                                              ; preds = %160
  %184 = load i8*, i8** @FEC_NONE, align 8
  %185 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %186 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %185, i32 0, i32 4
  store i8* %184, i8** %186, align 8
  %187 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %10, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %183, %179, %175, %171, %167, %163
  %191 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %10, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  switch i32 %192, label %205 [
    i32 140, label %193
    i32 142, label %197
    i32 141, label %201
  ]

193:                                              ; preds = %190
  %194 = load i8*, i8** @QPSK, align 8
  %195 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %196 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %195, i32 0, i32 3
  store i8* %194, i8** %196, align 8
  br label %212

197:                                              ; preds = %190
  %198 = load i8*, i8** @QAM_16, align 8
  %199 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %200 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  br label %212

201:                                              ; preds = %190
  %202 = load i8*, i8** @QAM_64, align 8
  %203 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %204 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %203, i32 0, i32 3
  store i8* %202, i8** %204, align 8
  br label %212

205:                                              ; preds = %190
  %206 = load i8*, i8** @QPSK, align 8
  %207 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %208 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = getelementptr inbounds %struct.cxd2880_dvbt_tpsinfo, %struct.cxd2880_dvbt_tpsinfo* %10, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %205, %201, %197, %193
  br label %228

213:                                              ; preds = %90
  %214 = load i8*, i8** @HIERARCHY_NONE, align 8
  %215 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %216 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %215, i32 0, i32 6
  store i8* %214, i8** %216, align 8
  %217 = load i8*, i8** @FEC_NONE, align 8
  %218 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %219 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %218, i32 0, i32 5
  store i8* %217, i8** %219, align 8
  %220 = load i8*, i8** @FEC_NONE, align 8
  %221 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %222 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %221, i32 0, i32 4
  store i8* %220, i8** %222, align 8
  %223 = load i8*, i8** @QPSK, align 8
  %224 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %225 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %224, i32 0, i32 3
  store i8* %223, i8** %225, align 8
  %226 = load i32, i32* %6, align 4
  %227 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %226)
  br label %228

228:                                              ; preds = %213, %212
  %229 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %230 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @mutex_lock(i32 %231)
  %233 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %234 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %233, i32 0, i32 1
  %235 = call i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(i32* %234, i32* %11)
  store i32 %235, i32* %6, align 4
  %236 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %237 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @mutex_unlock(i32 %238)
  %240 = load i32, i32* %6, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %259, label %242

242:                                              ; preds = %228
  %243 = load i32, i32* %11, align 4
  switch i32 %243, label %252 [
    i32 128, label %244
    i32 129, label %248
  ]

244:                                              ; preds = %242
  %245 = load i8*, i8** @INVERSION_OFF, align 8
  %246 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %247 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %246, i32 0, i32 2
  store i8* %245, i8** %247, align 8
  br label %258

248:                                              ; preds = %242
  %249 = load i8*, i8** @INVERSION_ON, align 8
  %250 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %251 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %250, i32 0, i32 2
  store i8* %249, i8** %251, align 8
  br label %258

252:                                              ; preds = %242
  %253 = load i8*, i8** @INVERSION_OFF, align 8
  %254 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %255 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %254, i32 0, i32 2
  store i8* %253, i8** %255, align 8
  %256 = load i32, i32* %11, align 4
  %257 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %256)
  br label %258

258:                                              ; preds = %252, %248, %244
  br label %265

259:                                              ; preds = %228
  %260 = load i8*, i8** @INVERSION_OFF, align 8
  %261 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %262 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %261, i32 0, i32 2
  store i8* %260, i8** %262, align 8
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %259, %258
  %266 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %267 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @mutex_lock(i32 %268)
  %270 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %271 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %270, i32 0, i32 1
  %272 = call i32 @cxd2880_tnrdmd_mon_rf_lvl(i32* %271, i32* %13)
  store i32 %272, i32* %6, align 4
  %273 = load %struct.cxd2880_priv*, %struct.cxd2880_priv** %7, align 8
  %274 = getelementptr inbounds %struct.cxd2880_priv, %struct.cxd2880_priv* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @mutex_unlock(i32 %275)
  %277 = load i32, i32* %6, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %297, label %279

279:                                              ; preds = %265
  %280 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %281 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  store i32 1, i32* %282, align 8
  %283 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %284 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %285 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i64 0
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 1
  store i8* %283, i8** %289, align 8
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %292 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i64 0
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  store i32 %290, i32* %296, align 8
  br label %310

297:                                              ; preds = %265
  %298 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %299 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  store i32 1, i32* %300, align 8
  %301 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %302 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %303 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 1
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i64 0
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 1
  store i8* %301, i8** %307, align 8
  %308 = load i32, i32* %6, align 4
  %309 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %297, %279
  %311 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %312 = call i32 @cxd2880_read_snr(%struct.dvb_frontend* %311, i32* %12)
  store i32 %312, i32* %6, align 4
  %313 = load i32, i32* %6, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %333, label %315

315:                                              ; preds = %310
  %316 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %317 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 0
  store i32 1, i32* %318, align 8
  %319 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %320 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %321 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_5__*, %struct.TYPE_5__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i64 0
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  store i8* %319, i8** %325, align 8
  %326 = load i32, i32* %12, align 4
  %327 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %328 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_5__*, %struct.TYPE_5__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i64 0
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 1
  store i32 %326, i32* %332, align 8
  br label %346

333:                                              ; preds = %310
  %334 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %335 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %335, i32 0, i32 0
  store i32 1, i32* %336, align 8
  %337 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %338 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %339 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i64 0
  %343 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %342, i32 0, i32 0
  store i8* %337, i8** %343, align 8
  %344 = load i32, i32* %6, align 4
  %345 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %344)
  br label %346

346:                                              ; preds = %333, %315
  store i32 0, i32* %3, align 4
  br label %347

347:                                              ; preds = %346, %19
  %348 = load i32, i32* %3, align 4
  ret i32 %348
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_mode_guard(i32*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_tps_info(i32*, %struct.cxd2880_dvbt_tpsinfo*) #1

declare dso_local i32 @cxd2880_tnrdmd_dvbt_mon_spectrum_sense(i32*, i32*) #1

declare dso_local i32 @cxd2880_tnrdmd_mon_rf_lvl(i32*, i32*) #1

declare dso_local i32 @cxd2880_read_snr(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
