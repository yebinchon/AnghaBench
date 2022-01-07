; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_rx_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-pin.c_cec_pin_rx_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_pin = type { i32, i8*, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.TYPE_2__, i32, i8*, i8*, i32, i32, i8*, i8*, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i32*, i32, i8* }

@CEC_TIM_START_BIT_LOW_MIN = common dso_local global i8* null, align 8
@CEC_TIM_IDLE_SAMPLE = common dso_local global i8* null, align 8
@CEC_ST_TX_START_BIT_HIGH = common dso_local global i32 0, align 4
@CEC_TIM_START_BIT_TOTAL_LONG = common dso_local global i8* null, align 8
@CEC_TIM_START_BIT_TOTAL_MIN = common dso_local global i8* null, align 8
@CEC_ST_RX_LOW_DRIVE = common dso_local global i8* null, align 8
@CEC_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@CEC_TIM_DATA_BIT_TOTAL_LONG = common dso_local global i8* null, align 8
@CEC_TIM_DATA_BIT_TOTAL_MIN = common dso_local global i8* null, align 8
@CEC_LOG_ADDR_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cec_pin*, i8*)* @cec_pin_rx_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cec_pin_rx_states(%struct.cec_pin* %0, i8* %1) #0 {
  %3 = alloca %struct.cec_pin*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cec_pin* %0, %struct.cec_pin** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %13 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %394 [
    i32 129, label %15
    i32 130, label %79
    i32 132, label %155
    i32 133, label %210
    i32 131, label %213
    i32 135, label %349
    i32 134, label %354
    i32 136, label %354
    i32 137, label %391
  ]

15:                                               ; preds = %2
  %16 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %17 = call i32 @cec_pin_read(%struct.cec_pin* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %395

21:                                               ; preds = %15
  %22 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %23 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %22, i32 0, i32 0
  store i32 130, i32* %23, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %26 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @ktime_us_delta(i8* %24, i8* %27)
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** @CEC_TIM_START_BIT_LOW_MIN, align 8
  %31 = load i8*, i8** @CEC_TIM_IDLE_SAMPLE, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = inttoptr i64 %34 to i8*
  %36 = icmp ult i8* %29, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %21
  %38 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %39 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %38, i32 0, i32 22
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %45 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = call i8* @ktime_to_ns(i8* %46)
  %48 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %49 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %48, i32 0, i32 21
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %52 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %51, i32 0, i32 20
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %43, %37
  %54 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %55 = call i32 @cec_pin_to_idle(%struct.cec_pin* %54)
  br label %395

56:                                               ; preds = %21
  %57 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %58 = call i32 @rx_arb_lost(%struct.cec_pin* %57, i32* %11)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %62 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %61, i32 0, i32 19
  %63 = load i32, i32* %11, align 4
  %64 = ashr i32 %63, 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, 15
  %67 = call i32 @cec_msg_init(i32* %62, i32 %64, i32 %66)
  %68 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %69 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  %70 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %71 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %70, i32 0, i32 18
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* @CEC_ST_TX_START_BIT_HIGH, align 4
  %73 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %74 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %77 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %60, %56
  br label %395

79:                                               ; preds = %2
  %80 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %81 = call i32 @cec_pin_read(%struct.cec_pin* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %84 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = call i8* @ktime_us_delta(i8* %82, i8* %85)
  store i8* %86, i8** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %79
  %90 = load i8*, i8** %5, align 8
  %91 = load i8*, i8** @CEC_TIM_START_BIT_TOTAL_LONG, align 8
  %92 = icmp ugt i8* %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %95 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %94, i32 0, i32 17
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %99 = call i32 @cec_pin_to_idle(%struct.cec_pin* %98)
  br label %395

100:                                              ; preds = %89, %79
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %395

104:                                              ; preds = %100
  %105 = load i8*, i8** %5, align 8
  %106 = load i8*, i8** @CEC_TIM_START_BIT_TOTAL_MIN, align 8
  %107 = load i8*, i8** @CEC_TIM_IDLE_SAMPLE, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = inttoptr i64 %110 to i8*
  %112 = icmp ult i8* %105, %111
  br i1 %112, label %113, label %132

113:                                              ; preds = %104
  %114 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %115 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %114, i32 0, i32 16
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  %118 = icmp ne i32 %116, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %113
  %120 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %121 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = call i8* @ktime_to_ns(i8* %122)
  %124 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %125 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %124, i32 0, i32 15
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** %5, align 8
  %127 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %128 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %127, i32 0, i32 14
  store i8* %126, i8** %128, align 8
  br label %129

129:                                              ; preds = %119, %113
  %130 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %131 = call i32 @cec_pin_to_idle(%struct.cec_pin* %130)
  br label %395

132:                                              ; preds = %104
  %133 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %134 = call i32 @rx_low_drive(%struct.cec_pin* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %138 = call i32 @cec_pin_low(%struct.cec_pin* %137)
  %139 = load i8*, i8** @CEC_ST_RX_LOW_DRIVE, align 8
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %142 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %144 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  br label %395

147:                                              ; preds = %132
  %148 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %149 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %148, i32 0, i32 0
  store i32 132, i32* %149, align 8
  %150 = load i8*, i8** %4, align 8
  %151 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %152 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %154 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %153, i32 0, i32 3
  store i32 0, i32* %154, align 4
  br label %395

155:                                              ; preds = %2
  %156 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %157 = call i32 @cec_pin_read(%struct.cec_pin* %156)
  store i32 %157, i32* %6, align 4
  %158 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %159 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %158, i32 0, i32 0
  store i32 133, i32* %159, align 8
  %160 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %161 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = srem i32 %162, 10
  switch i32 %163, label %164 [
    i32 128, label %192
    i32 138, label %204
  ]

164:                                              ; preds = %155
  %165 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %166 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = sdiv i32 %167, 10
  %169 = load i32, i32* @CEC_MAX_MSG_SIZE, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %164
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %174 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = srem i32 %175, 10
  %177 = sub nsw i32 7, %176
  %178 = shl i32 %172, %177
  %179 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %180 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %184 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 8
  %186 = sdiv i32 %185, 10
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %182, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = or i32 %189, %178
  store i32 %190, i32* %188, align 4
  br label %191

191:                                              ; preds = %171, %164
  br label %205

192:                                              ; preds = %155
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %195 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 4
  %196 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %197 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = sdiv i32 %198, 10
  %200 = add nsw i32 %199, 1
  %201 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %202 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %201, i32 0, i32 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  store i32 %200, i32* %203, align 8
  br label %205

204:                                              ; preds = %155
  br label %205

205:                                              ; preds = %204, %192, %191
  %206 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %207 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 8
  br label %395

210:                                              ; preds = %2
  %211 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %212 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %211, i32 0, i32 0
  store i32 131, i32* %212, align 8
  br label %395

213:                                              ; preds = %2
  %214 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %215 = call i32 @cec_pin_read(%struct.cec_pin* %214)
  store i32 %215, i32* %6, align 4
  %216 = load i8*, i8** %4, align 8
  %217 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %218 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i8* @ktime_us_delta(i8* %216, i8* %219)
  store i8* %220, i8** %5, align 8
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %213
  %224 = load i8*, i8** %5, align 8
  %225 = load i8*, i8** @CEC_TIM_DATA_BIT_TOTAL_LONG, align 8
  %226 = icmp ugt i8* %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %229 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %228, i32 0, i32 13
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %229, align 4
  %232 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %233 = call i32 @cec_pin_to_idle(%struct.cec_pin* %232)
  br label %395

234:                                              ; preds = %223, %213
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  br label %395

238:                                              ; preds = %234
  %239 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %240 = call i32 @rx_low_drive(%struct.cec_pin* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %238
  %243 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %244 = call i32 @cec_pin_low(%struct.cec_pin* %243)
  %245 = load i8*, i8** @CEC_ST_RX_LOW_DRIVE, align 8
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %248 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  %249 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %250 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 8
  br label %395

253:                                              ; preds = %238
  %254 = load i8*, i8** %5, align 8
  %255 = load i8*, i8** @CEC_TIM_DATA_BIT_TOTAL_MIN, align 8
  %256 = icmp ult i8* %254, %255
  br i1 %256, label %257, label %284

257:                                              ; preds = %253
  %258 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %259 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %258, i32 0, i32 12
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 8
  %262 = icmp ne i32 %260, 0
  br i1 %262, label %273, label %263

263:                                              ; preds = %257
  %264 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %265 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = call i8* @ktime_to_ns(i8* %266)
  %268 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %269 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %268, i32 0, i32 11
  store i8* %267, i8** %269, align 8
  %270 = load i8*, i8** %5, align 8
  %271 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %272 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %271, i32 0, i32 10
  store i8* %270, i8** %272, align 8
  br label %273

273:                                              ; preds = %263, %257
  %274 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %275 = call i32 @cec_pin_low(%struct.cec_pin* %274)
  %276 = load i8*, i8** @CEC_ST_RX_LOW_DRIVE, align 8
  %277 = ptrtoint i8* %276 to i32
  %278 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %279 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %281 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %280, i32 0, i32 9
  %282 = load i32, i32* %281, align 8
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %281, align 8
  br label %395

284:                                              ; preds = %253
  %285 = load i8*, i8** %4, align 8
  %286 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %287 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %286, i32 0, i32 1
  store i8* %285, i8** %287, align 8
  %288 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %289 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = srem i32 %290, 10
  %292 = icmp ne i32 %291, 9
  br i1 %292, label %293, label %296

293:                                              ; preds = %284
  %294 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %295 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %294, i32 0, i32 0
  store i32 132, i32* %295, align 8
  br label %395

296:                                              ; preds = %284
  %297 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %298 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %297, i32 0, i32 8
  %299 = call i32 @cec_msg_destination(%struct.TYPE_2__* %298)
  store i32 %299, i32* %10, align 4
  %300 = load i32, i32* %10, align 4
  %301 = load i32, i32* @CEC_LOG_ADDR_BROADCAST, align 4
  %302 = icmp eq i32 %300, %301
  %303 = zext i1 %302 to i32
  store i32 %303, i32* %8, align 4
  %304 = load i32, i32* %8, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %314, label %306

306:                                              ; preds = %296
  %307 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %308 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %10, align 4
  %311 = shl i32 1, %310
  %312 = and i32 %309, %311
  %313 = icmp ne i32 %312, 0
  br label %314

314:                                              ; preds = %306, %296
  %315 = phi i1 [ true, %296 ], [ %313, %306 ]
  %316 = zext i1 %315 to i32
  store i32 %316, i32* %9, align 4
  %317 = load i32, i32* %8, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %314
  br label %325

320:                                              ; preds = %314
  %321 = load i32, i32* %9, align 4
  %322 = icmp ne i32 %321, 0
  %323 = xor i1 %322, true
  %324 = zext i1 %323 to i32
  br label %325

325:                                              ; preds = %320, %319
  %326 = phi i32 [ 1, %319 ], [ %324, %320 ]
  store i32 %326, i32* %7, align 4
  %327 = load i32, i32* %9, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %325
  %330 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %331 = call i32 @rx_nack(%struct.cec_pin* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %329
  %334 = load i32, i32* %7, align 4
  %335 = icmp ne i32 %334, 0
  %336 = xor i1 %335, true
  %337 = zext i1 %336 to i32
  store i32 %337, i32* %7, align 4
  br label %338

338:                                              ; preds = %333, %329, %325
  %339 = load i32, i32* %7, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %343 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %342, i32 0, i32 0
  store i32 136, i32* %343, align 8
  br label %395

344:                                              ; preds = %338
  %345 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %346 = call i32 @cec_pin_low(%struct.cec_pin* %345)
  %347 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %348 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %347, i32 0, i32 0
  store i32 135, i32* %348, align 8
  br label %395

349:                                              ; preds = %2
  %350 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %351 = call i32 @cec_pin_high(%struct.cec_pin* %350)
  %352 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %353 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %352, i32 0, i32 0
  store i32 134, i32* %353, align 8
  br label %395

354:                                              ; preds = %2, %2
  %355 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %356 = call i32 @cec_pin_read(%struct.cec_pin* %355)
  store i32 %356, i32* %6, align 4
  %357 = load i32, i32* %6, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %384

359:                                              ; preds = %354
  %360 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %361 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %384

364:                                              ; preds = %359
  %365 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %366 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %365, i32 0, i32 7
  %367 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %368 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %367, i32 0, i32 8
  %369 = bitcast %struct.TYPE_2__* %366 to i8*
  %370 = bitcast %struct.TYPE_2__* %368 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %369, i8* align 8 %370, i64 24, i1 false)
  %371 = load i8*, i8** %4, align 8
  %372 = call i8* @ktime_to_ns(i8* %371)
  %373 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %374 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %373, i32 0, i32 7
  %375 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %374, i32 0, i32 2
  store i8* %372, i8** %375, align 8
  %376 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %377 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %376, i32 0, i32 6
  %378 = call i32 @wake_up_interruptible(i32* %377)
  %379 = load i8*, i8** %4, align 8
  %380 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %381 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %380, i32 0, i32 1
  store i8* %379, i8** %381, align 8
  %382 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %383 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %382, i32 0, i32 0
  store i32 137, i32* %383, align 8
  br label %395

384:                                              ; preds = %359, %354
  %385 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %386 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 8
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %386, align 8
  %389 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %390 = getelementptr inbounds %struct.cec_pin, %struct.cec_pin* %389, i32 0, i32 0
  store i32 131, i32* %390, align 8
  br label %395

391:                                              ; preds = %2
  %392 = load %struct.cec_pin*, %struct.cec_pin** %3, align 8
  %393 = call i32 @cec_pin_to_idle(%struct.cec_pin* %392)
  br label %395

394:                                              ; preds = %2
  br label %395

395:                                              ; preds = %394, %391, %384, %364, %349, %344, %341, %293, %273, %242, %237, %227, %210, %205, %147, %136, %129, %103, %93, %78, %53, %20
  ret void
}

declare dso_local i32 @cec_pin_read(%struct.cec_pin*) #1

declare dso_local i8* @ktime_us_delta(i8*, i8*) #1

declare dso_local i8* @ktime_to_ns(i8*) #1

declare dso_local i32 @cec_pin_to_idle(%struct.cec_pin*) #1

declare dso_local i32 @rx_arb_lost(%struct.cec_pin*, i32*) #1

declare dso_local i32 @cec_msg_init(i32*, i32, i32) #1

declare dso_local i32 @rx_low_drive(%struct.cec_pin*) #1

declare dso_local i32 @cec_pin_low(%struct.cec_pin*) #1

declare dso_local i32 @cec_msg_destination(%struct.TYPE_2__*) #1

declare dso_local i32 @rx_nack(%struct.cec_pin*) #1

declare dso_local i32 @cec_pin_high(%struct.cec_pin*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
