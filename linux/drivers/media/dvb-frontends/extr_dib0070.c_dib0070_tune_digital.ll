; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_tune_digital.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0070.c_dib0070_tune_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib0070_tuning = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dib0070_lna_match = type { i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.dib0070_state* }
%struct.TYPE_5__ = type { i32 }
%struct.dib0070_state = type { i32, i32, i32, i32, i32, %struct.dib0070_lna_match*, %struct.dib0070_tuning*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.dib0070_wbd_gain_cfg*, i32 }
%struct.dib0070_wbd_gain_cfg = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, i32 }

@dib0070s_tuning_table = common dso_local global %struct.dib0070_tuning* null, align 8
@dib0070_lna = common dso_local global %struct.dib0070_lna_match* null, align 8
@dib0070_tuning_table = common dso_local global %struct.dib0070_tuning* null, align 8
@dib0070_lna_flip_chip = common dso_local global %struct.dib0070_lna_match* null, align 8
@CT_TUNER_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Tuning for Band: %hd (%d kHz)\0A\00", align 1
@LPF = common dso_local global i32 0, align 4
@BAND_SBAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"REFDIV: %hd, FREF: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"FBDIV: %d, Rest: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Num: %hd, Den: %hd, SD: %hd\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"HFDIV code: %hd\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"VCO = %hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"VCOF: ((%hd*%d) << 1))\0A\00", align 1
@CT_TUNER_STEP_0 = common dso_local global i32 0, align 4
@CT_TUNER_STEP_5 = common dso_local global i32 0, align 4
@CT_TUNER_STEP_4 = common dso_local global i32 0, align 4
@CT_TUNER_STOP = common dso_local global i32 0, align 4
@FE_CALLBACK_TIME_NEVER = common dso_local global i32 0, align 4
@SYS_ISDBT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @dib0070_tune_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0070_tune_digital(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dib0070_state*, align 8
  %4 = alloca %struct.dib0070_tuning*, align 8
  %5 = alloca %struct.dib0070_lna_match*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dib0070_wbd_gain_cfg*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1
  %19 = load %struct.dib0070_state*, %struct.dib0070_state** %18, align 8
  store %struct.dib0070_state* %19, %struct.dib0070_state** %3, align 8
  %20 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %21 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %20, i32 0, i32 0
  store i32* %21, i32** %6, align 8
  store i32 10, i32* %7, align 4
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 1000
  %27 = call i32 @BAND_OF_FREQUENCY(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sdiv i32 %31, 1000
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 131
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %37 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %36, i32 0, i32 7
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  br label %47

41:                                               ; preds = %1
  %42 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %43 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %42, i32 0, i32 7
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i32 [ %40, %35 ], [ %46, %41 ]
  %49 = add nsw i32 %32, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %51 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %102

55:                                               ; preds = %47
  %56 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %57 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %62 [
    i32 130, label %59
  ]

59:                                               ; preds = %55
  %60 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** @dib0070s_tuning_table, align 8
  store %struct.dib0070_tuning* %60, %struct.dib0070_tuning** %4, align 8
  %61 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** @dib0070_lna, align 8
  store %struct.dib0070_lna_match* %61, %struct.dib0070_lna_match** %5, align 8
  br label %75

62:                                               ; preds = %55
  %63 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** @dib0070_tuning_table, align 8
  store %struct.dib0070_tuning* %63, %struct.dib0070_tuning** %4, align 8
  %64 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %65 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %64, i32 0, i32 7
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** @dib0070_lna_flip_chip, align 8
  store %struct.dib0070_lna_match* %71, %struct.dib0070_lna_match** %5, align 8
  br label %74

72:                                               ; preds = %62
  %73 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** @dib0070_lna, align 8
  store %struct.dib0070_lna_match* %73, %struct.dib0070_lna_match** %5, align 8
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74, %59
  br label %76

76:                                               ; preds = %82, %75
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %4, align 8
  %79 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %4, align 8
  %84 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %83, i32 1
  store %struct.dib0070_tuning* %84, %struct.dib0070_tuning** %4, align 8
  br label %76

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %92, %85
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %5, align 8
  %89 = getelementptr inbounds %struct.dib0070_lna_match, %struct.dib0070_lna_match* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %5, align 8
  %94 = getelementptr inbounds %struct.dib0070_lna_match, %struct.dib0070_lna_match* %93, i32 1
  store %struct.dib0070_lna_match* %94, %struct.dib0070_lna_match** %5, align 8
  br label %86

95:                                               ; preds = %86
  %96 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %4, align 8
  %97 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %98 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %97, i32 0, i32 6
  store %struct.dib0070_tuning* %96, %struct.dib0070_tuning** %98, align 8
  %99 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %5, align 8
  %100 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %101 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %100, i32 0, i32 5
  store %struct.dib0070_lna_match* %99, %struct.dib0070_lna_match** %101, align 8
  br label %102

102:                                              ; preds = %95, %47
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @CT_TUNER_START, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %340

107:                                              ; preds = %102
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %112 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %336

116:                                              ; preds = %107
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %119 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %121 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %120, i32 0, i32 6
  %122 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %121, align 8
  %123 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 11
  %126 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %127 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %126, i32 0, i32 6
  %128 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %127, align 8
  %129 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 7
  %132 = or i32 %125, %131
  %133 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %134 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %136 = call i32 @dib0070_write_reg(%struct.dib0070_state* %135, i32 23, i32 48)
  %137 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %138 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %137, i32 0, i32 6
  %139 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %138, align 8
  %140 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %9, align 4
  %143 = mul nsw i32 %141, %142
  %144 = mul nsw i32 %143, 2
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %8, align 4
  switch i32 %145, label %161 [
    i32 131, label %146
    i32 132, label %154
  ]

146:                                              ; preds = %116
  %147 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %148 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %147, i32 0, i32 7
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 9999
  %153 = sdiv i32 %152, 10000
  store i32 %153, i32* %10, align 4
  br label %168

154:                                              ; preds = %116
  %155 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %156 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %155, i32 0, i32 7
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = sdiv i32 %159, 1000
  store i32 %160, i32* %10, align 4
  br label %168

161:                                              ; preds = %116
  %162 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %163 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %162, i32 0, i32 7
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = sdiv i32 %166, 10000
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %161, %154, %146
  %169 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %170 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %169, i32 0, i32 7
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sdiv i32 %173, %174
  store i32 %175, i32* %13, align 4
  %176 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %177 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  switch i32 %178, label %201 [
    i32 130, label %179
    i32 128, label %200
    i32 129, label %200
  ]

179:                                              ; preds = %168
  %180 = load i32, i32* %14, align 4
  %181 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %182 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %181, i32 0, i32 6
  %183 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %182, align 8
  %184 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = sdiv i32 %180, %185
  %187 = load i32, i32* %13, align 4
  %188 = sdiv i32 %186, %187
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %191 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %190, i32 0, i32 6
  %192 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %191, align 8
  %193 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 4
  %195 = sdiv i32 %189, %194
  %196 = load i32, i32* %11, align 4
  %197 = load i32, i32* %13, align 4
  %198 = mul nsw i32 %196, %197
  %199 = sub nsw i32 %195, %198
  store i32 %199, i32* %12, align 4
  br label %212

200:                                              ; preds = %168, %168
  br label %201

201:                                              ; preds = %168, %200
  %202 = load i32, i32* %9, align 4
  %203 = load i32, i32* %13, align 4
  %204 = sdiv i32 %203, 2
  %205 = sdiv i32 %202, %204
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %9, align 4
  %207 = mul nsw i32 2, %206
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %13, align 4
  %210 = mul nsw i32 %208, %209
  %211 = sub nsw i32 %207, %210
  store i32 %211, i32* %12, align 4
  br label %212

212:                                              ; preds = %201, %179
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* @LPF, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 0, i32* %12, align 4
  br label %249

217:                                              ; preds = %212
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @LPF, align 4
  %220 = mul nsw i32 2, %219
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = load i32, i32* @LPF, align 4
  %224 = mul nsw i32 2, %223
  store i32 %224, i32* %12, align 4
  br label %248

225:                                              ; preds = %217
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %13, align 4
  %228 = load i32, i32* @LPF, align 4
  %229 = sub nsw i32 %227, %228
  %230 = icmp sgt i32 %226, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  store i32 0, i32* %12, align 4
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %11, align 4
  br label %247

234:                                              ; preds = %225
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* %13, align 4
  %237 = load i32, i32* @LPF, align 4
  %238 = mul nsw i32 2, %237
  %239 = sub nsw i32 %236, %238
  %240 = icmp sgt i32 %235, %239
  br i1 %240, label %241, label %246

241:                                              ; preds = %234
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* @LPF, align 4
  %244 = mul nsw i32 2, %243
  %245 = sub nsw i32 %242, %244
  store i32 %245, i32* %12, align 4
  br label %246

246:                                              ; preds = %241, %234
  br label %247

247:                                              ; preds = %246, %231
  br label %248

248:                                              ; preds = %247, %222
  br label %249

249:                                              ; preds = %248, %216
  %250 = load i32, i32* %12, align 4
  %251 = mul nsw i32 %250, 6528
  %252 = load i32, i32* %13, align 4
  %253 = sdiv i32 %252, 10
  %254 = sdiv i32 %251, %253
  store i32 %254, i32* %12, align 4
  store i32 1, i32* %15, align 4
  %255 = load i32, i32* %12, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %249
  %258 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %259 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, 20480
  store i32 %261, i32* %259, align 4
  store i32 255, i32* %15, align 4
  br label %262

262:                                              ; preds = %257, %249
  %263 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %264 = load i32, i32* %11, align 4
  %265 = call i32 @dib0070_write_reg(%struct.dib0070_state* %263, i32 17, i32 %264)
  %266 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %267 = load i32, i32* %15, align 4
  %268 = shl i32 %267, 8
  %269 = load i32, i32* %10, align 4
  %270 = or i32 %268, %269
  %271 = call i32 @dib0070_write_reg(%struct.dib0070_state* %266, i32 18, i32 %270)
  %272 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %273 = load i32, i32* %12, align 4
  %274 = call i32 @dib0070_write_reg(%struct.dib0070_state* %272, i32 19, i32 %273)
  %275 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %276 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = icmp eq i32 %277, 130
  br i1 %278, label %279, label %292

279:                                              ; preds = %262
  %280 = load i32, i32* %8, align 4
  %281 = load i32, i32* @BAND_SBAND, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %288

283:                                              ; preds = %279
  %284 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %285 = call i32 @dib0070_set_ctrl_lo5(%struct.dvb_frontend* %284, i32 2, i32 4, i32 3, i32 0)
  %286 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %287 = call i32 @dib0070_write_reg(%struct.dib0070_state* %286, i32 29, i32 65535)
  br label %291

288:                                              ; preds = %279
  %289 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %290 = call i32 @dib0070_set_ctrl_lo5(%struct.dvb_frontend* %289, i32 5, i32 4, i32 3, i32 1)
  br label %291

291:                                              ; preds = %288, %283
  br label %292

292:                                              ; preds = %291, %262
  %293 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %294 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %295 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %294, i32 0, i32 6
  %296 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %295, align 8
  %297 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = or i32 123, %298
  %300 = call i32 @dib0070_write_reg(%struct.dib0070_state* %293, i32 32, i32 %299)
  %301 = load i32, i32* %10, align 4
  %302 = load i32, i32* %13, align 4
  %303 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %301, i32 %302)
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* %12, align 4
  %306 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %304, i32 %305)
  %307 = load i32, i32* %12, align 4
  %308 = load i32, i32* %15, align 4
  %309 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %310 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = ashr i32 %311, 12
  %313 = and i32 %312, 1
  %314 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %307, i32 %308, i32 %313)
  %315 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %316 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %315, i32 0, i32 6
  %317 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %316, align 8
  %318 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %319)
  %321 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %322 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %321, i32 0, i32 6
  %323 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %322, align 8
  %324 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %325)
  %327 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %328 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %327, i32 0, i32 6
  %329 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %328, align 8
  %330 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* %9, align 4
  %333 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %331, i32 %332)
  %334 = load i32, i32* @CT_TUNER_STEP_0, align 4
  %335 = load i32*, i32** %6, align 8
  store i32 %334, i32* %335, align 4
  br label %339

336:                                              ; preds = %107
  store i32 50, i32* %7, align 4
  %337 = load i32, i32* @CT_TUNER_STEP_5, align 4
  %338 = load i32*, i32** %6, align 8
  store i32 %337, i32* %338, align 4
  br label %339

339:                                              ; preds = %336, %292
  br label %464

340:                                              ; preds = %102
  %341 = load i32*, i32** %6, align 8
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @CT_TUNER_START, align 4
  %344 = icmp ugt i32 %342, %343
  br i1 %344, label %345, label %354

345:                                              ; preds = %340
  %346 = load i32*, i32** %6, align 8
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @CT_TUNER_STEP_4, align 4
  %349 = icmp ult i32 %347, %348
  br i1 %349, label %350, label %354

350:                                              ; preds = %345
  %351 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %352 = load i32*, i32** %6, align 8
  %353 = call i32 @dib0070_captrim(%struct.dib0070_state* %351, i32* %352)
  store i32 %353, i32* %7, align 4
  br label %463

354:                                              ; preds = %345, %340
  %355 = load i32*, i32** %6, align 8
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @CT_TUNER_STEP_4, align 4
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %359, label %449

359:                                              ; preds = %354
  %360 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %361 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %360, i32 0, i32 7
  %362 = load %struct.TYPE_6__*, %struct.TYPE_6__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 3
  %364 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %363, align 8
  store %struct.dib0070_wbd_gain_cfg* %364, %struct.dib0070_wbd_gain_cfg** %16, align 8
  %365 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %16, align 8
  %366 = icmp ne %struct.dib0070_wbd_gain_cfg* %365, null
  br i1 %366, label %367, label %399

367:                                              ; preds = %359
  br label %368

368:                                              ; preds = %375, %367
  %369 = load i32, i32* %9, align 4
  %370 = sdiv i32 %369, 1000
  %371 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %16, align 8
  %372 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = icmp sgt i32 %370, %373
  br i1 %374, label %375, label %378

375:                                              ; preds = %368
  %376 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %16, align 8
  %377 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %376, i32 1
  store %struct.dib0070_wbd_gain_cfg* %377, %struct.dib0070_wbd_gain_cfg** %16, align 8
  br label %368

378:                                              ; preds = %368
  %379 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %380 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %16, align 8
  %381 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = shl i32 %382, 9
  %384 = or i32 28672, %383
  %385 = or i32 %384, 128
  %386 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %387 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %386, i32 0, i32 6
  %388 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %387, align 8
  %389 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 4
  %391 = shl i32 %390, 0
  %392 = or i32 %385, %391
  %393 = call i32 @dib0070_write_reg(%struct.dib0070_state* %379, i32 15, i32 %392)
  %394 = load %struct.dib0070_wbd_gain_cfg*, %struct.dib0070_wbd_gain_cfg** %16, align 8
  %395 = getelementptr inbounds %struct.dib0070_wbd_gain_cfg, %struct.dib0070_wbd_gain_cfg* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %398 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %397, i32 0, i32 4
  store i32 %396, i32* %398, align 8
  br label %411

399:                                              ; preds = %359
  %400 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %401 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %402 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %401, i32 0, i32 6
  %403 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %402, align 8
  %404 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %403, i32 0, i32 6
  %405 = load i32, i32* %404, align 4
  %406 = shl i32 %405, 0
  %407 = or i32 31872, %406
  %408 = call i32 @dib0070_write_reg(%struct.dib0070_state* %400, i32 15, i32 %407)
  %409 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %410 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %409, i32 0, i32 4
  store i32 6, i32* %410, align 8
  br label %411

411:                                              ; preds = %399, %378
  %412 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %413 = call i32 @dib0070_write_reg(%struct.dib0070_state* %412, i32 6, i32 16383)
  %414 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %415 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %416 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %415, i32 0, i32 6
  %417 = load %struct.dib0070_tuning*, %struct.dib0070_tuning** %416, align 8
  %418 = getelementptr inbounds %struct.dib0070_tuning, %struct.dib0070_tuning* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 4
  %420 = shl i32 %419, 11
  %421 = or i32 %420, 1792
  %422 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %423 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %422, i32 0, i32 5
  %424 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %423, align 8
  %425 = getelementptr inbounds %struct.dib0070_lna_match, %struct.dib0070_lna_match* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = shl i32 %426, 3
  %428 = or i32 %421, %427
  %429 = or i32 %428, 3
  %430 = call i32 @dib0070_write_reg(%struct.dib0070_state* %414, i32 7, i32 %429)
  %431 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %432 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %433 = getelementptr inbounds %struct.dib0070_state, %struct.dib0070_state* %432, i32 0, i32 5
  %434 = load %struct.dib0070_lna_match*, %struct.dib0070_lna_match** %433, align 8
  %435 = getelementptr inbounds %struct.dib0070_lna_match, %struct.dib0070_lna_match* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = shl i32 %436, 10
  %438 = or i32 %437, 384
  %439 = or i32 %438, 127
  %440 = call i32 @dib0070_write_reg(%struct.dib0070_state* %431, i32 8, i32 %439)
  %441 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %442 = call i32 @dib0070_write_reg(%struct.dib0070_state* %441, i32 13, i32 3456)
  %443 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %444 = call i32 @dib0070_write_reg(%struct.dib0070_state* %443, i32 24, i32 2047)
  %445 = load %struct.dib0070_state*, %struct.dib0070_state** %3, align 8
  %446 = call i32 @dib0070_write_reg(%struct.dib0070_state* %445, i32 23, i32 51)
  %447 = load i32, i32* @CT_TUNER_STEP_5, align 4
  %448 = load i32*, i32** %6, align 8
  store i32 %447, i32* %448, align 4
  br label %462

449:                                              ; preds = %354
  %450 = load i32*, i32** %6, align 8
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* @CT_TUNER_STEP_5, align 4
  %453 = icmp eq i32 %451, %452
  br i1 %453, label %454, label %459

454:                                              ; preds = %449
  %455 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %456 = call i32 @dib0070_set_bandwidth(%struct.dvb_frontend* %455)
  %457 = load i32, i32* @CT_TUNER_STOP, align 4
  %458 = load i32*, i32** %6, align 8
  store i32 %457, i32* %458, align 4
  br label %461

459:                                              ; preds = %449
  %460 = load i32, i32* @FE_CALLBACK_TIME_NEVER, align 4
  store i32 %460, i32* %7, align 4
  br label %461

461:                                              ; preds = %459, %454
  br label %462

462:                                              ; preds = %461, %411
  br label %463

463:                                              ; preds = %462, %350
  br label %464

464:                                              ; preds = %463, %339
  %465 = load i32, i32* %7, align 4
  ret i32 %465
}

declare dso_local i32 @BAND_OF_FREQUENCY(i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @dib0070_write_reg(%struct.dib0070_state*, i32, i32) #1

declare dso_local i32 @dib0070_set_ctrl_lo5(%struct.dvb_frontend*, i32, i32, i32, i32) #1

declare dso_local i32 @dib0070_captrim(%struct.dib0070_state*, i32*) #1

declare dso_local i32 @dib0070_set_bandwidth(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
