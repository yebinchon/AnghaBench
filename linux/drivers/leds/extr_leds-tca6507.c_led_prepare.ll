; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_led_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-tca6507.c_led_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tca6507_led = type { i64, i64, i32, i32, i32, %struct.TYPE_2__, i64, i64, %struct.tca6507_chip* }
%struct.TYPE_2__ = type { i8* }
%struct.tca6507_chip = type { %struct.bank* }
%struct.bank = type { i32, i64, i64, i64, i64, i64, i64 }

@TCA6507_LS_LED_OFF = common dso_local global i32 0, align 4
@TCA6507_LS_LED_ON = common dso_local global i32 0, align 4
@MASTER = common dso_local global i32 0, align 4
@BANK0 = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i8* null, align 8
@bank_source = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@BANK1 = common dso_local global i32 0, align 4
@blink_source = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tca6507_led*)* @led_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @led_prepare(%struct.tca6507_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tca6507_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tca6507_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bank*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tca6507_led* %0, %struct.tca6507_led** %3, align 8
  %14 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %15 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @TO_LEVEL(i8* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %20 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %19, i32 0, i32 8
  %21 = load %struct.tca6507_chip*, %struct.tca6507_chip** %20, align 8
  store %struct.tca6507_chip* %21, %struct.tca6507_chip** %5, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i8* @TO_BRIGHT(i32 %22)
  %24 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %25 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %1
  %30 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %31 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %32 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @TCA6507_LS_LED_OFF, align 4
  %35 = call i32 @set_select(%struct.tca6507_chip* %30, i32 %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %416

36:                                               ; preds = %1
  %37 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %38 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %43 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %173

46:                                               ; preds = %41, %36
  store i32 -1, i32* %11, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 15, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 15
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %53 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %54 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TCA6507_LS_LED_ON, align 4
  %57 = call i32 @set_select(%struct.tca6507_chip* %52, i32 %55, i32 %56)
  store i32 0, i32* %2, align 4
  br label %416

58:                                               ; preds = %46
  %59 = load i32, i32* @MASTER, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %106, %58
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @BANK0, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %60
  %65 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %66 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %65, i32 0, i32 0
  %67 = load %struct.bank*, %struct.bank** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.bank, %struct.bank* %67, i64 %69
  %71 = getelementptr inbounds %struct.bank, %struct.bank* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %85, label %75

75:                                               ; preds = %64
  %76 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %77 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %76, i32 0, i32 0
  %78 = load %struct.bank*, %struct.bank** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.bank, %struct.bank* %78, i64 %80
  %82 = getelementptr inbounds %struct.bank, %struct.bank* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75, %64
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %11, align 4
  br label %109

87:                                               ; preds = %75
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %90 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %89, i32 0, i32 0
  %91 = load %struct.bank*, %struct.bank** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.bank, %struct.bank* %91, i64 %93
  %95 = getelementptr inbounds %struct.bank, %struct.bank* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %88, %96
  %98 = call i32 @abs(i32 %97) #3
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %87
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %102, %87
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %8, align 4
  br label %60

109:                                              ; preds = %85, %60
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %114 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %115 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @TCA6507_LS_LED_ON, align 4
  %118 = call i32 @set_select(%struct.tca6507_chip* %113, i32 %116, i32 %117)
  %119 = load i8*, i8** @LED_FULL, align 8
  %120 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %121 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  store i32 0, i32* %2, align 4
  br label %416

123:                                              ; preds = %109
  %124 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %125 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %124, i32 0, i32 0
  %126 = load %struct.bank*, %struct.bank** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.bank, %struct.bank* %126, i64 %128
  %130 = getelementptr inbounds %struct.bank, %struct.bank* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %123
  %134 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @set_level(%struct.tca6507_chip* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %133, %123
  %139 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %140 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %139, i32 0, i32 0
  %141 = load %struct.bank*, %struct.bank** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.bank, %struct.bank* %141, i64 %143
  %145 = getelementptr inbounds %struct.bank, %struct.bank* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %150 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %152 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %153 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** @bank_source, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @set_select(%struct.tca6507_chip* %151, i32 %154, i32 %159)
  %161 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %162 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %161, i32 0, i32 0
  %163 = load %struct.bank*, %struct.bank** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.bank, %struct.bank* %163, i64 %165
  %167 = getelementptr inbounds %struct.bank, %struct.bank* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i8* @TO_BRIGHT(i32 %168)
  %170 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %171 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  store i32 0, i32* %2, align 4
  br label %416

173:                                              ; preds = %41
  %174 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %175 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @choose_times(i64 %176, i32* %6, i32* %7)
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %2, align 4
  br label %416

182:                                              ; preds = %173
  %183 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %184 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @choose_times(i64 %185, i32* %6, i32* %7)
  %187 = icmp slt i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %2, align 4
  br label %416

191:                                              ; preds = %182
  %192 = load i32, i32* @BANK0, align 4
  store i32 %192, i32* %8, align 4
  br label %193

193:                                              ; preds = %290, %191
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @BANK1, align 4
  %196 = icmp sle i32 %194, %195
  br i1 %196, label %197, label %293

197:                                              ; preds = %193
  %198 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %199 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %198, i32 0, i32 0
  %200 = load %struct.bank*, %struct.bank** %199, align 8
  %201 = load i32, i32* %8, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.bank, %struct.bank* %200, i64 %202
  %204 = getelementptr inbounds %struct.bank, %struct.bank* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %197
  br label %293

208:                                              ; preds = %197
  %209 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %210 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %209, i32 0, i32 0
  %211 = load %struct.bank*, %struct.bank** %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.bank, %struct.bank* %211, i64 %213
  %215 = getelementptr inbounds %struct.bank, %struct.bank* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %4, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %208
  br label %290

220:                                              ; preds = %208
  %221 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %222 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %221, i32 0, i32 0
  %223 = load %struct.bank*, %struct.bank** %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.bank, %struct.bank* %223, i64 %225
  %227 = getelementptr inbounds %struct.bank, %struct.bank* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %220
  br label %293

231:                                              ; preds = %220
  %232 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %233 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %232, i32 0, i32 0
  %234 = load %struct.bank*, %struct.bank** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.bank, %struct.bank* %234, i64 %236
  %238 = getelementptr inbounds %struct.bank, %struct.bank* %237, i32 0, i32 6
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %260, label %241

241:                                              ; preds = %231
  %242 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %243 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %242, i32 0, i32 7
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %260, label %246

246:                                              ; preds = %241
  %247 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %248 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %247, i32 0, i32 0
  %249 = load %struct.bank*, %struct.bank** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.bank, %struct.bank* %249, i64 %251
  %253 = getelementptr inbounds %struct.bank, %struct.bank* %252, i32 0, i32 3
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %256 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp eq i64 %254, %257
  br i1 %258, label %260, label %259

259:                                              ; preds = %246
  br label %290

260:                                              ; preds = %246, %241, %231
  %261 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %262 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %261, i32 0, i32 0
  %263 = load %struct.bank*, %struct.bank** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.bank, %struct.bank* %263, i64 %265
  %267 = getelementptr inbounds %struct.bank, %struct.bank* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %289, label %270

270:                                              ; preds = %260
  %271 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %272 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %271, i32 0, i32 6
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %289, label %275

275:                                              ; preds = %270
  %276 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %277 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %276, i32 0, i32 0
  %278 = load %struct.bank*, %struct.bank** %277, align 8
  %279 = load i32, i32* %8, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.bank, %struct.bank* %278, i64 %280
  %282 = getelementptr inbounds %struct.bank, %struct.bank* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %285 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %283, %286
  br i1 %287, label %289, label %288

288:                                              ; preds = %275
  br label %290

289:                                              ; preds = %275, %270, %260
  br label %293

290:                                              ; preds = %288, %259, %219
  %291 = load i32, i32* %8, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %8, align 4
  br label %193

293:                                              ; preds = %289, %230, %207, %193
  %294 = load i32, i32* %8, align 4
  %295 = load i32, i32* @BANK1, align 4
  %296 = icmp sgt i32 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %293
  %298 = load i32, i32* @EINVAL, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %2, align 4
  br label %416

300:                                              ; preds = %293
  %301 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %302 = getelementptr inbounds %struct.tca6507_chip, %struct.tca6507_chip* %301, i32 0, i32 0
  %303 = load %struct.bank*, %struct.bank** %302, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.bank, %struct.bank* %303, i64 %305
  store %struct.bank* %306, %struct.bank** %9, align 8
  %307 = load %struct.bank*, %struct.bank** %9, align 8
  %308 = getelementptr inbounds %struct.bank, %struct.bank* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %300
  %312 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %313 = load i32, i32* %8, align 4
  %314 = load i32, i32* %4, align 4
  %315 = call i32 @set_level(%struct.tca6507_chip* %312, i32 %313, i32 %314)
  br label %316

316:                                              ; preds = %311, %300
  %317 = load %struct.bank*, %struct.bank** %9, align 8
  %318 = getelementptr inbounds %struct.bank, %struct.bank* %317, i32 0, i32 1
  %319 = load i64, i64* %318, align 8
  %320 = add nsw i64 %319, 1
  store i64 %320, i64* %318, align 8
  %321 = load i32, i32* %8, align 4
  %322 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %323 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %322, i32 0, i32 2
  store i32 %321, i32* %323, align 8
  %324 = load %struct.bank*, %struct.bank** %9, align 8
  %325 = getelementptr inbounds %struct.bank, %struct.bank* %324, i32 0, i32 6
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %338, label %328

328:                                              ; preds = %316
  %329 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %330 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %329, i32 0, i32 7
  %331 = load i64, i64* %330, align 8
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %338

333:                                              ; preds = %328
  %334 = load %struct.bank*, %struct.bank** %9, align 8
  %335 = getelementptr inbounds %struct.bank, %struct.bank* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %349

338:                                              ; preds = %333, %328, %316
  %339 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %340 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.bank*, %struct.bank** %9, align 8
  %343 = getelementptr inbounds %struct.bank, %struct.bank* %342, i32 0, i32 3
  store i64 %341, i64* %343, align 8
  %344 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %345 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %344, i32 0, i32 7
  %346 = load i64, i64* %345, align 8
  %347 = load %struct.bank*, %struct.bank** %9, align 8
  %348 = getelementptr inbounds %struct.bank, %struct.bank* %347, i32 0, i32 6
  store i64 %346, i64* %348, align 8
  store i32 1, i32* %10, align 4
  br label %349

349:                                              ; preds = %338, %333
  %350 = load %struct.bank*, %struct.bank** %9, align 8
  %351 = getelementptr inbounds %struct.bank, %struct.bank* %350, i32 0, i32 5
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %364, label %354

354:                                              ; preds = %349
  %355 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %356 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %355, i32 0, i32 6
  %357 = load i64, i64* %356, align 8
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %354
  %360 = load %struct.bank*, %struct.bank** %9, align 8
  %361 = getelementptr inbounds %struct.bank, %struct.bank* %360, i32 0, i32 2
  %362 = load i64, i64* %361, align 8
  %363 = icmp eq i64 %362, 0
  br i1 %363, label %364, label %375

364:                                              ; preds = %359, %354, %349
  %365 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %366 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %365, i32 0, i32 1
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.bank*, %struct.bank** %9, align 8
  %369 = getelementptr inbounds %struct.bank, %struct.bank* %368, i32 0, i32 4
  store i64 %367, i64* %369, align 8
  %370 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %371 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %370, i32 0, i32 6
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.bank*, %struct.bank** %9, align 8
  %374 = getelementptr inbounds %struct.bank, %struct.bank* %373, i32 0, i32 5
  store i64 %372, i64* %374, align 8
  store i32 1, i32* %10, align 4
  br label %375

375:                                              ; preds = %364, %359
  %376 = load i32, i32* %10, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %375
  %379 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %380 = load i32, i32* %8, align 4
  %381 = call i32 @set_times(%struct.tca6507_chip* %379, i32 %380)
  br label %382

382:                                              ; preds = %378, %375
  %383 = load %struct.bank*, %struct.bank** %9, align 8
  %384 = getelementptr inbounds %struct.bank, %struct.bank* %383, i32 0, i32 3
  %385 = load i64, i64* %384, align 8
  %386 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %387 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %386, i32 0, i32 0
  store i64 %385, i64* %387, align 8
  %388 = load %struct.bank*, %struct.bank** %9, align 8
  %389 = getelementptr inbounds %struct.bank, %struct.bank* %388, i32 0, i32 4
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %392 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %391, i32 0, i32 1
  store i64 %390, i64* %392, align 8
  %393 = load %struct.bank*, %struct.bank** %9, align 8
  %394 = getelementptr inbounds %struct.bank, %struct.bank* %393, i32 0, i32 2
  %395 = load i64, i64* %394, align 8
  %396 = add nsw i64 %395, 1
  store i64 %396, i64* %394, align 8
  %397 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %398 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %397, i32 0, i32 3
  store i32 1, i32* %398, align 4
  %399 = load %struct.bank*, %struct.bank** %9, align 8
  %400 = getelementptr inbounds %struct.bank, %struct.bank* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = call i8* @TO_BRIGHT(i32 %401)
  %403 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %404 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %404, i32 0, i32 0
  store i8* %402, i8** %405, align 8
  %406 = load %struct.tca6507_chip*, %struct.tca6507_chip** %5, align 8
  %407 = load %struct.tca6507_led*, %struct.tca6507_led** %3, align 8
  %408 = getelementptr inbounds %struct.tca6507_led, %struct.tca6507_led* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 8
  %410 = load i32*, i32** @blink_source, align 8
  %411 = load i32, i32* %8, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @set_select(%struct.tca6507_chip* %406, i32 %409, i32 %414)
  store i32 0, i32* %2, align 4
  br label %416

416:                                              ; preds = %382, %297, %188, %179, %138, %112, %51, %29
  %417 = load i32, i32* %2, align 4
  ret i32 %417
}

declare dso_local i32 @TO_LEVEL(i8*) #1

declare dso_local i8* @TO_BRIGHT(i32) #1

declare dso_local i32 @set_select(%struct.tca6507_chip*, i32, i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @set_level(%struct.tca6507_chip*, i32, i32) #1

declare dso_local i64 @choose_times(i64, i32*, i32*) #1

declare dso_local i32 @set_times(%struct.tca6507_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
