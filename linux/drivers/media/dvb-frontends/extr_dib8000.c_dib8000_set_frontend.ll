; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32, %struct.dib8000_state* }
%struct.dib8000_state = type { i32, i32, %struct.TYPE_20__, %struct.TYPE_21__** }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_21__ = type { %struct.dtv_frontend_properties, %struct.TYPE_18__ }
%struct.dtv_frontend_properties = type { i64, i32, %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_21__*)* }

@.str = private unnamed_addr constant [42 x i8] c"dib8000: must at least specify frequency\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"dib8000: no bandwidth specified, set to default\0A\00", align 1
@MAX_NUMBER_OF_FRONTENDS = common dso_local global i64 0, align 8
@SYS_ISDBT = common dso_local global i32 0, align 4
@OUTMODE_DIVERSITY = common dso_local global i32 0, align 4
@OUTMODE_HIGH_Z = common dso_local global i32 0, align 4
@CT_AGC_START = common dso_local global i32 0, align 4
@CT_AGC_STOP = common dso_local global i64 0, align 8
@CT_DEMOD_START = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FE_STATUS_DEMOD_SUCCESS = common dso_local global i32 0, align 4
@FE_STATUS_FFT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"autosearch succeeded on fe%i\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Restarting frontend %d\0A\00", align 1
@FE_STATUS_TUNE_FAILED = common dso_local global i32 0, align 4
@FE_STATUS_LOCKED = common dso_local global i32 0, align 4
@FE_STATUS_DATA_LOCKED = common dso_local global i32 0, align 4
@CT_DEMOD_STOP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"tuning done with status %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"strange callback time something went wrong\0A\00", align 1
@MPEG_ON_DIBTX = common dso_local global i32 0, align 4
@DIBTX_ON_HOSTBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib8000_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib8000_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  %17 = load %struct.dib8000_state*, %struct.dib8000_state** %16, align 8
  store %struct.dib8000_state* %17, %struct.dib8000_state** %4, align 8
  %18 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %19 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %18, i32 0, i32 3
  %20 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %20, i64 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  store %struct.dtv_frontend_properties* %23, %struct.dtv_frontend_properties** %5, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %789

30:                                               ; preds = %1
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 1
  store i32 6000000, i32* %38, align 8
  br label %39

39:                                               ; preds = %35, %30
  store i64 0, i64* %12, align 8
  br label %40

40:                                               ; preds = %173, %39
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %46 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %45, i32 0, i32 3
  %47 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %47, i64 %48
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = icmp ne %struct.TYPE_21__* %50, null
  br label %52

52:                                               ; preds = %44, %40
  %53 = phi i1 [ false, %40 ], [ %51, %44 ]
  br i1 %53, label %54, label %176

54:                                               ; preds = %52
  %55 = load i32, i32* @SYS_ISDBT, align 4
  %56 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %57 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %56, i32 0, i32 3
  %58 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %58, i64 %59
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 8
  store i32 %55, i32* %63, align 4
  %64 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %65 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %64, i32 0, i32 3
  %66 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %66, i64 %67
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 0
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %72 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %71, i32 0, i32 0
  %73 = call i32 @memcpy(%struct.dtv_frontend_properties* %70, i32* %72, i32 48)
  %74 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %75 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 32912
  br i1 %77, label %78, label %106

78:                                               ; preds = %54
  %79 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %80 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %79, i32 0, i32 3
  %81 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %81, i64 %82
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %83, align 8
  %85 = call i32 @dib8000_set_diversity_in(%struct.TYPE_21__* %84, i32 1)
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %78
  %89 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %90 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %89, i32 0, i32 3
  %91 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %90, align 8
  %92 = load i64, i64* %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %91, i64 %92
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = load i32, i32* @OUTMODE_DIVERSITY, align 4
  %96 = call i32 @dib8000_set_output_mode(%struct.TYPE_21__* %94, i32 %95)
  br label %105

97:                                               ; preds = %78
  %98 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %99 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %98, i32 0, i32 3
  %100 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %100, i64 0
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %101, align 8
  %103 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %104 = call i32 @dib8000_set_output_mode(%struct.TYPE_21__* %102, i32 %103)
  br label %105

105:                                              ; preds = %97, %88
  br label %134

106:                                              ; preds = %54
  %107 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %108 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %107, i32 0, i32 3
  %109 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %108, align 8
  %110 = load i64, i64* %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %109, i64 %110
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = call i32 @dib8096p_set_diversity_in(%struct.TYPE_21__* %112, i32 1)
  %114 = load i64, i64* %12, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %106
  %117 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %118 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %117, i32 0, i32 3
  %119 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %118, align 8
  %120 = load i64, i64* %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %119, i64 %120
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = load i32, i32* @OUTMODE_DIVERSITY, align 4
  %124 = call i32 @dib8096p_set_output_mode(%struct.TYPE_21__* %122, i32 %123)
  br label %133

125:                                              ; preds = %106
  %126 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %127 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %126, i32 0, i32 3
  %128 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %128, i64 0
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %129, align 8
  %131 = load i32, i32* @OUTMODE_HIGH_Z, align 4
  %132 = call i32 @dib8096p_set_output_mode(%struct.TYPE_21__* %130, i32 %131)
  br label %133

133:                                              ; preds = %125, %116
  br label %134

134:                                              ; preds = %133, %105
  %135 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %136 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %135, i32 0, i32 3
  %137 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %137, i64 %138
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %143, align 8
  %145 = icmp ne i32 (%struct.TYPE_21__*)* %144, null
  br i1 %145, label %146, label %164

146:                                              ; preds = %134
  %147 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %148 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %147, i32 0, i32 3
  %149 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %149, i64 %150
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %155, align 8
  %157 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %158 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %157, i32 0, i32 3
  %159 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %158, align 8
  %160 = load i64, i64* %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %159, i64 %160
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = call i32 %156(%struct.TYPE_21__* %162)
  br label %164

164:                                              ; preds = %146, %134
  %165 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %166 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %165, i32 0, i32 3
  %167 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %166, align 8
  %168 = load i64, i64* %12, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %167, i64 %168
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %169, align 8
  %171 = load i32, i32* @CT_AGC_START, align 4
  %172 = call i32 @dib8000_set_tune_state(%struct.TYPE_21__* %170, i32 %171)
  br label %173

173:                                              ; preds = %164
  %174 = load i64, i64* %12, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %12, align 8
  br label %40

176:                                              ; preds = %52
  %177 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %178 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 32912
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %183 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %182, i32 0, i32 3
  %184 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %183, align 8
  %185 = load i64, i64* %12, align 8
  %186 = sub i64 %185, 1
  %187 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %184, i64 %186
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %187, align 8
  %189 = call i32 @dib8000_set_diversity_in(%struct.TYPE_21__* %188, i32 0)
  br label %199

190:                                              ; preds = %176
  %191 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %192 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %191, i32 0, i32 3
  %193 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %192, align 8
  %194 = load i64, i64* %12, align 8
  %195 = sub i64 %194, 1
  %196 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %193, i64 %195
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %196, align 8
  %198 = call i32 @dib8096p_set_diversity_in(%struct.TYPE_21__* %197, i32 0)
  br label %199

199:                                              ; preds = %190, %181
  br label %200

200:                                              ; preds = %292, %199
  %201 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %202 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %201, i32 0, i32 3
  %203 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %203, i64 0
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %204, align 8
  %206 = call i32 @dib8000_agc_startup(%struct.TYPE_21__* %205)
  store i32 %206, i32* %9, align 4
  store i64 1, i64* %12, align 8
  br label %207

207:                                              ; preds = %244, %200
  %208 = load i64, i64* %12, align 8
  %209 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %210 = icmp ult i64 %208, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %207
  %212 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %213 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %212, i32 0, i32 3
  %214 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %213, align 8
  %215 = load i64, i64* %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %214, i64 %215
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %216, align 8
  %218 = icmp ne %struct.TYPE_21__* %217, null
  br label %219

219:                                              ; preds = %211, %207
  %220 = phi i1 [ false, %207 ], [ %218, %211 ]
  br i1 %220, label %221, label %247

221:                                              ; preds = %219
  %222 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %223 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %222, i32 0, i32 3
  %224 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %223, align 8
  %225 = load i64, i64* %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %224, i64 %225
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %226, align 8
  %228 = call i32 @dib8000_agc_startup(%struct.TYPE_21__* %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %9, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %221
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %9, align 4
  br label %243

233:                                              ; preds = %221
  %234 = load i32, i32* %10, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load i32, i32* %10, align 4
  store i32 %241, i32* %9, align 4
  br label %242

242:                                              ; preds = %240, %236, %233
  br label %243

243:                                              ; preds = %242, %231
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* %12, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %12, align 8
  br label %207

247:                                              ; preds = %219
  %248 = load i32, i32* %9, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %295

251:                                              ; preds = %247
  %252 = load i32, i32* %9, align 4
  %253 = add nsw i32 %252, 99
  %254 = mul nsw i32 10, %253
  %255 = sdiv i32 %254, 100
  store i32 %255, i32* %9, align 4
  %256 = load i32, i32* %9, align 4
  %257 = mul nsw i32 %256, 1000
  %258 = load i32, i32* %9, align 4
  %259 = add nsw i32 %258, 1
  %260 = mul nsw i32 %259, 1000
  %261 = call i32 @usleep_range(i32 %257, i32 %260)
  store i64 1, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %262

262:                                              ; preds = %288, %251
  %263 = load i64, i64* %12, align 8
  %264 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %265 = icmp ult i64 %263, %264
  br i1 %265, label %266, label %274

266:                                              ; preds = %262
  %267 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %268 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %267, i32 0, i32 3
  %269 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %268, align 8
  %270 = load i64, i64* %12, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %269, i64 %270
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %271, align 8
  %273 = icmp ne %struct.TYPE_21__* %272, null
  br label %274

274:                                              ; preds = %266, %262
  %275 = phi i1 [ false, %262 ], [ %273, %266 ]
  br i1 %275, label %276, label %291

276:                                              ; preds = %274
  %277 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %278 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %277, i32 0, i32 3
  %279 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %278, align 8
  %280 = load i64, i64* %12, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %279, i64 %280
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %281, align 8
  %283 = call i64 @dib8000_get_tune_state(%struct.TYPE_21__* %282)
  %284 = load i64, i64* @CT_AGC_STOP, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %287

286:                                              ; preds = %276
  store i64 0, i64* %11, align 8
  br label %291

287:                                              ; preds = %276
  br label %288

288:                                              ; preds = %287
  %289 = load i64, i64* %12, align 8
  %290 = add i64 %289, 1
  store i64 %290, i64* %12, align 8
  br label %262

291:                                              ; preds = %286, %274
  br label %292

292:                                              ; preds = %291
  %293 = load i64, i64* %11, align 8
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %200, label %295

295:                                              ; preds = %292, %250
  store i64 0, i64* %12, align 8
  br label %296

296:                                              ; preds = %319, %295
  %297 = load i64, i64* %12, align 8
  %298 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %299 = icmp ult i64 %297, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %296
  %301 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %302 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %301, i32 0, i32 3
  %303 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %302, align 8
  %304 = load i64, i64* %12, align 8
  %305 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %303, i64 %304
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %305, align 8
  %307 = icmp ne %struct.TYPE_21__* %306, null
  br label %308

308:                                              ; preds = %300, %296
  %309 = phi i1 [ false, %296 ], [ %307, %300 ]
  br i1 %309, label %310, label %322

310:                                              ; preds = %308
  %311 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %312 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %311, i32 0, i32 3
  %313 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %312, align 8
  %314 = load i64, i64* %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %313, i64 %314
  %316 = load %struct.TYPE_21__*, %struct.TYPE_21__** %315, align 8
  %317 = load i32, i32* @CT_DEMOD_START, align 4
  %318 = call i32 @dib8000_set_tune_state(%struct.TYPE_21__* %316, i32 %317)
  br label %319

319:                                              ; preds = %310
  %320 = load i64, i64* %12, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %12, align 8
  br label %296

322:                                              ; preds = %308
  store i32 1, i32* %8, align 4
  br label %323

323:                                              ; preds = %745, %322
  store i64 0, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %324

324:                                              ; preds = %651, %323
  %325 = load i64, i64* %12, align 8
  %326 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %327 = icmp ult i64 %325, %326
  br i1 %327, label %328, label %336

328:                                              ; preds = %324
  %329 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %330 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %329, i32 0, i32 3
  %331 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %330, align 8
  %332 = load i64, i64* %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %331, i64 %332
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %333, align 8
  %335 = icmp ne %struct.TYPE_21__* %334, null
  br label %336

336:                                              ; preds = %328, %324
  %337 = phi i1 [ false, %324 ], [ %335, %328 ]
  br i1 %337, label %338, label %654

338:                                              ; preds = %336
  %339 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %340 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %339, i32 0, i32 3
  %341 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %340, align 8
  %342 = load i64, i64* %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %341, i64 %342
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** %343, align 8
  %345 = call i64 @dib8000_tune(%struct.TYPE_21__* %344)
  store i64 %345, i64* %13, align 8
  %346 = load i64, i64* %13, align 8
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %364

348:                                              ; preds = %338
  %349 = load i64, i64* @jiffies, align 8
  %350 = load i64, i64* %13, align 8
  %351 = mul i64 100, %350
  %352 = trunc i64 %351 to i32
  %353 = call i64 @usecs_to_jiffies(i32 %352)
  %354 = add i64 %349, %353
  store i64 %354, i64* %13, align 8
  %355 = load i64, i64* %14, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %348
  %358 = load i64, i64* %13, align 8
  %359 = load i64, i64* %14, align 8
  %360 = icmp ult i64 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %357, %348
  %362 = load i64, i64* %13, align 8
  store i64 %362, i64* %14, align 8
  br label %363

363:                                              ; preds = %361, %357
  br label %364

364:                                              ; preds = %363, %338
  %365 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %366 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %650

369:                                              ; preds = %364
  %370 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %371 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %370, i32 0, i32 3
  %372 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %371, align 8
  %373 = load i64, i64* %12, align 8
  %374 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %372, i64 %373
  %375 = load %struct.TYPE_21__*, %struct.TYPE_21__** %374, align 8
  %376 = call i32 @dib8000_get_status(%struct.TYPE_21__* %375)
  %377 = load i32, i32* @FE_STATUS_DEMOD_SUCCESS, align 4
  %378 = icmp eq i32 %376, %377
  br i1 %378, label %389, label %379

379:                                              ; preds = %369
  %380 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %381 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %380, i32 0, i32 3
  %382 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %381, align 8
  %383 = load i64, i64* %12, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %382, i64 %383
  %385 = load %struct.TYPE_21__*, %struct.TYPE_21__** %384, align 8
  %386 = call i32 @dib8000_get_status(%struct.TYPE_21__* %385)
  %387 = load i32, i32* @FE_STATUS_FFT_SUCCESS, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %649

389:                                              ; preds = %379, %369
  %390 = load i64, i64* %12, align 8
  %391 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %390)
  %392 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %393 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %392, i32 0, i32 3
  %394 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %393, align 8
  %395 = load i64, i64* %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %394, i64 %395
  %397 = load %struct.TYPE_21__*, %struct.TYPE_21__** %396, align 8
  %398 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %399 = call i32 @dib8000_get_frontend(%struct.TYPE_21__* %397, %struct.dtv_frontend_properties* %398)
  %400 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %401 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %400, i32 0, i32 1
  store i32 1, i32* %401, align 4
  store i32 0, i32* %6, align 4
  br label %402

402:                                              ; preds = %645, %389
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %406 = icmp ult i64 %404, %405
  br i1 %406, label %407, label %416

407:                                              ; preds = %402
  %408 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %409 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %408, i32 0, i32 3
  %410 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %409, align 8
  %411 = load i32, i32* %6, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %410, i64 %412
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %413, align 8
  %415 = icmp ne %struct.TYPE_21__* %414, null
  br label %416

416:                                              ; preds = %407, %402
  %417 = phi i1 [ false, %402 ], [ %415, %407 ]
  br i1 %417, label %418, label %648

418:                                              ; preds = %416
  %419 = load i32, i32* %6, align 4
  %420 = sext i32 %419 to i64
  %421 = load i64, i64* %12, align 8
  %422 = icmp ne i64 %420, %421
  br i1 %422, label %423, label %644

423:                                              ; preds = %418
  %424 = load i32, i32* %6, align 4
  %425 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %424)
  %426 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %427 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %426, i32 0, i32 3
  %428 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %427, align 8
  %429 = load i32, i32* %6, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %428, i64 %430
  %432 = load %struct.TYPE_21__*, %struct.TYPE_21__** %431, align 8
  %433 = call i32 @dib8000_tune_restart_from_demod(%struct.TYPE_21__* %432)
  %434 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %435 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %434, i32 0, i32 3
  %436 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %435, align 8
  %437 = load i64, i64* %12, align 8
  %438 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %436, i64 %437
  %439 = load %struct.TYPE_21__*, %struct.TYPE_21__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %440, i32 0, i32 7
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %444 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %443, i32 0, i32 3
  %445 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %444, align 8
  %446 = load i32, i32* %6, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %445, i64 %447
  %449 = load %struct.TYPE_21__*, %struct.TYPE_21__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %450, i32 0, i32 7
  store i32 %442, i32* %451, align 8
  %452 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %453 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %452, i32 0, i32 3
  %454 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %453, align 8
  %455 = load i64, i64* %12, align 8
  %456 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %454, i64 %455
  %457 = load %struct.TYPE_21__*, %struct.TYPE_21__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %458, i32 0, i32 6
  %460 = load i32, i32* %459, align 4
  %461 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %462 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %461, i32 0, i32 3
  %463 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %462, align 8
  %464 = load i32, i32* %6, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %463, i64 %465
  %467 = load %struct.TYPE_21__*, %struct.TYPE_21__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %468, i32 0, i32 6
  store i32 %460, i32* %469, align 4
  %470 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %471 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %470, i32 0, i32 3
  %472 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %471, align 8
  %473 = load i64, i64* %12, align 8
  %474 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %472, i64 %473
  %475 = load %struct.TYPE_21__*, %struct.TYPE_21__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %476, i32 0, i32 5
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %480 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %479, i32 0, i32 3
  %481 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %480, align 8
  %482 = load i32, i32* %6, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %481, i64 %483
  %485 = load %struct.TYPE_21__*, %struct.TYPE_21__** %484, align 8
  %486 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %486, i32 0, i32 5
  store i32 %478, i32* %487, align 8
  %488 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %489 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %488, i32 0, i32 3
  %490 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %489, align 8
  %491 = load i64, i64* %12, align 8
  %492 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %490, i64 %491
  %493 = load %struct.TYPE_21__*, %struct.TYPE_21__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %494, i32 0, i32 4
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %498 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %497, i32 0, i32 3
  %499 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %498, align 8
  %500 = load i32, i32* %6, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %499, i64 %501
  %503 = load %struct.TYPE_21__*, %struct.TYPE_21__** %502, align 8
  %504 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %504, i32 0, i32 4
  store i32 %496, i32* %505, align 4
  %506 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %507 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %506, i32 0, i32 3
  %508 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %507, align 8
  %509 = load i64, i64* %12, align 8
  %510 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %508, i64 %509
  %511 = load %struct.TYPE_21__*, %struct.TYPE_21__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %512, i32 0, i32 3
  %514 = load i32, i32* %513, align 8
  %515 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %516 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %515, i32 0, i32 3
  %517 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %516, align 8
  %518 = load i32, i32* %6, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %517, i64 %519
  %521 = load %struct.TYPE_21__*, %struct.TYPE_21__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %522, i32 0, i32 3
  store i32 %514, i32* %523, align 8
  store i32 0, i32* %7, align 4
  br label %524

524:                                              ; preds = %640, %423
  %525 = load i32, i32* %7, align 4
  %526 = icmp slt i32 %525, 3
  br i1 %526, label %527, label %643

527:                                              ; preds = %524
  %528 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %529 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %528, i32 0, i32 3
  %530 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %529, align 8
  %531 = load i64, i64* %12, align 8
  %532 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %530, i64 %531
  %533 = load %struct.TYPE_21__*, %struct.TYPE_21__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %534, i32 0, i32 2
  %536 = load %struct.TYPE_19__*, %struct.TYPE_19__** %535, align 8
  %537 = load i32, i32* %7, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %539, i32 0, i32 3
  %541 = load i32, i32* %540, align 4
  %542 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %543 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %542, i32 0, i32 3
  %544 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %543, align 8
  %545 = load i32, i32* %6, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %544, i64 %546
  %548 = load %struct.TYPE_21__*, %struct.TYPE_21__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %549, i32 0, i32 2
  %551 = load %struct.TYPE_19__*, %struct.TYPE_19__** %550, align 8
  %552 = load i32, i32* %7, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %551, i64 %553
  %555 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %554, i32 0, i32 3
  store i32 %541, i32* %555, align 4
  %556 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %557 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %556, i32 0, i32 3
  %558 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %557, align 8
  %559 = load i64, i64* %12, align 8
  %560 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %558, i64 %559
  %561 = load %struct.TYPE_21__*, %struct.TYPE_21__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %562, i32 0, i32 2
  %564 = load %struct.TYPE_19__*, %struct.TYPE_19__** %563, align 8
  %565 = load i32, i32* %7, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %567, i32 0, i32 2
  %569 = load i32, i32* %568, align 4
  %570 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %571 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %570, i32 0, i32 3
  %572 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %571, align 8
  %573 = load i32, i32* %6, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %572, i64 %574
  %576 = load %struct.TYPE_21__*, %struct.TYPE_21__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %577, i32 0, i32 2
  %579 = load %struct.TYPE_19__*, %struct.TYPE_19__** %578, align 8
  %580 = load i32, i32* %7, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %579, i64 %581
  %583 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %582, i32 0, i32 2
  store i32 %569, i32* %583, align 4
  %584 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %585 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %584, i32 0, i32 3
  %586 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %585, align 8
  %587 = load i64, i64* %12, align 8
  %588 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %586, i64 %587
  %589 = load %struct.TYPE_21__*, %struct.TYPE_21__** %588, align 8
  %590 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %590, i32 0, i32 2
  %592 = load %struct.TYPE_19__*, %struct.TYPE_19__** %591, align 8
  %593 = load i32, i32* %7, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %592, i64 %594
  %596 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %595, i32 0, i32 1
  %597 = load i32, i32* %596, align 4
  %598 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %599 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %598, i32 0, i32 3
  %600 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %599, align 8
  %601 = load i32, i32* %6, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %600, i64 %602
  %604 = load %struct.TYPE_21__*, %struct.TYPE_21__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %605, i32 0, i32 2
  %607 = load %struct.TYPE_19__*, %struct.TYPE_19__** %606, align 8
  %608 = load i32, i32* %7, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %607, i64 %609
  %611 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %610, i32 0, i32 1
  store i32 %597, i32* %611, align 4
  %612 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %613 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %612, i32 0, i32 3
  %614 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %613, align 8
  %615 = load i64, i64* %12, align 8
  %616 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %614, i64 %615
  %617 = load %struct.TYPE_21__*, %struct.TYPE_21__** %616, align 8
  %618 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %617, i32 0, i32 0
  %619 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %618, i32 0, i32 2
  %620 = load %struct.TYPE_19__*, %struct.TYPE_19__** %619, align 8
  %621 = load i32, i32* %7, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %620, i64 %622
  %624 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %623, i32 0, i32 0
  %625 = load i32, i32* %624, align 4
  %626 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %627 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %626, i32 0, i32 3
  %628 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %627, align 8
  %629 = load i32, i32* %6, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %628, i64 %630
  %632 = load %struct.TYPE_21__*, %struct.TYPE_21__** %631, align 8
  %633 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %632, i32 0, i32 0
  %634 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %633, i32 0, i32 2
  %635 = load %struct.TYPE_19__*, %struct.TYPE_19__** %634, align 8
  %636 = load i32, i32* %7, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %635, i64 %637
  %639 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %638, i32 0, i32 0
  store i32 %625, i32* %639, align 4
  br label %640

640:                                              ; preds = %527
  %641 = load i32, i32* %7, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %7, align 4
  br label %524

643:                                              ; preds = %524
  br label %644

644:                                              ; preds = %643, %418
  br label %645

645:                                              ; preds = %644
  %646 = load i32, i32* %6, align 4
  %647 = add nsw i32 %646, 1
  store i32 %647, i32* %6, align 4
  br label %402

648:                                              ; preds = %416
  br label %649

649:                                              ; preds = %648, %379
  br label %650

650:                                              ; preds = %649, %364
  br label %651

651:                                              ; preds = %650
  %652 = load i64, i64* %12, align 8
  %653 = add i64 %652, 1
  store i64 %653, i64* %12, align 8
  br label %324

654:                                              ; preds = %336
  %655 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %656 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %655, i32 0, i32 3
  %657 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %656, align 8
  %658 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %657, i64 0
  %659 = load %struct.TYPE_21__*, %struct.TYPE_21__** %658, align 8
  %660 = call i32 @dib8000_get_status(%struct.TYPE_21__* %659)
  %661 = load i32, i32* @FE_STATUS_TUNE_FAILED, align 4
  %662 = icmp eq i32 %660, %661
  br i1 %662, label %681, label %663

663:                                              ; preds = %654
  %664 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %665 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %664, i32 0, i32 3
  %666 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %666, i64 0
  %668 = load %struct.TYPE_21__*, %struct.TYPE_21__** %667, align 8
  %669 = call i32 @dib8000_get_status(%struct.TYPE_21__* %668)
  %670 = load i32, i32* @FE_STATUS_LOCKED, align 4
  %671 = icmp eq i32 %669, %670
  br i1 %671, label %681, label %672

672:                                              ; preds = %663
  %673 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %674 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %673, i32 0, i32 3
  %675 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %675, i64 0
  %677 = load %struct.TYPE_21__*, %struct.TYPE_21__** %676, align 8
  %678 = call i32 @dib8000_get_status(%struct.TYPE_21__* %677)
  %679 = load i32, i32* @FE_STATUS_DATA_LOCKED, align 4
  %680 = icmp eq i32 %678, %679
  br i1 %680, label %681, label %723

681:                                              ; preds = %672, %663, %654
  store i32 0, i32* %8, align 4
  store i64 0, i64* %12, align 8
  br label %682

682:                                              ; preds = %708, %681
  %683 = load i64, i64* %12, align 8
  %684 = load i64, i64* @MAX_NUMBER_OF_FRONTENDS, align 8
  %685 = icmp ult i64 %683, %684
  br i1 %685, label %686, label %694

686:                                              ; preds = %682
  %687 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %688 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %687, i32 0, i32 3
  %689 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %688, align 8
  %690 = load i64, i64* %12, align 8
  %691 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %689, i64 %690
  %692 = load %struct.TYPE_21__*, %struct.TYPE_21__** %691, align 8
  %693 = icmp ne %struct.TYPE_21__* %692, null
  br label %694

694:                                              ; preds = %686, %682
  %695 = phi i1 [ false, %682 ], [ %693, %686 ]
  br i1 %695, label %696, label %711

696:                                              ; preds = %694
  %697 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %698 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %697, i32 0, i32 3
  %699 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %698, align 8
  %700 = load i64, i64* %12, align 8
  %701 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %699, i64 %700
  %702 = load %struct.TYPE_21__*, %struct.TYPE_21__** %701, align 8
  %703 = call i64 @dib8000_get_tune_state(%struct.TYPE_21__* %702)
  %704 = load i64, i64* @CT_DEMOD_STOP, align 8
  %705 = icmp ne i64 %703, %704
  br i1 %705, label %706, label %707

706:                                              ; preds = %696
  store i32 1, i32* %8, align 4
  br label %707

707:                                              ; preds = %706, %696
  br label %708

708:                                              ; preds = %707
  %709 = load i64, i64* %12, align 8
  %710 = add i64 %709, 1
  store i64 %710, i64* %12, align 8
  br label %682

711:                                              ; preds = %694
  %712 = load i32, i32* %8, align 4
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %714, label %722

714:                                              ; preds = %711
  %715 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %716 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %715, i32 0, i32 3
  %717 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %716, align 8
  %718 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %717, i64 0
  %719 = load %struct.TYPE_21__*, %struct.TYPE_21__** %718, align 8
  %720 = call i32 @dib8000_get_status(%struct.TYPE_21__* %719)
  %721 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %720)
  br label %722

722:                                              ; preds = %714, %711
  br label %723

723:                                              ; preds = %722, %672
  %724 = load i32, i32* %8, align 4
  %725 = icmp eq i32 %724, 1
  br i1 %725, label %726, label %731

726:                                              ; preds = %723
  %727 = load i64, i64* %14, align 8
  %728 = icmp eq i64 %727, 0
  br i1 %728, label %729, label %731

729:                                              ; preds = %726
  %730 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %731

731:                                              ; preds = %729, %726, %723
  br label %732

732:                                              ; preds = %742, %731
  %733 = load i32, i32* %8, align 4
  %734 = icmp eq i32 %733, 1
  br i1 %734, label %735, label %740

735:                                              ; preds = %732
  %736 = load i64, i64* @jiffies, align 8
  %737 = load i64, i64* %14, align 8
  %738 = call i64 @time_before(i64 %736, i64 %737)
  %739 = icmp ne i64 %738, 0
  br label %740

740:                                              ; preds = %735, %732
  %741 = phi i1 [ false, %732 ], [ %739, %735 ]
  br i1 %741, label %742, label %744

742:                                              ; preds = %740
  %743 = call i32 @msleep(i32 100)
  br label %732

744:                                              ; preds = %740
  br label %745

745:                                              ; preds = %744
  %746 = load i32, i32* %8, align 4
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %323, label %748

748:                                              ; preds = %745
  %749 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %750 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %749, i32 0, i32 0
  %751 = load i32, i32* %750, align 8
  %752 = icmp ne i32 %751, 32912
  br i1 %752, label %753, label %764

753:                                              ; preds = %748
  %754 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %755 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %754, i32 0, i32 3
  %756 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %755, align 8
  %757 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %756, i64 0
  %758 = load %struct.TYPE_21__*, %struct.TYPE_21__** %757, align 8
  %759 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %760 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %759, i32 0, i32 2
  %761 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %760, i32 0, i32 1
  %762 = load i32, i32* %761, align 8
  %763 = call i32 @dib8000_set_output_mode(%struct.TYPE_21__* %758, i32 %762)
  br label %788

764:                                              ; preds = %748
  %765 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %766 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %765, i32 0, i32 3
  %767 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %766, align 8
  %768 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %767, i64 0
  %769 = load %struct.TYPE_21__*, %struct.TYPE_21__** %768, align 8
  %770 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %771 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %770, i32 0, i32 2
  %772 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %771, i32 0, i32 1
  %773 = load i32, i32* %772, align 8
  %774 = call i32 @dib8096p_set_output_mode(%struct.TYPE_21__* %769, i32 %773)
  %775 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %776 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %775, i32 0, i32 2
  %777 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %776, i32 0, i32 0
  %778 = load i64, i64* %777, align 8
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %780, label %787

780:                                              ; preds = %764
  %781 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %782 = load i32, i32* @MPEG_ON_DIBTX, align 4
  %783 = call i32 @dib8096p_setDibTxMux(%struct.dib8000_state* %781, i32 %782)
  %784 = load %struct.dib8000_state*, %struct.dib8000_state** %4, align 8
  %785 = load i32, i32* @DIBTX_ON_HOSTBUS, align 4
  %786 = call i32 @dib8096p_setHostBusMux(%struct.dib8000_state* %784, i32 %785)
  br label %787

787:                                              ; preds = %780, %764
  br label %788

788:                                              ; preds = %787, %753
  store i32 0, i32* %2, align 4
  br label %789

789:                                              ; preds = %788, %28
  %790 = load i32, i32* %2, align 4
  ret i32 %790
}

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.dtv_frontend_properties*, i32*, i32) #1

declare dso_local i32 @dib8000_set_diversity_in(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dib8000_set_output_mode(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dib8096p_set_diversity_in(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dib8096p_set_output_mode(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dib8000_set_tune_state(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @dib8000_agc_startup(%struct.TYPE_21__*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @dib8000_get_tune_state(%struct.TYPE_21__*) #1

declare dso_local i64 @dib8000_tune(%struct.TYPE_21__*) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @dib8000_get_status(%struct.TYPE_21__*) #1

declare dso_local i32 @dib8000_get_frontend(%struct.TYPE_21__*, %struct.dtv_frontend_properties*) #1

declare dso_local i32 @dib8000_tune_restart_from_demod(%struct.TYPE_21__*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dib8096p_setDibTxMux(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8096p_setHostBusMux(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
