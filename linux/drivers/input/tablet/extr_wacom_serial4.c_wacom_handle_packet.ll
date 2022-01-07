; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_wacom_serial4.c_wacom_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.wacom = type { i32*, i32, i32, i32, i32 }

@ERASER = common dso_local global i32 0, align 4
@STYLUS = common dso_local global i32 0, align 4
@CURSOR = common dso_local global i32 0, align 4
@tools = common dso_local global %struct.TYPE_2__* null, align 8
@ABS_MISC = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@REL_WHEEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom*)* @wacom_handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_handle_packet(%struct.wacom* %0) #0 {
  %2 = alloca %struct.wacom*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wacom* %0, %struct.wacom** %2, align 8
  %10 = load %struct.wacom*, %struct.wacom** %2, align 8
  %11 = getelementptr inbounds %struct.wacom, %struct.wacom* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 64
  store i32 %15, i32* %3, align 4
  %16 = load %struct.wacom*, %struct.wacom** %2, align 8
  %17 = getelementptr inbounds %struct.wacom, %struct.wacom* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 32
  store i32 %21, i32* %4, align 4
  %22 = load %struct.wacom*, %struct.wacom** %2, align 8
  %23 = getelementptr inbounds %struct.wacom, %struct.wacom* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 120
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %5, align 4
  %29 = load %struct.wacom*, %struct.wacom** %2, align 8
  %30 = getelementptr inbounds %struct.wacom, %struct.wacom* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 3
  %35 = shl i32 %34, 14
  %36 = load %struct.wacom*, %struct.wacom** %2, align 8
  %37 = getelementptr inbounds %struct.wacom, %struct.wacom* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 7
  %42 = or i32 %35, %41
  %43 = load %struct.wacom*, %struct.wacom** %2, align 8
  %44 = getelementptr inbounds %struct.wacom, %struct.wacom* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %42, %47
  store i32 %48, i32* %7, align 4
  %49 = load %struct.wacom*, %struct.wacom** %2, align 8
  %50 = getelementptr inbounds %struct.wacom, %struct.wacom* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 3
  %55 = shl i32 %54, 14
  %56 = load %struct.wacom*, %struct.wacom** %2, align 8
  %57 = getelementptr inbounds %struct.wacom, %struct.wacom* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 7
  %62 = or i32 %55, %61
  %63 = load %struct.wacom*, %struct.wacom** %2, align 8
  %64 = getelementptr inbounds %struct.wacom, %struct.wacom* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %62, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %119

71:                                               ; preds = %1
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %119

74:                                               ; preds = %71
  %75 = load %struct.wacom*, %struct.wacom** %2, align 8
  %76 = getelementptr inbounds %struct.wacom, %struct.wacom* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 127
  store i32 %80, i32* %9, align 4
  %81 = load %struct.wacom*, %struct.wacom** %2, align 8
  %82 = getelementptr inbounds %struct.wacom, %struct.wacom* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp sge i32 %83, 1
  br i1 %84, label %85, label %96

85:                                               ; preds = %74
  %86 = load i32, i32* %9, align 4
  %87 = shl i32 %86, 1
  %88 = load %struct.wacom*, %struct.wacom** %2, align 8
  %89 = getelementptr inbounds %struct.wacom, %struct.wacom* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 4
  %94 = ashr i32 %93, 2
  %95 = or i32 %87, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %85, %74
  %97 = load %struct.wacom*, %struct.wacom** %2, align 8
  %98 = getelementptr inbounds %struct.wacom, %struct.wacom* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load i32, i32* %9, align 4
  %103 = shl i32 %102, 1
  %104 = load %struct.wacom*, %struct.wacom** %2, align 8
  %105 = getelementptr inbounds %struct.wacom, %struct.wacom* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 4
  %110 = ashr i32 %109, 2
  %111 = or i32 %103, %110
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %101, %96
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.wacom*, %struct.wacom** %2, align 8
  %115 = getelementptr inbounds %struct.wacom, %struct.wacom* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 64, %116
  %118 = xor i32 %113, %117
  store i32 %118, i32* %9, align 4
  br label %120

119:                                              ; preds = %71, %1
  store i32 -1, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %112
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.wacom*, %struct.wacom** %2, align 8
  %126 = getelementptr inbounds %struct.wacom, %struct.wacom* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @ERASER, align 4
  br label %134

132:                                              ; preds = %123
  %133 = load i32, i32* @STYLUS, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  store i32 %135, i32* %6, align 4
  br label %138

136:                                              ; preds = %120
  %137 = load i32, i32* @CURSOR, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.wacom*, %struct.wacom** %2, align 8
  %141 = getelementptr inbounds %struct.wacom, %struct.wacom* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %166

144:                                              ; preds = %138
  %145 = load %struct.wacom*, %struct.wacom** %2, align 8
  %146 = getelementptr inbounds %struct.wacom, %struct.wacom* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %144
  %150 = load %struct.wacom*, %struct.wacom** %2, align 8
  %151 = getelementptr inbounds %struct.wacom, %struct.wacom* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tools, align 8
  %154 = load %struct.wacom*, %struct.wacom** %2, align 8
  %155 = getelementptr inbounds %struct.wacom, %struct.wacom* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @input_report_key(i32 %152, i32 %160, i32 0)
  %162 = load %struct.wacom*, %struct.wacom** %2, align 8
  %163 = getelementptr inbounds %struct.wacom, %struct.wacom* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @input_sync(i32 %164)
  br label %166

166:                                              ; preds = %149, %144, %138
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.wacom*, %struct.wacom** %2, align 8
  %169 = getelementptr inbounds %struct.wacom, %struct.wacom* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  %170 = load %struct.wacom*, %struct.wacom** %2, align 8
  %171 = getelementptr inbounds %struct.wacom, %struct.wacom* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tools, align 8
  %174 = load i32, i32* %6, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %3, align 4
  %180 = call i32 @input_report_key(i32 %172, i32 %178, i32 %179)
  %181 = load %struct.wacom*, %struct.wacom** %2, align 8
  %182 = getelementptr inbounds %struct.wacom, %struct.wacom* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @ABS_MISC, align 4
  %185 = load i32, i32* %3, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %166
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tools, align 8
  %189 = load i32, i32* %6, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  br label %195

194:                                              ; preds = %166
  br label %195

195:                                              ; preds = %194, %187
  %196 = phi i32 [ %193, %187 ], [ 0, %194 ]
  %197 = call i32 @input_report_abs(i32 %183, i32 %184, i32 %196)
  %198 = load %struct.wacom*, %struct.wacom** %2, align 8
  %199 = getelementptr inbounds %struct.wacom, %struct.wacom* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ABS_X, align 4
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @input_report_abs(i32 %200, i32 %201, i32 %202)
  %204 = load %struct.wacom*, %struct.wacom** %2, align 8
  %205 = getelementptr inbounds %struct.wacom, %struct.wacom* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @ABS_Y, align 4
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @input_report_abs(i32 %206, i32 %207, i32 %208)
  %210 = load %struct.wacom*, %struct.wacom** %2, align 8
  %211 = getelementptr inbounds %struct.wacom, %struct.wacom* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @ABS_PRESSURE, align 4
  %214 = load i32, i32* %9, align 4
  %215 = call i32 @input_report_abs(i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* %4, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %240

218:                                              ; preds = %195
  %219 = load %struct.wacom*, %struct.wacom** %2, align 8
  %220 = getelementptr inbounds %struct.wacom, %struct.wacom* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @BTN_TOUCH, align 4
  %223 = load i32, i32* %5, align 4
  %224 = and i32 %223, 1
  %225 = call i32 @input_report_key(i32 %221, i32 %222, i32 %224)
  %226 = load %struct.wacom*, %struct.wacom** %2, align 8
  %227 = getelementptr inbounds %struct.wacom, %struct.wacom* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @BTN_STYLUS, align 4
  %230 = load i32, i32* %5, align 4
  %231 = and i32 %230, 2
  %232 = call i32 @input_report_key(i32 %228, i32 %229, i32 %231)
  %233 = load %struct.wacom*, %struct.wacom** %2, align 8
  %234 = getelementptr inbounds %struct.wacom, %struct.wacom* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @BTN_STYLUS2, align 4
  %237 = load i32, i32* %5, align 4
  %238 = and i32 %237, 4
  %239 = call i32 @input_report_key(i32 %235, i32 %236, i32 %238)
  br label %286

240:                                              ; preds = %195
  %241 = load %struct.wacom*, %struct.wacom** %2, align 8
  %242 = getelementptr inbounds %struct.wacom, %struct.wacom* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @BTN_LEFT, align 4
  %245 = load i32, i32* %5, align 4
  %246 = and i32 %245, 1
  %247 = call i32 @input_report_key(i32 %243, i32 %244, i32 %246)
  %248 = load %struct.wacom*, %struct.wacom** %2, align 8
  %249 = getelementptr inbounds %struct.wacom, %struct.wacom* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @BTN_RIGHT, align 4
  %252 = load i32, i32* %5, align 4
  %253 = and i32 %252, 2
  %254 = call i32 @input_report_key(i32 %250, i32 %251, i32 %253)
  %255 = load %struct.wacom*, %struct.wacom** %2, align 8
  %256 = getelementptr inbounds %struct.wacom, %struct.wacom* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @BTN_MIDDLE, align 4
  %259 = load i32, i32* %5, align 4
  %260 = and i32 %259, 4
  %261 = call i32 @input_report_key(i32 %257, i32 %258, i32 %260)
  %262 = load %struct.wacom*, %struct.wacom** %2, align 8
  %263 = getelementptr inbounds %struct.wacom, %struct.wacom* %262, i32 0, i32 0
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 6
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 48
  %268 = ashr i32 %267, 4
  store i32 %268, i32* %9, align 4
  %269 = load %struct.wacom*, %struct.wacom** %2, align 8
  %270 = getelementptr inbounds %struct.wacom, %struct.wacom* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 6
  %273 = load i32, i32* %272, align 4
  %274 = and i32 %273, 64
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %240
  %277 = load i32, i32* %9, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %9, align 4
  br label %279

279:                                              ; preds = %276, %240
  %280 = load %struct.wacom*, %struct.wacom** %2, align 8
  %281 = getelementptr inbounds %struct.wacom, %struct.wacom* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @REL_WHEEL, align 4
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @input_report_rel(i32 %282, i32 %283, i32 %284)
  br label %286

286:                                              ; preds = %279, %218
  %287 = load %struct.wacom*, %struct.wacom** %2, align 8
  %288 = getelementptr inbounds %struct.wacom, %struct.wacom* %287, i32 0, i32 4
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @input_sync(i32 %289)
  ret void
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
