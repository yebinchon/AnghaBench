; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_drxk_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxk_hard.c_drxk_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.drxk_state*, %struct.dtv_frontend_properties }
%struct.drxk_state = type { i64, i32 }
%struct.dtv_frontend_properties = type { %struct.TYPE_28__, %struct.TYPE_22__, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_32__, %struct.TYPE_30__, %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_28__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i8* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i8* }
%struct.TYPE_32__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64, i8* }
%struct.TYPE_30__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i8* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i32 }

@DRXK_NO_DEV = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DRXK_UNINITIALIZED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@MPEG_LOCK = common dso_local global i64 0, align 8
@FEC_LOCK = common dso_local global i64 0, align 8
@DEMOD_LOCK = common dso_local global i64 0, align 8
@FE_SCALE_RELATIVE = common dso_local global i32 0, align 4
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@OFDM_EC_VD_ERR_BIT_CNT__A = common dso_local global i32 0, align 4
@OFDM_EC_VD_IN_BIT_CNT__A = common dso_local global i32 0, align 4
@FEC_RS_NR_BIT_ERRORS__A = common dso_local global i32 0, align 4
@FEC_RS_MEASUREMENT_PRESCALE__A = common dso_local global i32 0, align 4
@FEC_RS_MEASUREMENT_PERIOD__A = common dso_local global i32 0, align 4
@SCU_RAM_FEC_ACCUM_PKT_FAILURES__A = common dso_local global i32 0, align 4
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @drxk_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drxk_get_stats(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.drxk_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1
  store %struct.dtv_frontend_properties* %18, %struct.dtv_frontend_properties** %4, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 0
  %21 = load %struct.drxk_state*, %struct.drxk_state** %20, align 8
  store %struct.drxk_state* %21, %struct.drxk_state** %5, align 8
  %22 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %23 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DRXK_NO_DEV, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %324

30:                                               ; preds = %1
  %31 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %32 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DRXK_UNINITIALIZED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %324

39:                                               ; preds = %30
  %40 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %41 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %40, i32 0, i32 1
  store i32 0, i32* %41, align 8
  %42 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %43 = call i32 @get_lock_status(%struct.drxk_state* %42, i64* %7)
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @MPEG_LOCK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %49 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, 31
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %39
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @FEC_LOCK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %58 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, 15
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @DEMOD_LOCK, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %67 = getelementptr inbounds %struct.drxk_state, %struct.drxk_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, 7
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %72 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %73 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = call i32 @get_strength(%struct.drxk_state* %71, i32* %77)
  %79 = load i32, i32* @FE_SCALE_RELATIVE, align 4
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 4
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @DEMOD_LOCK, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %70
  %90 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %91 = call i32 @get_signal_to_noise(%struct.drxk_state* %90, i32* %16)
  %92 = load i32, i32* %16, align 4
  %93 = mul nsw i32 %92, 100
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  store i32 %93, i32* %99, align 8
  %100 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %101 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %102 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 1
  store i8* %100, i8** %106, align 8
  br label %115

107:                                              ; preds = %70
  %108 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %109 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %110 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 1
  store i8* %108, i8** %114, align 8
  br label %115

115:                                              ; preds = %107, %89
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @FEC_LOCK, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %162

119:                                              ; preds = %115
  %120 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %121 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %122 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %125, i32 0, i32 1
  store i8* %120, i8** %126, align 8
  %127 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %131, i64 0
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 1
  store i8* %127, i8** %133, align 8
  %134 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %135 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %136 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  store i8* %134, i8** %140, align 8
  %141 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %142 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %143 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  store i8* %141, i8** %147, align 8
  %148 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %149 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %150 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i64 0
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 1
  store i8* %148, i8** %154, align 8
  %155 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %156 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %157 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i64 0
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  store i8* %155, i8** %161, align 8
  store i32 0, i32* %2, align 4
  br label %324

162:                                              ; preds = %115
  %163 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %164 = load i32, i32* @OFDM_EC_VD_ERR_BIT_CNT__A, align 4
  %165 = call i32 @read16(%struct.drxk_state* %163, i32 %164, i64* %8)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %322

169:                                              ; preds = %162
  %170 = load i64, i64* %8, align 8
  store i64 %170, i64* %12, align 8
  %171 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %172 = load i32, i32* @OFDM_EC_VD_IN_BIT_CNT__A, align 4
  %173 = call i32 @read16(%struct.drxk_state* %171, i32 %172, i64* %8)
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %322

177:                                              ; preds = %169
  %178 = load i64, i64* %8, align 8
  store i64 %178, i64* %13, align 8
  %179 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %180 = load i32, i32* @FEC_RS_NR_BIT_ERRORS__A, align 4
  %181 = call i32 @read16(%struct.drxk_state* %179, i32 %180, i64* %8)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %322

185:                                              ; preds = %177
  %186 = load i64, i64* %8, align 8
  store i64 %186, i64* %10, align 8
  %187 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %188 = load i32, i32* @FEC_RS_MEASUREMENT_PRESCALE__A, align 4
  %189 = call i32 @read16(%struct.drxk_state* %187, i32 %188, i64* %8)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %185
  br label %322

193:                                              ; preds = %185
  %194 = load i64, i64* %8, align 8
  store i64 %194, i64* %11, align 8
  %195 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %196 = load i32, i32* @FEC_RS_MEASUREMENT_PERIOD__A, align 4
  %197 = call i32 @read16(%struct.drxk_state* %195, i32 %196, i64* %8)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %322

201:                                              ; preds = %193
  %202 = load i64, i64* %8, align 8
  store i64 %202, i64* %14, align 8
  %203 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %204 = load i32, i32* @SCU_RAM_FEC_ACCUM_PKT_FAILURES__A, align 4
  %205 = call i32 @read16(%struct.drxk_state* %203, i32 %204, i64* %8)
  store i32 %205, i32* %6, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %322

209:                                              ; preds = %201
  %210 = load i64, i64* %8, align 8
  store i64 %210, i64* %15, align 8
  %211 = load %struct.drxk_state*, %struct.drxk_state** %5, align 8
  %212 = load i32, i32* @SCU_RAM_FEC_ACCUM_PKT_FAILURES__A, align 4
  %213 = call i32 @write16(%struct.drxk_state* %211, i32 %212, i32 0)
  %214 = load i64, i64* %11, align 8
  %215 = load i64, i64* %10, align 8
  %216 = mul nsw i64 %215, %214
  store i64 %216, i64* %10, align 8
  %217 = load i64, i64* %14, align 8
  %218 = mul nsw i64 %217, 204
  %219 = mul nsw i64 %218, 8
  store i64 %219, i64* %9, align 8
  %220 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %221 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %222 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %225, i32 0, i32 1
  store i8* %220, i8** %226, align 8
  %227 = load i64, i64* %15, align 8
  %228 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %229 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_29__*, %struct.TYPE_29__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i64 0
  %233 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %227
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %233, align 8
  %238 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %239 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %240 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %239, i32 0, i32 4
  %241 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_31__*, %struct.TYPE_31__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 1
  store i8* %238, i8** %244, align 8
  %245 = load i64, i64* %14, align 8
  %246 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %247 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = add nsw i64 %252, %245
  store i64 %253, i64* %251, align 8
  %254 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %255 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %256 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i64 0
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 1
  store i8* %254, i8** %260, align 8
  %261 = load i64, i64* %12, align 8
  %262 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %263 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %262, i32 0, i32 3
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %261
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %267, align 8
  %272 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %273 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %274 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 0
  %276 = load %struct.TYPE_19__*, %struct.TYPE_19__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i64 0
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 1
  store i8* %272, i8** %278, align 8
  %279 = load i64, i64* %13, align 8
  %280 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %281 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i64 0
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, %279
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %285, align 8
  %290 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %291 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %292 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i64 0
  %296 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %295, i32 0, i32 1
  store i8* %290, i8** %296, align 8
  %297 = load i64, i64* %10, align 8
  %298 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %299 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i64 0
  %303 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = add nsw i64 %304, %297
  store i64 %305, i64* %303, align 8
  %306 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %307 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %308 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_23__*, %struct.TYPE_23__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %310, i64 0
  %312 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %311, i32 0, i32 1
  store i8* %306, i8** %312, align 8
  %313 = load i64, i64* %9, align 8
  %314 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %315 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %315, i32 0, i32 0
  %317 = load %struct.TYPE_23__*, %struct.TYPE_23__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %317, i64 0
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, %313
  store i64 %321, i64* %319, align 8
  br label %322

322:                                              ; preds = %209, %208, %200, %192, %184, %176, %168
  %323 = load i32, i32* %6, align 4
  store i32 %323, i32* %2, align 4
  br label %324

324:                                              ; preds = %322, %119, %36, %27
  %325 = load i32, i32* %2, align 4
  ret i32 %325
}

declare dso_local i32 @get_lock_status(%struct.drxk_state*, i64*) #1

declare dso_local i32 @get_strength(%struct.drxk_state*, i32*) #1

declare dso_local i32 @get_signal_to_noise(%struct.drxk_state*, i32*) #1

declare dso_local i32 @read16(%struct.drxk_state*, i32, i64*) #1

declare dso_local i32 @write16(%struct.drxk_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
