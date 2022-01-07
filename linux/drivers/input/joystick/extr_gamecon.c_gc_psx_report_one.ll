; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_psx_report_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_psx_report_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_pad = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_THUMBL = common dso_local global i32 0, align 4
@BTN_THUMBR = common dso_local global i32 0, align 4
@GC_DDR = common dso_local global i32 0, align 4
@gc_psx_ddr_btn = common dso_local global i32* null, align 8
@gc_psx_abs = common dso_local global i32* null, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@gc_psx_btn = common dso_local global i32* null, align 8
@BTN_START = common dso_local global i32 0, align 4
@BTN_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gc_pad*, i8, i8*)* @gc_psx_report_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_psx_report_one(%struct.gc_pad* %0, i8 zeroext %1, i8* %2) #0 {
  %4 = alloca %struct.gc_pad*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.gc_pad* %0, %struct.gc_pad** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %9 = load %struct.gc_pad*, %struct.gc_pad** %4, align 8
  %10 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %9, i32 0, i32 1
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %7, align 8
  %12 = load i8, i8* %5, align 1
  %13 = zext i8 %12 to i32
  switch i32 %13, label %308 [
    i32 128, label %14
    i32 130, label %35
    i32 131, label %35
    i32 129, label %183
  ]

14:                                               ; preds = %3
  %15 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %16 = load i32, i32* @BTN_THUMBL, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = xor i32 %20, -1
  %22 = and i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = call i32 @input_report_key(%struct.input_dev* %15, i32 %16, i8 zeroext %23)
  %25 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %26 = load i32, i32* @BTN_THUMBR, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = xor i32 %30, -1
  %32 = and i32 %31, 2
  %33 = trunc i32 %32 to i8
  %34 = call i32 @input_report_key(%struct.input_dev* %25, i32 %26, i8 zeroext %33)
  br label %35

35:                                               ; preds = %3, %3, %14
  %36 = load %struct.gc_pad*, %struct.gc_pad** %4, align 8
  %37 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @GC_DDR, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %65

45:                                               ; preds = %42
  %46 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %47 = load i32*, i32** @gc_psx_ddr_btn, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 16, %57
  %59 = and i32 %56, %58
  %60 = trunc i32 %59 to i8
  %61 = call i32 @input_report_key(%struct.input_dev* %46, i32 %51, i8 zeroext %60)
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %42

65:                                               ; preds = %42
  br label %136

66:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %86, %66
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %72 = load i32*, i32** @gc_psx_abs, align 8
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = call i32 @input_report_abs(%struct.input_dev* %71, i32 %77, i32 %84)
  br label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %67

89:                                               ; preds = %67
  %90 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %91 = load i32, i32* @ABS_X, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 128
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = mul nsw i32 %100, 128
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 32
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = mul nsw i32 %109, 127
  %111 = add nsw i32 %101, %110
  %112 = call i32 @input_report_abs(%struct.input_dev* %90, i32 %91, i32 %111)
  %113 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %114 = load i32, i32* @ABS_Y, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = and i32 %118, 16
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = mul nsw i32 %123, 128
  %125 = load i8*, i8** %6, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 64
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = mul nsw i32 %132, 127
  %134 = add nsw i32 %124, %133
  %135 = call i32 @input_report_abs(%struct.input_dev* %113, i32 %114, i32 %134)
  br label %136

136:                                              ; preds = %89, %65
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %157, %136
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, 8
  br i1 %139, label %140, label %160

140:                                              ; preds = %137
  %141 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %142 = load i32*, i32** @gc_psx_btn, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %8, align 4
  %153 = shl i32 1, %152
  %154 = and i32 %151, %153
  %155 = trunc i32 %154 to i8
  %156 = call i32 @input_report_key(%struct.input_dev* %141, i32 %146, i8 zeroext %155)
  br label %157

157:                                              ; preds = %140
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %137

160:                                              ; preds = %137
  %161 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %162 = load i32, i32* @BTN_START, align 4
  %163 = load i8*, i8** %6, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 0
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = xor i32 %166, -1
  %168 = and i32 %167, 8
  %169 = trunc i32 %168 to i8
  %170 = call i32 @input_report_key(%struct.input_dev* %161, i32 %162, i8 zeroext %169)
  %171 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %172 = load i32, i32* @BTN_SELECT, align 4
  %173 = load i8*, i8** %6, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = xor i32 %176, -1
  %178 = and i32 %177, 1
  %179 = trunc i32 %178 to i8
  %180 = call i32 @input_report_key(%struct.input_dev* %171, i32 %172, i8 zeroext %179)
  %181 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %182 = call i32 @input_sync(%struct.input_dev* %181)
  br label %309

183:                                              ; preds = %3
  %184 = load %struct.gc_pad*, %struct.gc_pad** %4, align 8
  %185 = getelementptr inbounds %struct.gc_pad, %struct.gc_pad* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @GC_DDR, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %214

189:                                              ; preds = %183
  store i32 0, i32* %8, align 4
  br label %190

190:                                              ; preds = %210, %189
  %191 = load i32, i32* %8, align 4
  %192 = icmp slt i32 %191, 4
  br i1 %192, label %193, label %213

193:                                              ; preds = %190
  %194 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %195 = load i32*, i32** @gc_psx_ddr_btn, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i8*, i8** %6, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %8, align 4
  %206 = shl i32 16, %205
  %207 = and i32 %204, %206
  %208 = trunc i32 %207 to i8
  %209 = call i32 @input_report_key(%struct.input_dev* %194, i32 %199, i8 zeroext %208)
  br label %210

210:                                              ; preds = %193
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %190

213:                                              ; preds = %190
  br label %261

214:                                              ; preds = %183
  %215 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %216 = load i32, i32* @ABS_X, align 4
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = and i32 %220, 128
  %222 = icmp ne i32 %221, 0
  %223 = xor i1 %222, true
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = mul nsw i32 %225, 128
  %227 = load i8*, i8** %6, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 0
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = and i32 %230, 32
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = mul nsw i32 %234, 127
  %236 = add nsw i32 %226, %235
  %237 = call i32 @input_report_abs(%struct.input_dev* %215, i32 %216, i32 %236)
  %238 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %239 = load i32, i32* @ABS_Y, align 4
  %240 = load i8*, i8** %6, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 0
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = and i32 %243, 16
  %245 = icmp ne i32 %244, 0
  %246 = xor i1 %245, true
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = mul nsw i32 %248, 128
  %250 = load i8*, i8** %6, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 0
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = and i32 %253, 64
  %255 = icmp ne i32 %254, 0
  %256 = xor i1 %255, true
  %257 = zext i1 %256 to i32
  %258 = mul nsw i32 %257, 127
  %259 = add nsw i32 %249, %258
  %260 = call i32 @input_report_abs(%struct.input_dev* %238, i32 %239, i32 %259)
  br label %261

261:                                              ; preds = %214, %213
  store i32 0, i32* %8, align 4
  br label %262

262:                                              ; preds = %282, %261
  %263 = load i32, i32* %8, align 4
  %264 = icmp slt i32 %263, 8
  br i1 %264, label %265, label %285

265:                                              ; preds = %262
  %266 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %267 = load i32*, i32** @gc_psx_btn, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i8*, i8** %6, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 1
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = xor i32 %275, -1
  %277 = load i32, i32* %8, align 4
  %278 = shl i32 1, %277
  %279 = and i32 %276, %278
  %280 = trunc i32 %279 to i8
  %281 = call i32 @input_report_key(%struct.input_dev* %266, i32 %271, i8 zeroext %280)
  br label %282

282:                                              ; preds = %265
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  br label %262

285:                                              ; preds = %262
  %286 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %287 = load i32, i32* @BTN_START, align 4
  %288 = load i8*, i8** %6, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 0
  %290 = load i8, i8* %289, align 1
  %291 = zext i8 %290 to i32
  %292 = xor i32 %291, -1
  %293 = and i32 %292, 8
  %294 = trunc i32 %293 to i8
  %295 = call i32 @input_report_key(%struct.input_dev* %286, i32 %287, i8 zeroext %294)
  %296 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %297 = load i32, i32* @BTN_SELECT, align 4
  %298 = load i8*, i8** %6, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 0
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = xor i32 %301, -1
  %303 = and i32 %302, 1
  %304 = trunc i32 %303 to i8
  %305 = call i32 @input_report_key(%struct.input_dev* %296, i32 %297, i8 zeroext %304)
  %306 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %307 = call i32 @input_sync(%struct.input_dev* %306)
  br label %309

308:                                              ; preds = %3
  br label %309

309:                                              ; preds = %308, %285, %160
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
