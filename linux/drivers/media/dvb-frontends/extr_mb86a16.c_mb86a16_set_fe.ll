; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_set_fe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mb86a16.c_mb86a16_set_fe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mb86a16_state = type { i8, i8, i32 }

@verbose = common dso_local global i32 0, align 4
@MB86A16_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"freq=%d Mhz, symbrt=%d Ksps\00", align 1
@MB86A16_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"initial set failed\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"DAGC data set error\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"EN set error\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"AFCEXEN set error\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CNTM set error\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"S01T set error\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"smrt info get error\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"rf val set error\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"afcex data set error\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"srst error\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"I2C transfer error\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Probably Duplicate Signal, j = %d\00", align 1
@MB86A16_DEBUG = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [58 x i8] c"------ Signal detect ------ [swp_freq=[%07d, srate=%05d]]\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"***** Signal Found *****\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"!!!!! No signal !!!!!, try again...\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"smrt set error\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c" Start Freq Error Check\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"AFCOFS data set error\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"afcex data set\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"rf val set\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"SWEEP Frequency = %d\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"Adjusting .., DELTA Freq = %d, SWEEP Freq=%d\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"NO  --  SIGNAL !\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [42 x i8] c"-------- Viterbi=[%d] SYNC=[%d] ---------\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"NO  -- SYNC\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"NO  -- SIGNAL\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"******* SYNC *******\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"AGC = %02x CNM = %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mb86a16_state*)* @mb86a16_set_fe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb86a16_set_fe(%struct.mb86a16_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mb86a16_state*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [60 x i32], align 16
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  %29 = alloca i8, align 1
  %30 = alloca i8, align 1
  %31 = alloca i8, align 1
  %32 = alloca i8, align 1
  %33 = alloca i8, align 1
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca [20 x i32], align 16
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca [4 x i32], align 16
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  store %struct.mb86a16_state* %0, %struct.mb86a16_state** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %53, align 4
  %55 = load i32, i32* @verbose, align 4
  %56 = load i32, i32* @MB86A16_INFO, align 4
  %57 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %58 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 4
  %60 = zext i8 %59 to i32
  %61 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %62 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %61, i32 0, i32 1
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %55, i32 %56, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %64)
  store i32 3000, i32* %11, align 4
  %66 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %67 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = sdiv i32 %69, 4
  store i32 %70, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %78, %1
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 60
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [60 x i32], [60 x i32]* %13, i64 0, i64 %76
  store i32 -1, i32* %77, align 4
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %71

81:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %89, %81
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 20
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [20 x i32], [20 x i32]* %42, i64 0, i64 %87
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %82

92:                                               ; preds = %82
  store i8 25, i8* %14, align 1
  store i32 0, i32* %52, align 4
  br label %93

93:                                               ; preds = %1377, %92
  %94 = load i32, i32* %52, align 4
  %95 = icmp slt i32 %94, 3
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %53, align 4
  %98 = icmp eq i32 %97, -1
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i1 [ false, %93 ], [ %98, %96 ]
  br i1 %100, label %101, label %1380

101:                                              ; preds = %99
  %102 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %103 = call i32 @SEQ_set(%struct.mb86a16_state* %102, i32 0)
  %104 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %105 = call i32 @iq_vt_set(%struct.mb86a16_state* %104, i32 0)
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 1, i8* %17, align 1
  store i8 0, i8* %19, align 1
  store i8 1, i8* %20, align 1
  store i8 2, i8* %21, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %22, align 1
  %106 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %107 = call i64 @initial_set(%struct.mb86a16_state* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %101
  %110 = load i32, i32* @verbose, align 4
  %111 = load i32, i32* @MB86A16_ERROR, align 4
  %112 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %110, i32 %111, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

113:                                              ; preds = %101
  %114 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %115 = call i64 @DAGC_data_set(%struct.mb86a16_state* %114, i32 3, i32 2)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* @verbose, align 4
  %119 = load i32, i32* @MB86A16_ERROR, align 4
  %120 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %118, i32 %119, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

121:                                              ; preds = %113
  %122 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %123 = load i8, i8* %15, align 1
  %124 = load i8, i8* %16, align 1
  %125 = call i64 @EN_set(%struct.mb86a16_state* %122, i8 zeroext %123, i8 zeroext %124)
  %126 = icmp slt i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @verbose, align 4
  %129 = load i32, i32* @MB86A16_ERROR, align 4
  %130 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %128, i32 %129, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

131:                                              ; preds = %121
  %132 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %133 = load i8, i8* %17, align 1
  %134 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %135 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %134, i32 0, i32 1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = call i64 @AFCEXEN_set(%struct.mb86a16_state* %132, i8 zeroext %133, i32 %137)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %131
  %141 = load i32, i32* @verbose, align 4
  %142 = load i32, i32* @MB86A16_ERROR, align 4
  %143 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %141, i32 %142, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

144:                                              ; preds = %131
  %145 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %146 = load i8, i8* %19, align 1
  %147 = load i8, i8* %20, align 1
  %148 = load i8, i8* %21, align 1
  %149 = call i64 @CNTM_set(%struct.mb86a16_state* %145, i8 zeroext %146, i8 zeroext %147, i8 zeroext %148)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @verbose, align 4
  %153 = load i32, i32* @MB86A16_ERROR, align 4
  %154 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %152, i32 %153, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

155:                                              ; preds = %144
  %156 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %157 = load i8, i8* %23, align 1
  %158 = load i8, i8* %22, align 1
  %159 = call i64 @S01T_set(%struct.mb86a16_state* %156, i8 zeroext %157, i8 zeroext %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* @verbose, align 4
  %163 = load i32, i32* @MB86A16_ERROR, align 4
  %164 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %162, i32 %163, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

165:                                              ; preds = %155
  %166 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %167 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %168 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %167, i32 0, i32 1
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = call i32 @smrt_info_get(%struct.mb86a16_state* %166, i32 %170)
  %172 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %173 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %174 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %173, i32 0, i32 1
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = call i64 @smrt_set(%struct.mb86a16_state* %172, i32 %176)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %165
  %180 = load i32, i32* @verbose, align 4
  %181 = load i32, i32* @MB86A16_ERROR, align 4
  %182 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %180, i32 %181, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

183:                                              ; preds = %165
  %184 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %185 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %186 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %185, i32 0, i32 1
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = call zeroext i8 @vco_dev_get(%struct.mb86a16_state* %184, i32 %188)
  store i8 %189, i8* %29, align 1
  %190 = load i8, i8* %29, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %198

193:                                              ; preds = %183
  %194 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %195 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %194, i32 0, i32 0
  %196 = load i8, i8* %195, align 4
  %197 = zext i8 %196 to i32
  store i32 %197, i32* %9, align 4
  br label %231

198:                                              ; preds = %183
  %199 = load i8, i8* %29, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %230

202:                                              ; preds = %198
  %203 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %204 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %203, i32 0, i32 0
  %205 = load i8, i8* %204, align 4
  %206 = zext i8 %205 to i32
  %207 = srem i32 %206, 2
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %202
  %210 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %211 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %210, i32 0, i32 0
  %212 = load i8, i8* %211, align 4
  %213 = zext i8 %212 to i32
  store i32 %213, i32* %9, align 4
  br label %229

214:                                              ; preds = %202
  %215 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %216 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %215, i32 0, i32 0
  %217 = load i8, i8* %216, align 4
  %218 = zext i8 %217 to i32
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp sgt i32 %220, 2150
  br i1 %221, label %222, label %228

222:                                              ; preds = %214
  %223 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %224 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %223, i32 0, i32 0
  %225 = load i8, i8* %224, align 4
  %226 = zext i8 %225 to i32
  %227 = sub nsw i32 %226, 1
  store i32 %227, i32* %9, align 4
  br label %228

228:                                              ; preds = %222, %214
  br label %229

229:                                              ; preds = %228, %209
  br label %230

230:                                              ; preds = %229, %198
  br label %231

231:                                              ; preds = %230, %193
  store i32 1, i32* %34, align 4
  %232 = load i32, i32* %9, align 4
  %233 = mul nsw i32 %232, 1000
  store i32 %233, i32* %35, align 4
  store i32 0, i32* %37, align 4
  br label %234

234:                                              ; preds = %269, %231
  %235 = load i32, i32* %34, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %270

237:                                              ; preds = %234
  %238 = load i32, i32* %35, align 4
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %238, %239
  store i32 %240, i32* %35, align 4
  %241 = load i32, i32* %37, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %37, align 4
  %243 = load i32, i32* %35, align 4
  %244 = icmp sgt i32 %243, 2150000
  br i1 %244, label %245, label %248

245:                                              ; preds = %237
  store i32 0, i32* %34, align 4
  %246 = load i32, i32* %37, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %37, align 4
  br label %269

248:                                              ; preds = %237
  %249 = load i32, i32* %35, align 4
  %250 = icmp eq i32 %249, 2150000
  br i1 %250, label %267, label %251

251:                                              ; preds = %248
  %252 = load i32, i32* %35, align 4
  %253 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %254 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %253, i32 0, i32 0
  %255 = load i8, i8* %254, align 4
  %256 = zext i8 %255 to i32
  %257 = mul nsw i32 %256, 1000
  %258 = sub nsw i32 %252, %257
  %259 = load i32, i32* %11, align 4
  %260 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %261 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %260, i32 0, i32 1
  %262 = load i8, i8* %261, align 1
  %263 = zext i8 %262 to i32
  %264 = sdiv i32 %263, 4
  %265 = add nsw i32 %259, %264
  %266 = icmp sge i32 %258, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %251, %248
  store i32 0, i32* %34, align 4
  br label %268

268:                                              ; preds = %267, %251
  br label %269

269:                                              ; preds = %268, %245
  br label %234

270:                                              ; preds = %234
  store i32 1, i32* %34, align 4
  %271 = load i32, i32* %9, align 4
  %272 = mul nsw i32 %271, 1000
  store i32 %272, i32* %35, align 4
  store i32 0, i32* %38, align 4
  br label %273

273:                                              ; preds = %308, %270
  %274 = load i32, i32* %34, align 4
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %276, label %309

276:                                              ; preds = %273
  %277 = load i32, i32* %35, align 4
  %278 = load i32, i32* %12, align 4
  %279 = sub nsw i32 %277, %278
  store i32 %279, i32* %35, align 4
  %280 = load i32, i32* %38, align 4
  %281 = add nsw i32 %280, -1
  store i32 %281, i32* %38, align 4
  %282 = load i32, i32* %35, align 4
  %283 = icmp slt i32 %282, 950000
  br i1 %283, label %284, label %287

284:                                              ; preds = %276
  store i32 0, i32* %34, align 4
  %285 = load i32, i32* %38, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %38, align 4
  br label %308

287:                                              ; preds = %276
  %288 = load i32, i32* %35, align 4
  %289 = icmp eq i32 %288, 950000
  br i1 %289, label %306, label %290

290:                                              ; preds = %287
  %291 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %292 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %291, i32 0, i32 0
  %293 = load i8, i8* %292, align 4
  %294 = zext i8 %293 to i32
  %295 = mul nsw i32 %294, 1000
  %296 = load i32, i32* %35, align 4
  %297 = sub nsw i32 %295, %296
  %298 = load i32, i32* %11, align 4
  %299 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %300 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %299, i32 0, i32 1
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = sdiv i32 %302, 4
  %304 = add nsw i32 %298, %303
  %305 = icmp sge i32 %297, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %290, %287
  store i32 0, i32* %34, align 4
  br label %307

307:                                              ; preds = %306, %290
  br label %308

308:                                              ; preds = %307, %284
  br label %273

309:                                              ; preds = %273
  %310 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %311 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %310, i32 0, i32 1
  %312 = load i8, i8* %311, align 1
  %313 = zext i8 %312 to i32
  %314 = sdiv i32 %313, 2
  %315 = add nsw i32 8000, %314
  %316 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %317 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %316, i32 0, i32 1
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = sdiv i32 %315, %319
  store i32 %320, i32* %10, align 4
  %321 = load i32, i32* %10, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %309
  store i32 1, i32* %10, align 4
  br label %324

324:                                              ; preds = %323, %309
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %43, align 4
  store i32 1, i32* %34, align 4
  store i32 0, i32* %46, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store i32 0, i32* %36, align 4
  br label %325

325:                                              ; preds = %581, %324
  %326 = load i32, i32* %34, align 4
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %328, label %582

328:                                              ; preds = %325
  %329 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %330 = load i32, i32* %9, align 4
  %331 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %332 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %331, i32 0, i32 1
  %333 = load i8, i8* %332, align 1
  %334 = zext i8 %333 to i32
  %335 = load i32, i32* %36, align 4
  %336 = load i8, i8* %29, align 1
  %337 = load i32, i32* %12, align 4
  %338 = call i32 @swp_info_get(%struct.mb86a16_state* %329, i32 %330, i32 %334, i32 %335, i8 zeroext %336, i32 %337, i32* %8, i32* %45, i8* %27, i8* %28)
  %339 = call i32 @udelay(i32 100)
  %340 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %341 = load i32, i32* %8, align 4
  %342 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %343 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %342, i32 0, i32 1
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = load i8, i8* %29, align 1
  %347 = call i64 @rf_val_set(%struct.mb86a16_state* %340, i32 %341, i32 %345, i8 zeroext %346)
  %348 = icmp slt i64 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %328
  %350 = load i32, i32* @verbose, align 4
  %351 = load i32, i32* @MB86A16_ERROR, align 4
  %352 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %350, i32 %351, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

353:                                              ; preds = %328
  %354 = call i32 @udelay(i32 100)
  %355 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %356 = load i8, i8* %27, align 1
  %357 = load i8, i8* %28, align 1
  %358 = call i64 @afcex_data_set(%struct.mb86a16_state* %355, i8 zeroext %356, i8 zeroext %357)
  %359 = icmp slt i64 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %353
  %361 = load i32, i32* @verbose, align 4
  %362 = load i32, i32* @MB86A16_ERROR, align 4
  %363 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %361, i32 %362, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

364:                                              ; preds = %353
  %365 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %366 = call i64 @srst(%struct.mb86a16_state* %365)
  %367 = icmp slt i64 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = load i32, i32* @verbose, align 4
  %370 = load i32, i32* @MB86A16_ERROR, align 4
  %371 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %369, i32 %370, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

372:                                              ; preds = %364
  %373 = load i32, i32* %10, align 4
  %374 = call i32 @msleep_interruptible(i32 %373)
  %375 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %376 = call i32 @mb86a16_read(%struct.mb86a16_state* %375, i32 55, i8* %18)
  %377 = icmp ne i32 %376, 2
  br i1 %377, label %378, label %382

378:                                              ; preds = %372
  %379 = load i32, i32* @verbose, align 4
  %380 = load i32, i32* @MB86A16_ERROR, align 4
  %381 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %379, i32 %380, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

382:                                              ; preds = %372
  %383 = load i8, i8* %18, align 1
  %384 = zext i8 %383 to i32
  %385 = load i32, i32* %36, align 4
  %386 = add nsw i32 30, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [60 x i32], [60 x i32]* %13, i64 0, i64 %387
  store i32 %384, i32* %388, align 4
  %389 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %390 = load i32, i32* %6, align 4
  %391 = load i32, i32* %36, align 4
  %392 = getelementptr inbounds [60 x i32], [60 x i32]* %13, i64 0, i64 0
  %393 = load i32, i32* %37, align 4
  %394 = load i32, i32* %38, align 4
  %395 = load i8, i8* %14, align 1
  %396 = load i32, i32* %8, align 4
  %397 = load i32, i32* %45, align 4
  %398 = load i32, i32* %12, align 4
  %399 = call i32 @swp_freq_calcuation(%struct.mb86a16_state* %389, i32 %390, i32 %391, i32* %392, i32 %393, i32 %394, i8 zeroext %395, i32 %396, i32 %397, i32 %398, i8* %18)
  store i32 %399, i32* %41, align 4
  store i32 0, i32* %44, align 4
  store i32 0, i32* %7, align 4
  br label %400

400:                                              ; preds = %422, %382
  %401 = load i32, i32* %7, align 4
  %402 = load i32, i32* %43, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %425

404:                                              ; preds = %400
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [20 x i32], [20 x i32]* %42, i64 0, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %41, align 4
  %410 = sub nsw i32 %408, %409
  %411 = call i32 @abs(i32 %410) #3
  %412 = load i32, i32* %12, align 4
  %413 = mul nsw i32 %412, 3
  %414 = sdiv i32 %413, 2
  %415 = icmp slt i32 %411, %414
  br i1 %415, label %416, label %421

416:                                              ; preds = %404
  store i32 1, i32* %44, align 4
  %417 = load i32, i32* @verbose, align 4
  %418 = load i32, i32* @MB86A16_INFO, align 4
  %419 = load i32, i32* %7, align 4
  %420 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %417, i32 %418, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %419)
  br label %421

421:                                              ; preds = %416, %404
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %7, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %7, align 4
  br label %400

425:                                              ; preds = %400
  %426 = load i32, i32* %44, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %530

428:                                              ; preds = %425
  %429 = load i32, i32* %41, align 4
  %430 = icmp sgt i32 %429, 0
  br i1 %430, label %431, label %530

431:                                              ; preds = %428
  %432 = load i32, i32* %41, align 4
  %433 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %434 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %433, i32 0, i32 0
  %435 = load i8, i8* %434, align 4
  %436 = zext i8 %435 to i32
  %437 = mul nsw i32 %436, 1000
  %438 = sub nsw i32 %432, %437
  %439 = call i32 @abs(i32 %438) #3
  %440 = load i32, i32* %11, align 4
  %441 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %442 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %441, i32 0, i32 1
  %443 = load i8, i8* %442, align 1
  %444 = zext i8 %443 to i32
  %445 = sdiv i32 %444, 6
  %446 = add nsw i32 %440, %445
  %447 = icmp slt i32 %439, %446
  br i1 %447, label %448, label %530

448:                                              ; preds = %431
  %449 = load i32, i32* @verbose, align 4
  %450 = load i32, i32* @MB86A16_DEBUG, align 4
  %451 = load i32, i32* %41, align 4
  %452 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %453 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %452, i32 0, i32 1
  %454 = load i8, i8* %453, align 1
  %455 = zext i8 %454 to i32
  %456 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %449, i32 %450, i32 1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0), i32 %451, i32 %455)
  %457 = load i32, i32* %41, align 4
  %458 = load i32, i32* %43, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [20 x i32], [20 x i32]* %42, i64 0, i64 %459
  store i32 %457, i32* %460, align 4
  %461 = load i32, i32* %43, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %43, align 4
  %463 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %464 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %465 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %464, i32 0, i32 1
  %466 = load i8, i8* %465, align 1
  %467 = zext i8 %466 to i32
  %468 = load i8, i8* %29, align 1
  %469 = load i32, i32* %41, align 4
  %470 = call i32 @swp_info_get2(%struct.mb86a16_state* %463, i32 %467, i8 zeroext %468, i32 %469, i32* %45, i32* %8, i8* %27, i8* %28)
  %471 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %472 = load i32, i32* %8, align 4
  %473 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %474 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %473, i32 0, i32 1
  %475 = load i8, i8* %474, align 1
  %476 = zext i8 %475 to i32
  %477 = load i8, i8* %29, align 1
  %478 = call i64 @rf_val_set(%struct.mb86a16_state* %471, i32 %472, i32 %476, i8 zeroext %477)
  %479 = icmp slt i64 %478, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %448
  %481 = load i32, i32* @verbose, align 4
  %482 = load i32, i32* @MB86A16_ERROR, align 4
  %483 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %481, i32 %482, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

484:                                              ; preds = %448
  %485 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %486 = load i8, i8* %27, align 1
  %487 = load i8, i8* %28, align 1
  %488 = call i64 @afcex_data_set(%struct.mb86a16_state* %485, i8 zeroext %486, i8 zeroext %487)
  %489 = icmp slt i64 %488, 0
  br i1 %489, label %490, label %494

490:                                              ; preds = %484
  %491 = load i32, i32* @verbose, align 4
  %492 = load i32, i32* @MB86A16_ERROR, align 4
  %493 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %491, i32 %492, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

494:                                              ; preds = %484
  %495 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %496 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %497 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %496, i32 0, i32 1
  %498 = load i8, i8* %497, align 1
  %499 = zext i8 %498 to i32
  %500 = call i32 @signal_det(%struct.mb86a16_state* %495, i32 %499, i8* %18)
  store i32 %500, i32* %46, align 4
  %501 = load i32, i32* %46, align 4
  %502 = icmp eq i32 %501, 1
  br i1 %502, label %503, label %507

503:                                              ; preds = %494
  %504 = load i32, i32* @verbose, align 4
  %505 = load i32, i32* @MB86A16_ERROR, align 4
  %506 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %504, i32 %505, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %34, align 4
  br label %529

507:                                              ; preds = %494
  %508 = load i32, i32* @verbose, align 4
  %509 = load i32, i32* @MB86A16_ERROR, align 4
  %510 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %508, i32 %509, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0))
  %511 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %512 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %513 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %512, i32 0, i32 1
  %514 = load i8, i8* %513, align 1
  %515 = zext i8 %514 to i32
  %516 = call i32 @smrt_info_get(%struct.mb86a16_state* %511, i32 %515)
  %517 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %518 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %519 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %518, i32 0, i32 1
  %520 = load i8, i8* %519, align 1
  %521 = zext i8 %520 to i32
  %522 = call i64 @smrt_set(%struct.mb86a16_state* %517, i32 %521)
  %523 = icmp slt i64 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %507
  %525 = load i32, i32* @verbose, align 4
  %526 = load i32, i32* @MB86A16_ERROR, align 4
  %527 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %525, i32 %526, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

528:                                              ; preds = %507
  br label %529

529:                                              ; preds = %528, %503
  br label %530

530:                                              ; preds = %529, %431, %428, %425
  %531 = load i32, i32* %36, align 4
  %532 = load i32, i32* %37, align 4
  %533 = icmp sgt i32 %531, %532
  br i1 %533, label %534, label %535

534:                                              ; preds = %530
  store i32 1, i32* %39, align 4
  br label %535

535:                                              ; preds = %534, %530
  %536 = load i32, i32* %36, align 4
  %537 = load i32, i32* %38, align 4
  %538 = icmp slt i32 %536, %537
  br i1 %538, label %539, label %540

539:                                              ; preds = %535
  store i32 1, i32* %40, align 4
  br label %540

540:                                              ; preds = %539, %535
  %541 = load i32, i32* %6, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %6, align 4
  %543 = load i32, i32* %6, align 4
  %544 = srem i32 %543, 2
  %545 = icmp eq i32 %544, 1
  br i1 %545, label %546, label %552

546:                                              ; preds = %540
  %547 = load i32, i32* %39, align 4
  %548 = icmp eq i32 %547, 1
  br i1 %548, label %549, label %552

549:                                              ; preds = %546
  %550 = load i32, i32* %6, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %6, align 4
  br label %552

552:                                              ; preds = %549, %546, %540
  %553 = load i32, i32* %6, align 4
  %554 = srem i32 %553, 2
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %562

556:                                              ; preds = %552
  %557 = load i32, i32* %40, align 4
  %558 = icmp eq i32 %557, 1
  br i1 %558, label %559, label %562

559:                                              ; preds = %556
  %560 = load i32, i32* %6, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %6, align 4
  br label %562

562:                                              ; preds = %559, %556, %552
  %563 = load i32, i32* %6, align 4
  %564 = srem i32 %563, 2
  %565 = icmp eq i32 %564, 1
  br i1 %565, label %566, label %570

566:                                              ; preds = %562
  %567 = load i32, i32* %6, align 4
  %568 = add nsw i32 %567, 1
  %569 = sdiv i32 %568, 2
  store i32 %569, i32* %36, align 4
  br label %574

570:                                              ; preds = %562
  %571 = load i32, i32* %6, align 4
  %572 = sub nsw i32 0, %571
  %573 = sdiv i32 %572, 2
  store i32 %573, i32* %36, align 4
  br label %574

574:                                              ; preds = %570, %566
  %575 = load i32, i32* %39, align 4
  %576 = icmp eq i32 %575, 1
  br i1 %576, label %577, label %581

577:                                              ; preds = %574
  %578 = load i32, i32* %40, align 4
  %579 = icmp eq i32 %578, 1
  br i1 %579, label %580, label %581

580:                                              ; preds = %577
  store i32 0, i32* %34, align 4
  br label %581

581:                                              ; preds = %580, %577, %574
  br label %325

582:                                              ; preds = %325
  %583 = load i32, i32* %46, align 4
  %584 = icmp eq i32 %583, 1
  br i1 %584, label %585, label %1353

585:                                              ; preds = %582
  %586 = load i32, i32* @verbose, align 4
  %587 = load i32, i32* @MB86A16_INFO, align 4
  %588 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %586, i32 %587, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  store i8 7, i8* %23, align 1
  store i8 1, i8* %22, align 1
  store i8 0, i8* %15, align 1
  store i8 1, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %589 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %590 = load i8, i8* %23, align 1
  %591 = load i8, i8* %22, align 1
  %592 = call i64 @S01T_set(%struct.mb86a16_state* %589, i8 zeroext %590, i8 zeroext %591)
  %593 = icmp slt i64 %592, 0
  br i1 %593, label %594, label %598

594:                                              ; preds = %585
  %595 = load i32, i32* @verbose, align 4
  %596 = load i32, i32* @MB86A16_ERROR, align 4
  %597 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %595, i32 %596, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

598:                                              ; preds = %585
  %599 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %600 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %601 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %600, i32 0, i32 1
  %602 = load i8, i8* %601, align 1
  %603 = zext i8 %602 to i32
  %604 = call i32 @smrt_info_get(%struct.mb86a16_state* %599, i32 %603)
  %605 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %606 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %607 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %606, i32 0, i32 1
  %608 = load i8, i8* %607, align 1
  %609 = zext i8 %608 to i32
  %610 = call i64 @smrt_set(%struct.mb86a16_state* %605, i32 %609)
  %611 = icmp slt i64 %610, 0
  br i1 %611, label %612, label %616

612:                                              ; preds = %598
  %613 = load i32, i32* @verbose, align 4
  %614 = load i32, i32* @MB86A16_ERROR, align 4
  %615 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %613, i32 %614, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

616:                                              ; preds = %598
  %617 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %618 = load i8, i8* %15, align 1
  %619 = load i8, i8* %16, align 1
  %620 = call i64 @EN_set(%struct.mb86a16_state* %617, i8 zeroext %618, i8 zeroext %619)
  %621 = icmp slt i64 %620, 0
  br i1 %621, label %622, label %626

622:                                              ; preds = %616
  %623 = load i32, i32* @verbose, align 4
  %624 = load i32, i32* @MB86A16_ERROR, align 4
  %625 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %623, i32 %624, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

626:                                              ; preds = %616
  %627 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %628 = load i8, i8* %17, align 1
  %629 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %630 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %629, i32 0, i32 1
  %631 = load i8, i8* %630, align 1
  %632 = zext i8 %631 to i32
  %633 = call i64 @AFCEXEN_set(%struct.mb86a16_state* %627, i8 zeroext %628, i32 %632)
  %634 = icmp slt i64 %633, 0
  br i1 %634, label %635, label %639

635:                                              ; preds = %626
  %636 = load i32, i32* @verbose, align 4
  %637 = load i32, i32* @MB86A16_ERROR, align 4
  %638 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %636, i32 %637, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

639:                                              ; preds = %626
  %640 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %641 = load i32, i32* %45, align 4
  %642 = call i32 @afcex_info_get(%struct.mb86a16_state* %640, i32 %641, i8* %27, i8* %28)
  %643 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %644 = load i8, i8* %27, align 1
  %645 = load i8, i8* %28, align 1
  %646 = call i64 @afcofs_data_set(%struct.mb86a16_state* %643, i8 zeroext %644, i8 zeroext %645)
  %647 = icmp slt i64 %646, 0
  br i1 %647, label %648, label %652

648:                                              ; preds = %639
  %649 = load i32, i32* @verbose, align 4
  %650 = load i32, i32* @MB86A16_ERROR, align 4
  %651 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %649, i32 %650, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

652:                                              ; preds = %639
  %653 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %654 = call i64 @srst(%struct.mb86a16_state* %653)
  %655 = icmp slt i64 %654, 0
  br i1 %655, label %656, label %660

656:                                              ; preds = %652
  %657 = load i32, i32* @verbose, align 4
  %658 = load i32, i32* @MB86A16_ERROR, align 4
  %659 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %657, i32 %658, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

660:                                              ; preds = %652
  %661 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %662 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %661, i32 0, i32 2
  %663 = load i32, i32* %662, align 4
  %664 = sdiv i32 200000, %663
  %665 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %666 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %665, i32 0, i32 1
  %667 = load i8, i8* %666, align 1
  %668 = zext i8 %667 to i32
  %669 = sdiv i32 200000, %668
  %670 = add nsw i32 %664, %669
  store i32 %670, i32* %10, align 4
  %671 = load i32, i32* %10, align 4
  %672 = call i32 @msleep(i32 %671)
  %673 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %674 = call i32 @afcerr_chk(%struct.mb86a16_state* %673)
  store i32 %674, i32* %47, align 4
  %675 = load i32, i32* %47, align 4
  %676 = icmp eq i32 %675, -1
  br i1 %676, label %677, label %678

677:                                              ; preds = %660
  store i32 -1, i32* %2, align 4
  br label %1393

678:                                              ; preds = %660
  %679 = load i32, i32* %8, align 4
  %680 = mul nsw i32 %679, 1000
  %681 = load i32, i32* %47, align 4
  %682 = add nsw i32 %680, %681
  store i32 %682, i32* %41, align 4
  store i8 1, i8* %17, align 1
  %683 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %684 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %683, i32 0, i32 1
  %685 = load i8, i8* %684, align 1
  %686 = zext i8 %685 to i32
  %687 = icmp sge i32 %686, 1500
  br i1 %687, label %688, label %694

688:                                              ; preds = %678
  %689 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %690 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %689, i32 0, i32 1
  %691 = load i8, i8* %690, align 1
  %692 = zext i8 %691 to i32
  %693 = sdiv i32 %692, 3
  store i32 %693, i32* %51, align 4
  br label %700

694:                                              ; preds = %678
  %695 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %696 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %695, i32 0, i32 1
  %697 = load i8, i8* %696, align 1
  %698 = zext i8 %697 to i32
  %699 = sdiv i32 %698, 2
  store i32 %699, i32* %51, align 4
  br label %700

700:                                              ; preds = %694, %688
  %701 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %702 = load i32, i32* %51, align 4
  %703 = call i32 @smrt_info_get(%struct.mb86a16_state* %701, i32 %702)
  %704 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %705 = load i32, i32* %51, align 4
  %706 = call i64 @smrt_set(%struct.mb86a16_state* %704, i32 %705)
  %707 = icmp slt i64 %706, 0
  br i1 %707, label %708, label %712

708:                                              ; preds = %700
  %709 = load i32, i32* @verbose, align 4
  %710 = load i32, i32* @MB86A16_ERROR, align 4
  %711 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %709, i32 %710, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

712:                                              ; preds = %700
  %713 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %714 = load i8, i8* %17, align 1
  %715 = load i32, i32* %51, align 4
  %716 = call i64 @AFCEXEN_set(%struct.mb86a16_state* %713, i8 zeroext %714, i32 %715)
  %717 = icmp slt i64 %716, 0
  br i1 %717, label %718, label %722

718:                                              ; preds = %712
  %719 = load i32, i32* @verbose, align 4
  %720 = load i32, i32* @MB86A16_ERROR, align 4
  %721 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %719, i32 %720, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

722:                                              ; preds = %712
  %723 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %724 = load i32, i32* %51, align 4
  %725 = call zeroext i8 @vco_dev_get(%struct.mb86a16_state* %723, i32 %724)
  store i8 %725, i8* %29, align 1
  %726 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %727 = call i64 @DAGC_data_set(%struct.mb86a16_state* %726, i32 2, i32 0)
  %728 = icmp slt i64 %727, 0
  br i1 %728, label %729, label %733

729:                                              ; preds = %722
  %730 = load i32, i32* @verbose, align 4
  %731 = load i32, i32* @MB86A16_ERROR, align 4
  %732 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %730, i32 %731, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

733:                                              ; preds = %722
  store i32 0, i32* %6, align 4
  br label %734

734:                                              ; preds = %788, %733
  %735 = load i32, i32* %6, align 4
  %736 = icmp slt i32 %735, 3
  br i1 %736, label %737, label %791

737:                                              ; preds = %734
  %738 = load i32, i32* %41, align 4
  %739 = load i32, i32* %6, align 4
  %740 = sub nsw i32 %739, 1
  %741 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %742 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %741, i32 0, i32 1
  %743 = load i8, i8* %742, align 1
  %744 = zext i8 %743 to i32
  %745 = mul nsw i32 %740, %744
  %746 = sdiv i32 %745, 8
  %747 = add nsw i32 %738, %746
  store i32 %747, i32* %48, align 4
  %748 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %749 = load i32, i32* %51, align 4
  %750 = load i8, i8* %29, align 1
  %751 = load i32, i32* %48, align 4
  %752 = call i32 @swp_info_get2(%struct.mb86a16_state* %748, i32 %749, i8 zeroext %750, i32 %751, i32* %45, i32* %8, i8* %27, i8* %28)
  %753 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %754 = load i32, i32* %8, align 4
  %755 = load i32, i32* %51, align 4
  %756 = load i8, i8* %29, align 1
  %757 = call i64 @rf_val_set(%struct.mb86a16_state* %753, i32 %754, i32 %755, i8 zeroext %756)
  %758 = icmp slt i64 %757, 0
  br i1 %758, label %759, label %763

759:                                              ; preds = %737
  %760 = load i32, i32* @verbose, align 4
  %761 = load i32, i32* @MB86A16_ERROR, align 4
  %762 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %760, i32 %761, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

763:                                              ; preds = %737
  %764 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %765 = load i8, i8* %27, align 1
  %766 = load i8, i8* %28, align 1
  %767 = call i64 @afcex_data_set(%struct.mb86a16_state* %764, i8 zeroext %765, i8 zeroext %766)
  %768 = icmp slt i64 %767, 0
  br i1 %768, label %769, label %773

769:                                              ; preds = %763
  %770 = load i32, i32* @verbose, align 4
  %771 = load i32, i32* @MB86A16_ERROR, align 4
  %772 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %770, i32 %771, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

773:                                              ; preds = %763
  %774 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %775 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %774, i32 0, i32 2
  %776 = load i32, i32* %775, align 4
  %777 = sdiv i32 200000, %776
  %778 = load i32, i32* %51, align 4
  %779 = sdiv i32 40000, %778
  %780 = add nsw i32 %777, %779
  store i32 %780, i32* %10, align 4
  %781 = load i32, i32* %10, align 4
  %782 = call i32 @msleep(i32 %781)
  %783 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %784 = call i32 @dagcm_val_get(%struct.mb86a16_state* %783)
  %785 = load i32, i32* %6, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 %786
  store i32 %784, i32* %787, align 4
  br label %788

788:                                              ; preds = %773
  %789 = load i32, i32* %6, align 4
  %790 = add nsw i32 %789, 1
  store i32 %790, i32* %6, align 4
  br label %734

791:                                              ; preds = %734
  %792 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0
  %793 = load i32, i32* %792, align 16
  %794 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %795 = load i32, i32* %794, align 4
  %796 = icmp sgt i32 %793, %795
  br i1 %796, label %797, label %888

797:                                              ; preds = %791
  %798 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0
  %799 = load i32, i32* %798, align 16
  %800 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 2
  %801 = load i32, i32* %800, align 8
  %802 = icmp sgt i32 %799, %801
  br i1 %802, label %803, label %888

803:                                              ; preds = %797
  %804 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0
  %805 = load i32, i32* %804, align 16
  %806 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %807 = load i32, i32* %806, align 4
  %808 = sub nsw i32 %805, %807
  %809 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 2
  %810 = load i32, i32* %809, align 8
  %811 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %812 = load i32, i32* %811, align 4
  %813 = sub nsw i32 %810, %812
  %814 = mul nsw i32 2, %813
  %815 = icmp sgt i32 %808, %814
  br i1 %815, label %816, label %888

816:                                              ; preds = %803
  %817 = load i32, i32* %41, align 4
  %818 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %819 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %818, i32 0, i32 1
  %820 = load i8, i8* %819, align 1
  %821 = zext i8 %820 to i32
  %822 = mul nsw i32 2, %821
  %823 = sdiv i32 %822, 8
  %824 = sub nsw i32 %817, %823
  store i32 %824, i32* %48, align 4
  %825 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %826 = load i32, i32* %51, align 4
  %827 = load i8, i8* %29, align 1
  %828 = load i32, i32* %48, align 4
  %829 = call i32 @swp_info_get2(%struct.mb86a16_state* %825, i32 %826, i8 zeroext %827, i32 %828, i32* %45, i32* %8, i8* %27, i8* %28)
  %830 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %831 = load i32, i32* %8, align 4
  %832 = load i32, i32* %51, align 4
  %833 = load i8, i8* %29, align 1
  %834 = call i64 @rf_val_set(%struct.mb86a16_state* %830, i32 %831, i32 %832, i8 zeroext %833)
  %835 = icmp slt i64 %834, 0
  br i1 %835, label %836, label %840

836:                                              ; preds = %816
  %837 = load i32, i32* @verbose, align 4
  %838 = load i32, i32* @MB86A16_ERROR, align 4
  %839 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %837, i32 %838, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

840:                                              ; preds = %816
  %841 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %842 = load i8, i8* %27, align 1
  %843 = load i8, i8* %28, align 1
  %844 = call i64 @afcex_data_set(%struct.mb86a16_state* %841, i8 zeroext %842, i8 zeroext %843)
  %845 = icmp slt i64 %844, 0
  br i1 %845, label %846, label %850

846:                                              ; preds = %840
  %847 = load i32, i32* @verbose, align 4
  %848 = load i32, i32* @MB86A16_ERROR, align 4
  %849 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %847, i32 %848, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

850:                                              ; preds = %840
  %851 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %852 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %851, i32 0, i32 2
  %853 = load i32, i32* %852, align 4
  %854 = sdiv i32 200000, %853
  %855 = load i32, i32* %51, align 4
  %856 = sdiv i32 40000, %855
  %857 = add nsw i32 %854, %856
  store i32 %857, i32* %10, align 4
  %858 = load i32, i32* %10, align 4
  %859 = call i32 @msleep(i32 %858)
  %860 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %861 = call i32 @dagcm_val_get(%struct.mb86a16_state* %860)
  %862 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 3
  store i32 %861, i32* %862, align 4
  %863 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 3
  %864 = load i32, i32* %863, align 4
  %865 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %866 = load i32, i32* %865, align 4
  %867 = icmp sgt i32 %864, %866
  br i1 %867, label %868, label %886

868:                                              ; preds = %850
  %869 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 2
  %870 = load i32, i32* %869, align 8
  %871 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0
  %872 = load i32, i32* %871, align 16
  %873 = sub nsw i32 %870, %872
  %874 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %875 = load i32, i32* %874, align 4
  %876 = add nsw i32 %873, %875
  %877 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 3
  %878 = load i32, i32* %877, align 4
  %879 = sub nsw i32 %876, %878
  %880 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %881 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %880, i32 0, i32 1
  %882 = load i8, i8* %881, align 1
  %883 = zext i8 %882 to i32
  %884 = mul nsw i32 %879, %883
  %885 = sdiv i32 %884, 300
  store i32 %885, i32* %49, align 4
  br label %887

886:                                              ; preds = %850
  store i32 0, i32* %49, align 4
  br label %887

887:                                              ; preds = %886, %868
  br label %987

888:                                              ; preds = %803, %797, %791
  %889 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 2
  %890 = load i32, i32* %889, align 8
  %891 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %892 = load i32, i32* %891, align 4
  %893 = icmp sgt i32 %890, %892
  br i1 %893, label %894, label %985

894:                                              ; preds = %888
  %895 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 2
  %896 = load i32, i32* %895, align 8
  %897 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0
  %898 = load i32, i32* %897, align 16
  %899 = icmp sgt i32 %896, %898
  br i1 %899, label %900, label %985

900:                                              ; preds = %894
  %901 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 2
  %902 = load i32, i32* %901, align 8
  %903 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %904 = load i32, i32* %903, align 4
  %905 = sub nsw i32 %902, %904
  %906 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0
  %907 = load i32, i32* %906, align 16
  %908 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %909 = load i32, i32* %908, align 4
  %910 = sub nsw i32 %907, %909
  %911 = mul nsw i32 2, %910
  %912 = icmp sgt i32 %905, %911
  br i1 %912, label %913, label %985

913:                                              ; preds = %900
  %914 = load i32, i32* %41, align 4
  %915 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %916 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %915, i32 0, i32 1
  %917 = load i8, i8* %916, align 1
  %918 = zext i8 %917 to i32
  %919 = mul nsw i32 2, %918
  %920 = sdiv i32 %919, 8
  %921 = add nsw i32 %914, %920
  store i32 %921, i32* %48, align 4
  %922 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %923 = load i32, i32* %51, align 4
  %924 = load i8, i8* %29, align 1
  %925 = load i32, i32* %48, align 4
  %926 = call i32 @swp_info_get2(%struct.mb86a16_state* %922, i32 %923, i8 zeroext %924, i32 %925, i32* %45, i32* %8, i8* %27, i8* %28)
  %927 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %928 = load i32, i32* %8, align 4
  %929 = load i32, i32* %51, align 4
  %930 = load i8, i8* %29, align 1
  %931 = call i64 @rf_val_set(%struct.mb86a16_state* %927, i32 %928, i32 %929, i8 zeroext %930)
  %932 = icmp slt i64 %931, 0
  br i1 %932, label %933, label %937

933:                                              ; preds = %913
  %934 = load i32, i32* @verbose, align 4
  %935 = load i32, i32* @MB86A16_ERROR, align 4
  %936 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %934, i32 %935, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

937:                                              ; preds = %913
  %938 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %939 = load i8, i8* %27, align 1
  %940 = load i8, i8* %28, align 1
  %941 = call i64 @afcex_data_set(%struct.mb86a16_state* %938, i8 zeroext %939, i8 zeroext %940)
  %942 = icmp slt i64 %941, 0
  br i1 %942, label %943, label %947

943:                                              ; preds = %937
  %944 = load i32, i32* @verbose, align 4
  %945 = load i32, i32* @MB86A16_ERROR, align 4
  %946 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %944, i32 %945, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

947:                                              ; preds = %937
  %948 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %949 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %948, i32 0, i32 2
  %950 = load i32, i32* %949, align 4
  %951 = sdiv i32 200000, %950
  %952 = load i32, i32* %51, align 4
  %953 = sdiv i32 40000, %952
  %954 = add nsw i32 %951, %953
  store i32 %954, i32* %10, align 4
  %955 = load i32, i32* %10, align 4
  %956 = call i32 @msleep(i32 %955)
  %957 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %958 = call i32 @dagcm_val_get(%struct.mb86a16_state* %957)
  %959 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 3
  store i32 %958, i32* %959, align 4
  %960 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 3
  %961 = load i32, i32* %960, align 4
  %962 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %963 = load i32, i32* %962, align 4
  %964 = icmp sgt i32 %961, %963
  br i1 %964, label %965, label %983

965:                                              ; preds = %947
  %966 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 2
  %967 = load i32, i32* %966, align 8
  %968 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 0
  %969 = load i32, i32* %968, align 16
  %970 = sub nsw i32 %967, %969
  %971 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 3
  %972 = load i32, i32* %971, align 4
  %973 = add nsw i32 %970, %972
  %974 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 1
  %975 = load i32, i32* %974, align 4
  %976 = sub nsw i32 %973, %975
  %977 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %978 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %977, i32 0, i32 1
  %979 = load i8, i8* %978, align 1
  %980 = zext i8 %979 to i32
  %981 = mul nsw i32 %976, %980
  %982 = sdiv i32 %981, 300
  store i32 %982, i32* %49, align 4
  br label %984

983:                                              ; preds = %947
  store i32 0, i32* %49, align 4
  br label %984

984:                                              ; preds = %983, %965
  br label %986

985:                                              ; preds = %900, %894, %888
  store i32 0, i32* %49, align 4
  br label %986

986:                                              ; preds = %985, %984
  br label %987

987:                                              ; preds = %986, %887
  %988 = load i32, i32* @verbose, align 4
  %989 = load i32, i32* @MB86A16_INFO, align 4
  %990 = load i32, i32* %41, align 4
  %991 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %988, i32 %989, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %990)
  %992 = load i32, i32* %49, align 4
  %993 = load i32, i32* %41, align 4
  %994 = add nsw i32 %993, %992
  store i32 %994, i32* %41, align 4
  %995 = load i32, i32* @verbose, align 4
  %996 = load i32, i32* @MB86A16_INFO, align 4
  %997 = load i32, i32* %49, align 4
  %998 = load i32, i32* %41, align 4
  %999 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %995, i32 %996, i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i32 %997, i32 %998)
  %1000 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1001 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1000, i32 0, i32 0
  %1002 = load i8, i8* %1001, align 4
  %1003 = zext i8 %1002 to i32
  %1004 = mul nsw i32 %1003, 1000
  %1005 = load i32, i32* %41, align 4
  %1006 = sub nsw i32 %1004, %1005
  %1007 = call i32 @abs(i32 %1006) #3
  %1008 = icmp sgt i32 %1007, 3800
  br i1 %1008, label %1009, label %1013

1009:                                             ; preds = %987
  %1010 = load i32, i32* @verbose, align 4
  %1011 = load i32, i32* @MB86A16_INFO, align 4
  %1012 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1010, i32 %1011, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  br label %1352

1013:                                             ; preds = %987
  store i8 0, i8* %23, align 1
  store i8 3, i8* %22, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 1, i8* %17, align 1
  %1014 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1015 = load i8, i8* %23, align 1
  %1016 = load i8, i8* %22, align 1
  %1017 = call i64 @S01T_set(%struct.mb86a16_state* %1014, i8 zeroext %1015, i8 zeroext %1016)
  %1018 = icmp slt i64 %1017, 0
  br i1 %1018, label %1019, label %1023

1019:                                             ; preds = %1013
  %1020 = load i32, i32* @verbose, align 4
  %1021 = load i32, i32* @MB86A16_ERROR, align 4
  %1022 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1020, i32 %1021, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

1023:                                             ; preds = %1013
  %1024 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1025 = call i64 @DAGC_data_set(%struct.mb86a16_state* %1024, i32 0, i32 0)
  %1026 = icmp slt i64 %1025, 0
  br i1 %1026, label %1027, label %1031

1027:                                             ; preds = %1023
  %1028 = load i32, i32* @verbose, align 4
  %1029 = load i32, i32* @MB86A16_ERROR, align 4
  %1030 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1028, i32 %1029, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

1031:                                             ; preds = %1023
  %1032 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1033 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1034 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1033, i32 0, i32 1
  %1035 = load i8, i8* %1034, align 1
  %1036 = zext i8 %1035 to i32
  %1037 = call zeroext i8 @vco_dev_get(%struct.mb86a16_state* %1032, i32 %1036)
  store i8 %1037, i8* %29, align 1
  %1038 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1039 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1040 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1039, i32 0, i32 1
  %1041 = load i8, i8* %1040, align 1
  %1042 = zext i8 %1041 to i32
  %1043 = call i32 @smrt_info_get(%struct.mb86a16_state* %1038, i32 %1042)
  %1044 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1045 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1046 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1045, i32 0, i32 1
  %1047 = load i8, i8* %1046, align 1
  %1048 = zext i8 %1047 to i32
  %1049 = call i64 @smrt_set(%struct.mb86a16_state* %1044, i32 %1048)
  %1050 = icmp slt i64 %1049, 0
  br i1 %1050, label %1051, label %1055

1051:                                             ; preds = %1031
  %1052 = load i32, i32* @verbose, align 4
  %1053 = load i32, i32* @MB86A16_ERROR, align 4
  %1054 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1052, i32 %1053, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

1055:                                             ; preds = %1031
  %1056 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1057 = load i8, i8* %15, align 1
  %1058 = load i8, i8* %16, align 1
  %1059 = call i64 @EN_set(%struct.mb86a16_state* %1056, i8 zeroext %1057, i8 zeroext %1058)
  %1060 = icmp slt i64 %1059, 0
  br i1 %1060, label %1061, label %1065

1061:                                             ; preds = %1055
  %1062 = load i32, i32* @verbose, align 4
  %1063 = load i32, i32* @MB86A16_ERROR, align 4
  %1064 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1062, i32 %1063, i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

1065:                                             ; preds = %1055
  %1066 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1067 = load i8, i8* %17, align 1
  %1068 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1069 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1068, i32 0, i32 1
  %1070 = load i8, i8* %1069, align 1
  %1071 = zext i8 %1070 to i32
  %1072 = call i64 @AFCEXEN_set(%struct.mb86a16_state* %1066, i8 zeroext %1067, i32 %1071)
  %1073 = icmp slt i64 %1072, 0
  br i1 %1073, label %1074, label %1078

1074:                                             ; preds = %1065
  %1075 = load i32, i32* @verbose, align 4
  %1076 = load i32, i32* @MB86A16_ERROR, align 4
  %1077 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1075, i32 %1076, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

1078:                                             ; preds = %1065
  %1079 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1080 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1081 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1080, i32 0, i32 1
  %1082 = load i8, i8* %1081, align 1
  %1083 = zext i8 %1082 to i32
  %1084 = load i8, i8* %29, align 1
  %1085 = load i32, i32* %41, align 4
  %1086 = call i32 @swp_info_get2(%struct.mb86a16_state* %1079, i32 %1083, i8 zeroext %1084, i32 %1085, i32* %45, i32* %8, i8* %27, i8* %28)
  %1087 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1088 = load i32, i32* %8, align 4
  %1089 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1090 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1089, i32 0, i32 1
  %1091 = load i8, i8* %1090, align 1
  %1092 = zext i8 %1091 to i32
  %1093 = load i8, i8* %29, align 1
  %1094 = call i64 @rf_val_set(%struct.mb86a16_state* %1087, i32 %1088, i32 %1092, i8 zeroext %1093)
  %1095 = icmp slt i64 %1094, 0
  br i1 %1095, label %1096, label %1100

1096:                                             ; preds = %1078
  %1097 = load i32, i32* @verbose, align 4
  %1098 = load i32, i32* @MB86A16_ERROR, align 4
  %1099 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1097, i32 %1098, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

1100:                                             ; preds = %1078
  %1101 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1102 = load i8, i8* %27, align 1
  %1103 = load i8, i8* %28, align 1
  %1104 = call i64 @afcex_data_set(%struct.mb86a16_state* %1101, i8 zeroext %1102, i8 zeroext %1103)
  %1105 = icmp slt i64 %1104, 0
  br i1 %1105, label %1106, label %1110

1106:                                             ; preds = %1100
  %1107 = load i32, i32* @verbose, align 4
  %1108 = load i32, i32* @MB86A16_ERROR, align 4
  %1109 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1107, i32 %1108, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

1110:                                             ; preds = %1100
  %1111 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1112 = call i64 @srst(%struct.mb86a16_state* %1111)
  %1113 = icmp slt i64 %1112, 0
  br i1 %1113, label %1114, label %1118

1114:                                             ; preds = %1110
  %1115 = load i32, i32* @verbose, align 4
  %1116 = load i32, i32* @MB86A16_ERROR, align 4
  %1117 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1115, i32 %1116, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %1393

1118:                                             ; preds = %1110
  %1119 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1120 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1119, i32 0, i32 1
  %1121 = load i8, i8* %1120, align 1
  %1122 = zext i8 %1121 to i32
  %1123 = sdiv i32 %1122, 2
  %1124 = add nsw i32 10000, %1123
  %1125 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1126 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1125, i32 0, i32 1
  %1127 = load i8, i8* %1126, align 1
  %1128 = zext i8 %1127 to i32
  %1129 = sdiv i32 %1124, %1128
  %1130 = add nsw i32 7, %1129
  store i32 %1130, i32* %10, align 4
  %1131 = load i32, i32* %10, align 4
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1133, label %1134

1133:                                             ; preds = %1118
  store i32 1, i32* %10, align 4
  br label %1134

1134:                                             ; preds = %1133, %1118
  %1135 = load i32, i32* %10, align 4
  %1136 = call i32 @msleep_interruptible(i32 %1135)
  %1137 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1138 = call i32 @mb86a16_read(%struct.mb86a16_state* %1137, i32 55, i8* %18)
  %1139 = icmp ne i32 %1138, 2
  br i1 %1139, label %1140, label %1146

1140:                                             ; preds = %1134
  %1141 = load i32, i32* @verbose, align 4
  %1142 = load i32, i32* @MB86A16_ERROR, align 4
  %1143 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1141, i32 %1142, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0))
  %1144 = load i32, i32* @EREMOTEIO, align 4
  %1145 = sub nsw i32 0, %1144
  store i32 %1145, i32* %2, align 4
  br label %1393

1146:                                             ; preds = %1134
  %1147 = load i8, i8* %18, align 1
  %1148 = zext i8 %1147 to i32
  %1149 = icmp sgt i32 %1148, 110
  br i1 %1149, label %1150, label %1163

1150:                                             ; preds = %1146
  store i8 4, i8* %24, align 1
  store i8 1, i8* %25, align 1
  store i8 6, i8* %26, align 1
  store i8 4, i8* %31, align 1
  store i8 6, i8* %32, align 1
  %1151 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1152 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1151, i32 0, i32 1
  %1153 = load i8, i8* %1152, align 1
  %1154 = zext i8 %1153 to i32
  %1155 = sdiv i32 %1154, 2
  %1156 = add nsw i32 917504, %1155
  %1157 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1158 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1157, i32 0, i32 1
  %1159 = load i8, i8* %1158, align 1
  %1160 = zext i8 %1159 to i32
  %1161 = sdiv i32 %1156, %1160
  %1162 = add nsw i32 7, %1161
  store i32 %1162, i32* %10, align 4
  br label %1230

1163:                                             ; preds = %1146
  %1164 = load i8, i8* %18, align 1
  %1165 = zext i8 %1164 to i32
  %1166 = icmp sgt i32 %1165, 105
  br i1 %1166, label %1167, label %1180

1167:                                             ; preds = %1163
  store i8 4, i8* %24, align 1
  store i8 2, i8* %25, align 1
  store i8 8, i8* %26, align 1
  store i8 7, i8* %31, align 1
  store i8 2, i8* %32, align 1
  %1168 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1169 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1168, i32 0, i32 1
  %1170 = load i8, i8* %1169, align 1
  %1171 = zext i8 %1170 to i32
  %1172 = sdiv i32 %1171, 2
  %1173 = add nsw i32 1048576, %1172
  %1174 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1175 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1174, i32 0, i32 1
  %1176 = load i8, i8* %1175, align 1
  %1177 = zext i8 %1176 to i32
  %1178 = sdiv i32 %1173, %1177
  %1179 = add nsw i32 7, %1178
  store i32 %1179, i32* %10, align 4
  br label %1229

1180:                                             ; preds = %1163
  %1181 = load i8, i8* %18, align 1
  %1182 = zext i8 %1181 to i32
  %1183 = icmp sgt i32 %1182, 85
  br i1 %1183, label %1184, label %1197

1184:                                             ; preds = %1180
  store i8 5, i8* %24, align 1
  store i8 2, i8* %25, align 1
  store i8 8, i8* %26, align 1
  store i8 7, i8* %31, align 1
  store i8 2, i8* %32, align 1
  %1185 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1186 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1185, i32 0, i32 1
  %1187 = load i8, i8* %1186, align 1
  %1188 = zext i8 %1187 to i32
  %1189 = sdiv i32 %1188, 2
  %1190 = add nsw i32 1310720, %1189
  %1191 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1192 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1191, i32 0, i32 1
  %1193 = load i8, i8* %1192, align 1
  %1194 = zext i8 %1193 to i32
  %1195 = sdiv i32 %1190, %1194
  %1196 = add nsw i32 7, %1195
  store i32 %1196, i32* %10, align 4
  br label %1228

1197:                                             ; preds = %1180
  %1198 = load i8, i8* %18, align 1
  %1199 = zext i8 %1198 to i32
  %1200 = icmp sgt i32 %1199, 65
  br i1 %1200, label %1201, label %1214

1201:                                             ; preds = %1197
  store i8 6, i8* %24, align 1
  store i8 2, i8* %25, align 1
  store i8 8, i8* %26, align 1
  store i8 7, i8* %31, align 1
  store i8 2, i8* %32, align 1
  %1202 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1203 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1202, i32 0, i32 1
  %1204 = load i8, i8* %1203, align 1
  %1205 = zext i8 %1204 to i32
  %1206 = sdiv i32 %1205, 2
  %1207 = add nsw i32 1572864, %1206
  %1208 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1209 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1208, i32 0, i32 1
  %1210 = load i8, i8* %1209, align 1
  %1211 = zext i8 %1210 to i32
  %1212 = sdiv i32 %1207, %1211
  %1213 = add nsw i32 7, %1212
  store i32 %1213, i32* %10, align 4
  br label %1227

1214:                                             ; preds = %1197
  store i8 7, i8* %24, align 1
  store i8 2, i8* %25, align 1
  store i8 8, i8* %26, align 1
  store i8 7, i8* %31, align 1
  store i8 2, i8* %32, align 1
  %1215 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1216 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1215, i32 0, i32 1
  %1217 = load i8, i8* %1216, align 1
  %1218 = zext i8 %1217 to i32
  %1219 = sdiv i32 %1218, 2
  %1220 = add nsw i32 2097152, %1219
  %1221 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1222 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1221, i32 0, i32 1
  %1223 = load i8, i8* %1222, align 1
  %1224 = zext i8 %1223 to i32
  %1225 = sdiv i32 %1220, %1224
  %1226 = add nsw i32 7, %1225
  store i32 %1226, i32* %10, align 4
  br label %1227

1227:                                             ; preds = %1214, %1201
  br label %1228

1228:                                             ; preds = %1227, %1184
  br label %1229

1229:                                             ; preds = %1228, %1167
  br label %1230

1230:                                             ; preds = %1229, %1150
  %1231 = load i32, i32* %10, align 4
  %1232 = mul nsw i32 %1231, 2
  store i32 %1232, i32* %10, align 4
  %1233 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1234 = load i8, i8* %24, align 1
  %1235 = call i32 @S2T_set(%struct.mb86a16_state* %1233, i8 zeroext %1234)
  %1236 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1237 = load i8, i8* %25, align 1
  %1238 = load i8, i8* %26, align 1
  %1239 = call i32 @S45T_set(%struct.mb86a16_state* %1236, i8 zeroext %1237, i8 zeroext %1238)
  %1240 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1241 = load i8, i8* %31, align 1
  %1242 = load i8, i8* %32, align 1
  %1243 = call i32 @Vi_set(%struct.mb86a16_state* %1240, i8 zeroext %1241, i8 zeroext %1242)
  %1244 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1245 = call i64 @srst(%struct.mb86a16_state* %1244)
  %1246 = load i32, i32* %10, align 4
  %1247 = call i32 @msleep_interruptible(i32 %1246)
  %1248 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1249 = call i32 @sync_chk(%struct.mb86a16_state* %1248, i8* %30)
  store i32 %1249, i32* %54, align 4
  %1250 = load i32, i32* @verbose, align 4
  %1251 = load i32, i32* @MB86A16_INFO, align 4
  %1252 = load i8, i8* %30, align 1
  %1253 = zext i8 %1252 to i32
  %1254 = load i32, i32* %54, align 4
  %1255 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1250, i32 %1251, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i32 %1253, i32 %1254)
  %1256 = load i8, i8* %30, align 1
  %1257 = icmp ne i8 %1256, 0
  br i1 %1257, label %1258, label %1345

1258:                                             ; preds = %1230
  %1259 = load i8, i8* %30, align 1
  %1260 = zext i8 %1259 to i32
  %1261 = icmp eq i32 %1260, 4
  br i1 %1261, label %1262, label %1312

1262:                                             ; preds = %1258
  %1263 = load i8, i8* %18, align 1
  %1264 = zext i8 %1263 to i32
  %1265 = icmp sgt i32 %1264, 110
  br i1 %1265, label %1266, label %1278

1266:                                             ; preds = %1262
  %1267 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1268 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1267, i32 0, i32 1
  %1269 = load i8, i8* %1268, align 1
  %1270 = zext i8 %1269 to i32
  %1271 = sdiv i32 %1270, 2
  %1272 = add nsw i32 786432, %1271
  %1273 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1274 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1273, i32 0, i32 1
  %1275 = load i8, i8* %1274, align 1
  %1276 = zext i8 %1275 to i32
  %1277 = sdiv i32 %1272, %1276
  store i32 %1277, i32* %10, align 4
  br label %1290

1278:                                             ; preds = %1262
  %1279 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1280 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1279, i32 0, i32 1
  %1281 = load i8, i8* %1280, align 1
  %1282 = zext i8 %1281 to i32
  %1283 = sdiv i32 %1282, 2
  %1284 = add nsw i32 1572864, %1283
  %1285 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1286 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1285, i32 0, i32 1
  %1287 = load i8, i8* %1286, align 1
  %1288 = zext i8 %1287 to i32
  %1289 = sdiv i32 %1284, %1288
  store i32 %1289, i32* %10, align 4
  br label %1290

1290:                                             ; preds = %1278, %1266
  %1291 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1292 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1291, i32 0, i32 1
  %1293 = load i8, i8* %1292, align 1
  %1294 = zext i8 %1293 to i32
  %1295 = icmp slt i32 %1294, 5000
  br i1 %1295, label %1296, label %1299

1296:                                             ; preds = %1290
  %1297 = load i32, i32* %10, align 4
  %1298 = call i32 @msleep_interruptible(i32 %1297)
  br label %1302

1299:                                             ; preds = %1290
  %1300 = load i32, i32* %10, align 4
  %1301 = call i32 @msleep_interruptible(i32 %1300)
  br label %1302

1302:                                             ; preds = %1299, %1296
  %1303 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1304 = call i32 @sync_chk(%struct.mb86a16_state* %1303, i8* %33)
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1306, label %1311

1306:                                             ; preds = %1302
  %1307 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1308 = call i32 @iq_vt_set(%struct.mb86a16_state* %1307, i32 1)
  %1309 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1310 = call i32 @FEC_srst(%struct.mb86a16_state* %1309)
  br label %1311

1311:                                             ; preds = %1306, %1302
  br label %1312

1312:                                             ; preds = %1311, %1258
  %1313 = load i8, i8* %18, align 1
  %1314 = zext i8 %1313 to i32
  %1315 = icmp sgt i32 %1314, 110
  br i1 %1315, label %1316, label %1328

1316:                                             ; preds = %1312
  %1317 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1318 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1317, i32 0, i32 1
  %1319 = load i8, i8* %1318, align 1
  %1320 = zext i8 %1319 to i32
  %1321 = sdiv i32 %1320, 2
  %1322 = add nsw i32 786432, %1321
  %1323 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1324 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1323, i32 0, i32 1
  %1325 = load i8, i8* %1324, align 1
  %1326 = zext i8 %1325 to i32
  %1327 = sdiv i32 %1322, %1326
  store i32 %1327, i32* %10, align 4
  br label %1340

1328:                                             ; preds = %1312
  %1329 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1330 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1329, i32 0, i32 1
  %1331 = load i8, i8* %1330, align 1
  %1332 = zext i8 %1331 to i32
  %1333 = sdiv i32 %1332, 2
  %1334 = add nsw i32 1572864, %1333
  %1335 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1336 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1335, i32 0, i32 1
  %1337 = load i8, i8* %1336, align 1
  %1338 = zext i8 %1337 to i32
  %1339 = sdiv i32 %1334, %1338
  store i32 %1339, i32* %10, align 4
  br label %1340

1340:                                             ; preds = %1328, %1316
  %1341 = load i32, i32* %10, align 4
  %1342 = call i32 @msleep_interruptible(i32 %1341)
  %1343 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1344 = call i32 @SEQ_set(%struct.mb86a16_state* %1343, i32 1)
  br label %1351

1345:                                             ; preds = %1230
  %1346 = load i32, i32* @verbose, align 4
  %1347 = load i32, i32* @MB86A16_INFO, align 4
  %1348 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1346, i32 %1347, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  %1349 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1350 = call i32 @SEQ_set(%struct.mb86a16_state* %1349, i32 1)
  store i32 -1, i32* %53, align 4
  br label %1351

1351:                                             ; preds = %1345, %1340
  br label %1352

1352:                                             ; preds = %1351, %1009
  br label %1357

1353:                                             ; preds = %582
  %1354 = load i32, i32* @verbose, align 4
  %1355 = load i32, i32* @MB86A16_INFO, align 4
  %1356 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1354, i32 %1355, i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  store i32 -1, i32* %53, align 4
  br label %1357

1357:                                             ; preds = %1353, %1352
  %1358 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1359 = call i32 @sync_chk(%struct.mb86a16_state* %1358, i8* %33)
  store i32 %1359, i32* %54, align 4
  %1360 = load i32, i32* %54, align 4
  %1361 = icmp ne i32 %1360, 0
  br i1 %1361, label %1362, label %1376

1362:                                             ; preds = %1357
  %1363 = load i32, i32* @verbose, align 4
  %1364 = load i32, i32* @MB86A16_INFO, align 4
  %1365 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1363, i32 %1364, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0))
  %1366 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1367 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1368 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1367, i32 0, i32 0
  %1369 = load i8, i8* %1368, align 4
  %1370 = zext i8 %1369 to i32
  %1371 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1372 = getelementptr inbounds %struct.mb86a16_state, %struct.mb86a16_state* %1371, i32 0, i32 1
  %1373 = load i8, i8* %1372, align 1
  %1374 = zext i8 %1373 to i32
  %1375 = call i32 @freqerr_chk(%struct.mb86a16_state* %1366, i32 %1370, i32 %1374, i32 1)
  store i32 0, i32* %53, align 4
  br label %1380

1376:                                             ; preds = %1357
  br label %1377

1377:                                             ; preds = %1376
  %1378 = load i32, i32* %52, align 4
  %1379 = add nsw i32 %1378, 1
  store i32 %1379, i32* %52, align 4
  br label %93

1380:                                             ; preds = %1362, %99
  %1381 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1382 = call i32 @mb86a16_read(%struct.mb86a16_state* %1381, i32 21, i8* %4)
  %1383 = load %struct.mb86a16_state*, %struct.mb86a16_state** %3, align 8
  %1384 = call i32 @mb86a16_read(%struct.mb86a16_state* %1383, i32 38, i8* %5)
  %1385 = load i32, i32* @verbose, align 4
  %1386 = load i32, i32* @MB86A16_INFO, align 4
  %1387 = load i8, i8* %4, align 1
  %1388 = zext i8 %1387 to i32
  %1389 = load i8, i8* %5, align 1
  %1390 = zext i8 %1389 to i32
  %1391 = call i32 (i32, i32, i32, i8*, ...) @dprintk(i32 %1385, i32 %1386, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0), i32 %1388, i32 %1390)
  %1392 = load i32, i32* %53, align 4
  store i32 %1392, i32* %2, align 4
  br label %1393

1393:                                             ; preds = %1380, %1140, %1114, %1106, %1096, %1074, %1061, %1051, %1027, %1019, %943, %933, %846, %836, %769, %759, %729, %718, %708, %677, %656, %648, %635, %622, %612, %594, %524, %490, %480, %378, %368, %360, %349, %179, %161, %151, %140, %127, %117, %109
  %1394 = load i32, i32* %2, align 4
  ret i32 %1394
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @SEQ_set(%struct.mb86a16_state*, i32) #1

declare dso_local i32 @iq_vt_set(%struct.mb86a16_state*, i32) #1

declare dso_local i64 @initial_set(%struct.mb86a16_state*) #1

declare dso_local i64 @DAGC_data_set(%struct.mb86a16_state*, i32, i32) #1

declare dso_local i64 @EN_set(%struct.mb86a16_state*, i8 zeroext, i8 zeroext) #1

declare dso_local i64 @AFCEXEN_set(%struct.mb86a16_state*, i8 zeroext, i32) #1

declare dso_local i64 @CNTM_set(%struct.mb86a16_state*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i64 @S01T_set(%struct.mb86a16_state*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @smrt_info_get(%struct.mb86a16_state*, i32) #1

declare dso_local i64 @smrt_set(%struct.mb86a16_state*, i32) #1

declare dso_local zeroext i8 @vco_dev_get(%struct.mb86a16_state*, i32) #1

declare dso_local i32 @swp_info_get(%struct.mb86a16_state*, i32, i32, i32, i8 zeroext, i32, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @rf_val_set(%struct.mb86a16_state*, i32, i32, i8 zeroext) #1

declare dso_local i64 @afcex_data_set(%struct.mb86a16_state*, i8 zeroext, i8 zeroext) #1

declare dso_local i64 @srst(%struct.mb86a16_state*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @mb86a16_read(%struct.mb86a16_state*, i32, i8*) #1

declare dso_local i32 @swp_freq_calcuation(%struct.mb86a16_state*, i32, i32, i32*, i32, i32, i8 zeroext, i32, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @swp_info_get2(%struct.mb86a16_state*, i32, i8 zeroext, i32, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @signal_det(%struct.mb86a16_state*, i32, i8*) #1

declare dso_local i32 @afcex_info_get(%struct.mb86a16_state*, i32, i8*, i8*) #1

declare dso_local i64 @afcofs_data_set(%struct.mb86a16_state*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @afcerr_chk(%struct.mb86a16_state*) #1

declare dso_local i32 @dagcm_val_get(%struct.mb86a16_state*) #1

declare dso_local i32 @S2T_set(%struct.mb86a16_state*, i8 zeroext) #1

declare dso_local i32 @S45T_set(%struct.mb86a16_state*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @Vi_set(%struct.mb86a16_state*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @sync_chk(%struct.mb86a16_state*, i8*) #1

declare dso_local i32 @FEC_srst(%struct.mb86a16_state*) #1

declare dso_local i32 @freqerr_chk(%struct.mb86a16_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
