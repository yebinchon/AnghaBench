; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_analog.c_analog_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_analog.c_analog_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analog = type { i32, i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ANALOG_HAT_FCS = common dso_local global i32 0, align 4
@ANALOG_HBTN_CHF = common dso_local global i32 0, align 4
@ANALOG_BTN_TL = common dso_local global i32 0, align 4
@analog_pads = common dso_local global i32* null, align 8
@ANALOG_BTN_TR = common dso_local global i32 0, align 4
@ANALOG_BTN_TL2 = common dso_local global i32 0, align 4
@ANALOG_BTN_TR2 = common dso_local global i32 0, align 4
@analog_axes = common dso_local global i32* null, align 8
@analog_exts = common dso_local global i32* null, align 8
@analog_hats = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.analog*, i32*, i32*, i32)* @analog_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analog_decode(%struct.analog* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.analog*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.analog* %0, %struct.analog** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.analog*, %struct.analog** %5, align 8
  %13 = getelementptr inbounds %struct.analog, %struct.analog* %12, i32 0, i32 2
  %14 = load %struct.input_dev*, %struct.input_dev** %13, align 8
  store %struct.input_dev* %14, %struct.input_dev** %9, align 8
  %15 = load %struct.analog*, %struct.analog** %5, align 8
  %16 = getelementptr inbounds %struct.analog, %struct.analog* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ANALOG_HAT_FCS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %45, %21
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = shl i32 %32, 1
  %34 = add nsw i32 %33, 1
  %35 = mul nsw i32 %31, %34
  %36 = ashr i32 %35, 3
  %37 = icmp slt i32 %28, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 14
  %41 = shl i32 1, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  br label %48

44:                                               ; preds = %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %22

48:                                               ; preds = %38, %22
  br label %49

49:                                               ; preds = %48, %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %77, %49
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 6
  br i1 %52, label %53, label %80

53:                                               ; preds = %50
  %54 = load %struct.analog*, %struct.analog** %5, align 8
  %55 = getelementptr inbounds %struct.analog, %struct.analog* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 16, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %63 = load %struct.analog*, %struct.analog** %5, align 8
  %64 = getelementptr inbounds %struct.analog, %struct.analog* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = ashr i32 %71, %72
  %74 = and i32 %73, 1
  %75 = call i32 @input_report_key(%struct.input_dev* %62, i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %61, %53
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %50

80:                                               ; preds = %50
  %81 = load %struct.analog*, %struct.analog** %5, align 8
  %82 = getelementptr inbounds %struct.analog, %struct.analog* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ANALOG_HBTN_CHF, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %80
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %107, %87
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %93 = load %struct.analog*, %struct.analog** %5, align 8
  %94 = getelementptr inbounds %struct.analog, %struct.analog* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 10
  %104 = ashr i32 %101, %103
  %105 = and i32 %104, 1
  %106 = call i32 @input_report_key(%struct.input_dev* %92, i32 %100, i32 %105)
  br label %107

107:                                              ; preds = %91
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %88

110:                                              ; preds = %88
  br label %111

111:                                              ; preds = %110, %80
  %112 = load %struct.analog*, %struct.analog** %5, align 8
  %113 = getelementptr inbounds %struct.analog, %struct.analog* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @ANALOG_BTN_TL, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %111
  %119 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %120 = load i32*, i32** @analog_pads, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %6, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 1
  %130 = icmp slt i32 %125, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @input_report_key(%struct.input_dev* %119, i32 %122, i32 %131)
  br label %133

133:                                              ; preds = %118, %111
  %134 = load %struct.analog*, %struct.analog** %5, align 8
  %135 = getelementptr inbounds %struct.analog, %struct.analog* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ANALOG_BTN_TR, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %133
  %141 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %142 = load i32*, i32** @analog_pads, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %6, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %7, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  %150 = load i32, i32* %149, align 4
  %151 = ashr i32 %150, 1
  %152 = icmp slt i32 %147, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @input_report_key(%struct.input_dev* %141, i32 %144, i32 %153)
  br label %155

155:                                              ; preds = %140, %133
  %156 = load %struct.analog*, %struct.analog** %5, align 8
  %157 = getelementptr inbounds %struct.analog, %struct.analog* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ANALOG_BTN_TL2, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %181

162:                                              ; preds = %155
  %163 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %164 = load i32*, i32** @analog_pads, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 2
  %175 = load i32, i32* %174, align 4
  %176 = ashr i32 %175, 1
  %177 = add nsw i32 %172, %176
  %178 = icmp sgt i32 %169, %177
  %179 = zext i1 %178 to i32
  %180 = call i32 @input_report_key(%struct.input_dev* %163, i32 %166, i32 %179)
  br label %181

181:                                              ; preds = %162, %155
  %182 = load %struct.analog*, %struct.analog** %5, align 8
  %183 = getelementptr inbounds %struct.analog, %struct.analog* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ANALOG_BTN_TR2, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %181
  %189 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %190 = load i32*, i32** @analog_pads, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %6, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %7, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %7, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 3
  %201 = load i32, i32* %200, align 4
  %202 = ashr i32 %201, 1
  %203 = add nsw i32 %198, %202
  %204 = icmp sgt i32 %195, %203
  %205 = zext i1 %204 to i32
  %206 = call i32 @input_report_key(%struct.input_dev* %189, i32 %192, i32 %205)
  br label %207

207:                                              ; preds = %188, %181
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %208

208:                                              ; preds = %234, %207
  %209 = load i32, i32* %10, align 4
  %210 = icmp slt i32 %209, 4
  br i1 %210, label %211, label %237

211:                                              ; preds = %208
  %212 = load %struct.analog*, %struct.analog** %5, align 8
  %213 = getelementptr inbounds %struct.analog, %struct.analog* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = shl i32 1, %215
  %217 = and i32 %214, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %211
  %220 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %221 = load i32*, i32** @analog_axes, align 8
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %11, align 4
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds i32, i32* %221, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32*, i32** %6, align 8
  %228 = load i32, i32* %10, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @input_report_abs(%struct.input_dev* %220, i32 %226, i32 %231)
  br label %233

233:                                              ; preds = %219, %211
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  br label %208

237:                                              ; preds = %208
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %238

238:                                              ; preds = %296, %237
  %239 = load i32, i32* %10, align 4
  %240 = icmp slt i32 %239, 3
  br i1 %240, label %241, label %299

241:                                              ; preds = %238
  %242 = load %struct.analog*, %struct.analog** %5, align 8
  %243 = getelementptr inbounds %struct.analog, %struct.analog* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32*, i32** @analog_exts, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %244, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %295

252:                                              ; preds = %241
  %253 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %254 = load i32*, i32** @analog_hats, align 8
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %11, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %254, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* %10, align 4
  %262 = shl i32 %261, 2
  %263 = add nsw i32 %262, 7
  %264 = ashr i32 %260, %263
  %265 = and i32 %264, 1
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* %10, align 4
  %268 = shl i32 %267, 2
  %269 = add nsw i32 %268, 9
  %270 = ashr i32 %266, %269
  %271 = and i32 %270, 1
  %272 = sub nsw i32 %265, %271
  %273 = call i32 @input_report_abs(%struct.input_dev* %253, i32 %259, i32 %272)
  %274 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %275 = load i32*, i32** @analog_hats, align 8
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %11, align 4
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* %10, align 4
  %283 = shl i32 %282, 2
  %284 = add nsw i32 %283, 8
  %285 = ashr i32 %281, %284
  %286 = and i32 %285, 1
  %287 = load i32, i32* %8, align 4
  %288 = load i32, i32* %10, align 4
  %289 = shl i32 %288, 2
  %290 = add nsw i32 %289, 6
  %291 = ashr i32 %287, %290
  %292 = and i32 %291, 1
  %293 = sub nsw i32 %286, %292
  %294 = call i32 @input_report_abs(%struct.input_dev* %274, i32 %280, i32 %293)
  br label %295

295:                                              ; preds = %252, %241
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %10, align 4
  br label %238

299:                                              ; preds = %238
  %300 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %301 = call i32 @input_sync(%struct.input_dev* %300)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
