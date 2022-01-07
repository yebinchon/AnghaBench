; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_walkera0701.c_walkera0701_parse_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_walkera0701.c_walkera0701_parse_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.walkera_dev = type { i32*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"%4d %4d %4d %4d  %4d %4d %4d %4d (magic %2x %d)\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_RUDDER = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@BTN_GEAR_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.walkera_dev*)* @walkera0701_parse_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walkera0701_parse_frame(%struct.walkera_dev* %0) #0 {
  %2 = alloca %struct.walkera_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.walkera_dev* %0, %struct.walkera_dev** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %41, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 10
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %21 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 7
  %28 = load i32, i32* %14, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* %14, align 4
  %30 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %31 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 8
  %38 = ashr i32 %37, 3
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %19
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %16

44:                                               ; preds = %16
  %45 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %46 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 10
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 7
  %51 = load i32, i32* %14, align 4
  %52 = and i32 %51, 7
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %440

55:                                               ; preds = %44
  %56 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %57 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 10
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 8
  %62 = ashr i32 %61, 3
  %63 = load i32, i32* %14, align 4
  %64 = ashr i32 %63, 3
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %64, %65
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %440

70:                                               ; preds = %55
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 11, i32* %3, align 4
  br label %71

71:                                               ; preds = %96, %70
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 23
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %76 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 7
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %86 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 8
  %93 = ashr i32 %92, 3
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %74
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %71

99:                                               ; preds = %71
  %100 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %101 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 23
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 7
  %106 = load i32, i32* %14, align 4
  %107 = and i32 %106, 7
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %440

110:                                              ; preds = %99
  %111 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %112 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 23
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 8
  %117 = ashr i32 %116, 3
  %118 = load i32, i32* %14, align 4
  %119 = ashr i32 %118, 3
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %119, %120
  %122 = and i32 %121, 1
  %123 = icmp ne i32 %117, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %110
  br label %440

125:                                              ; preds = %110
  %126 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %127 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 7
  %132 = mul nsw i32 %131, 256
  %133 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %134 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %137, 16
  %139 = add nsw i32 %132, %138
  %140 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %141 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %139, %144
  %146 = ashr i32 %145, 2
  store i32 %146, i32* %4, align 4
  %147 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %148 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 0
  %151 = load i32, i32* %150, align 4
  %152 = ashr i32 %151, 2
  %153 = and i32 %152, 2
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* %4, align 4
  %156 = mul nsw i32 %155, %154
  store i32 %156, i32* %4, align 4
  %157 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %158 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, 1
  %163 = shl i32 %162, 8
  %164 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %165 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 3
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 4
  %170 = or i32 %163, %169
  %171 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %172 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %170, %175
  store i32 %176, i32* %5, align 4
  %177 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %178 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 2
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 2
  %183 = sub nsw i32 %182, 1
  %184 = load i32, i32* %5, align 4
  %185 = mul nsw i32 %184, %183
  store i32 %185, i32* %5, align 4
  %186 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %187 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 5
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 7
  %192 = mul nsw i32 %191, 256
  %193 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %194 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 6
  %197 = load i32, i32* %196, align 4
  %198 = mul nsw i32 %197, 16
  %199 = add nsw i32 %192, %198
  %200 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %201 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 7
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %199, %204
  %206 = ashr i32 %205, 2
  store i32 %206, i32* %6, align 4
  %207 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %208 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 5
  %211 = load i32, i32* %210, align 4
  %212 = ashr i32 %211, 2
  %213 = and i32 %212, 2
  %214 = sub nsw i32 %213, 1
  %215 = load i32, i32* %6, align 4
  %216 = mul nsw i32 %215, %214
  store i32 %216, i32* %6, align 4
  %217 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %218 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 7
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 1
  %223 = shl i32 %222, 8
  %224 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %225 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 8
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 4
  %230 = or i32 %223, %229
  %231 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %232 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 9
  %235 = load i32, i32* %234, align 4
  %236 = or i32 %230, %235
  store i32 %236, i32* %7, align 4
  %237 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %238 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 7
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 2
  %243 = sub nsw i32 %242, 1
  %244 = load i32, i32* %7, align 4
  %245 = mul nsw i32 %244, %243
  store i32 %245, i32* %7, align 4
  %246 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %247 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %246, i32 0, i32 0
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 11
  %250 = load i32, i32* %249, align 4
  %251 = and i32 %250, 7
  %252 = mul nsw i32 %251, 256
  %253 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %254 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %253, i32 0, i32 0
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 12
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %257, 16
  %259 = add nsw i32 %252, %258
  %260 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %261 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 13
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %259, %264
  %266 = ashr i32 %265, 2
  store i32 %266, i32* %8, align 4
  %267 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %268 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 11
  %271 = load i32, i32* %270, align 4
  %272 = ashr i32 %271, 2
  %273 = and i32 %272, 2
  %274 = sub nsw i32 %273, 1
  %275 = load i32, i32* %8, align 4
  %276 = mul nsw i32 %275, %274
  store i32 %276, i32* %8, align 4
  %277 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %278 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 13
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, 1
  %283 = shl i32 %282, 8
  %284 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %285 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 14
  %288 = load i32, i32* %287, align 4
  %289 = shl i32 %288, 4
  %290 = or i32 %283, %289
  %291 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %292 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 15
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %290, %295
  store i32 %296, i32* %9, align 4
  %297 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %298 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 13
  %301 = load i32, i32* %300, align 4
  %302 = and i32 %301, 2
  %303 = sub nsw i32 %302, 1
  %304 = load i32, i32* %9, align 4
  %305 = mul nsw i32 %304, %303
  store i32 %305, i32* %9, align 4
  %306 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %307 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 16
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, 7
  %312 = mul nsw i32 %311, 256
  %313 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %314 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 17
  %317 = load i32, i32* %316, align 4
  %318 = mul nsw i32 %317, 16
  %319 = add nsw i32 %312, %318
  %320 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %321 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %320, i32 0, i32 0
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 18
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %319, %324
  %326 = ashr i32 %325, 2
  store i32 %326, i32* %10, align 4
  %327 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %328 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 16
  %331 = load i32, i32* %330, align 4
  %332 = ashr i32 %331, 2
  %333 = and i32 %332, 2
  %334 = sub nsw i32 %333, 1
  %335 = load i32, i32* %10, align 4
  %336 = mul nsw i32 %335, %334
  store i32 %336, i32* %10, align 4
  %337 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %338 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %337, i32 0, i32 0
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 18
  %341 = load i32, i32* %340, align 4
  %342 = and i32 %341, 1
  %343 = shl i32 %342, 8
  %344 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %345 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %344, i32 0, i32 0
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 19
  %348 = load i32, i32* %347, align 4
  %349 = shl i32 %348, 4
  %350 = or i32 %343, %349
  %351 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %352 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %351, i32 0, i32 0
  %353 = load i32*, i32** %352, align 8
  %354 = getelementptr inbounds i32, i32* %353, i64 20
  %355 = load i32, i32* %354, align 4
  %356 = or i32 %350, %355
  store i32 %356, i32* %11, align 4
  %357 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %358 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 18
  %361 = load i32, i32* %360, align 4
  %362 = and i32 %361, 2
  %363 = sub nsw i32 %362, 1
  %364 = load i32, i32* %11, align 4
  %365 = mul nsw i32 %364, %363
  store i32 %365, i32* %11, align 4
  %366 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %367 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 21
  %370 = load i32, i32* %369, align 4
  %371 = shl i32 %370, 4
  %372 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %373 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 22
  %376 = load i32, i32* %375, align 4
  %377 = or i32 %371, %376
  store i32 %377, i32* %12, align 4
  %378 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %379 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %378, i32 0, i32 0
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 24
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, 8
  %384 = ashr i32 %383, 3
  store i32 %384, i32* %13, align 4
  %385 = load i32, i32* %4, align 4
  %386 = load i32, i32* %5, align 4
  %387 = load i32, i32* %6, align 4
  %388 = load i32, i32* %7, align 4
  %389 = load i32, i32* %8, align 4
  %390 = load i32, i32* %9, align 4
  %391 = load i32, i32* %10, align 4
  %392 = load i32, i32* %11, align 4
  %393 = load i32, i32* %12, align 4
  %394 = load i32, i32* %13, align 4
  %395 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %385, i32 %386, i32 %387, i32 %388, i32 %389, i32 %390, i32 %391, i32 %392, i32 %393, i32 %394)
  %396 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %397 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 8
  %399 = load i32, i32* @ABS_X, align 4
  %400 = load i32, i32* %5, align 4
  %401 = call i32 @input_report_abs(i32 %398, i32 %399, i32 %400)
  %402 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %403 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @ABS_Y, align 4
  %406 = load i32, i32* %4, align 4
  %407 = call i32 @input_report_abs(i32 %404, i32 %405, i32 %406)
  %408 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %409 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @ABS_Z, align 4
  %412 = load i32, i32* %9, align 4
  %413 = call i32 @input_report_abs(i32 %410, i32 %411, i32 %412)
  %414 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %415 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @ABS_THROTTLE, align 4
  %418 = load i32, i32* %6, align 4
  %419 = call i32 @input_report_abs(i32 %416, i32 %417, i32 %418)
  %420 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %421 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @ABS_RUDDER, align 4
  %424 = load i32, i32* %7, align 4
  %425 = call i32 @input_report_abs(i32 %422, i32 %423, i32 %424)
  %426 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %427 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* @ABS_MISC, align 4
  %430 = load i32, i32* %10, align 4
  %431 = call i32 @input_report_abs(i32 %428, i32 %429, i32 %430)
  %432 = load %struct.walkera_dev*, %struct.walkera_dev** %2, align 8
  %433 = getelementptr inbounds %struct.walkera_dev, %struct.walkera_dev* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 8
  %435 = load i32, i32* @BTN_GEAR_DOWN, align 4
  %436 = load i32, i32* %8, align 4
  %437 = icmp sgt i32 %436, 0
  %438 = zext i1 %437 to i32
  %439 = call i32 @input_report_key(i32 %434, i32 %435, i32 %438)
  br label %440

440:                                              ; preds = %125, %124, %109, %69, %54
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
