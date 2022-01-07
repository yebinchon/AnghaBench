; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_touchpad_check_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_touchpad_check_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.ad714x_touchpad_drv* }
%struct.ad714x_touchpad_drv = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ad714x_touchpad_plat* }
%struct.ad714x_touchpad_plat = type { i64, i64, i64, i64 }

@LEFT_END_POINT_DETECTION_LEVEL = common dso_local global i32 0, align 4
@LEFT_RIGHT_END_POINT_DEAVTIVALION_LEVEL = common dso_local global i32 0, align 4
@RIGHT_END_POINT_DETECTION_LEVEL = common dso_local global i32 0, align 4
@TOP_END_POINT_DETECTION_LEVEL = common dso_local global i32 0, align 4
@TOP_BOTTOM_END_POINT_DEAVTIVALION_LEVEL = common dso_local global i32 0, align 4
@BOTTOM_END_POINT_DETECTION_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad714x_chip*, i32)* @touchpad_check_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @touchpad_check_endpoint(%struct.ad714x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.ad714x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad714x_touchpad_plat*, align 8
  %6 = alloca %struct.ad714x_touchpad_drv*, align 8
  %7 = alloca i32, align 4
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %9 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %12, i64 %14
  store %struct.ad714x_touchpad_plat* %15, %struct.ad714x_touchpad_plat** %5, align 8
  %16 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %17 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %20, i64 %22
  store %struct.ad714x_touchpad_drv* %23, %struct.ad714x_touchpad_drv** %6, align 8
  %24 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %25 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %28 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %33 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %36 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %31, %40
  %42 = mul nsw i32 %41, 100
  %43 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %44 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %47 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %42, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %54 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %2
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @LEFT_END_POINT_DETECTION_LEVEL, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %57
  %62 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %63 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %65 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %68 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %74 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %61, %57
  br label %100

76:                                               ; preds = %2
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @LEFT_END_POINT_DETECTION_LEVEL, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %76
  %81 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %82 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %85 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %86, 1
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @LEFT_RIGHT_END_POINT_DEAVTIVALION_LEVEL, align 4
  %91 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %92 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %90, %93
  %95 = icmp sgt i32 %89, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %80
  %97 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %98 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %97, i32 0, i32 0
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %80, %76
  br label %100

100:                                              ; preds = %99, %75
  %101 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %102 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %105 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %110 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %113 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %114, 1
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %108, %117
  %119 = mul nsw i32 %118, 100
  %120 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %121 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %124 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %119, %128
  store i32 %129, i32* %7, align 4
  %130 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %131 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %153, label %134

134:                                              ; preds = %100
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @RIGHT_END_POINT_DETECTION_LEVEL, align 4
  %137 = icmp sge i32 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %134
  %139 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %140 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %139, i32 0, i32 2
  store i32 1, i32* %140, align 4
  %141 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %142 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %145 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = sub i64 %146, 1
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %151 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %138, %134
  br label %177

153:                                              ; preds = %100
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @RIGHT_END_POINT_DETECTION_LEVEL, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %153
  %158 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %159 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %162 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %163, 1
  %165 = getelementptr inbounds i32, i32* %160, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @LEFT_RIGHT_END_POINT_DEAVTIVALION_LEVEL, align 4
  %168 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %169 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %167, %170
  %172 = icmp sgt i32 %166, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %157
  %174 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %175 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %174, i32 0, i32 2
  store i32 0, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %157, %153
  br label %177

177:                                              ; preds = %176, %152
  %178 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %179 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %182 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %187 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %190 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, 1
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sub nsw i32 %185, %194
  %196 = mul nsw i32 %195, 100
  %197 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %198 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %201 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, 1
  %204 = getelementptr inbounds i32, i32* %199, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = sdiv i32 %196, %205
  store i32 %206, i32* %7, align 4
  %207 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %208 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %230, label %211

211:                                              ; preds = %177
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* @TOP_END_POINT_DETECTION_LEVEL, align 4
  %214 = icmp sge i32 %212, %213
  br i1 %214, label %215, label %229

215:                                              ; preds = %211
  %216 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %217 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %216, i32 0, i32 4
  store i32 1, i32* %217, align 4
  %218 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %219 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %222 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = add i64 %223, 1
  %225 = getelementptr inbounds i32, i32* %220, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %228 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %215, %211
  br label %254

230:                                              ; preds = %177
  %231 = load i32, i32* %7, align 4
  %232 = load i32, i32* @TOP_END_POINT_DETECTION_LEVEL, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %253

234:                                              ; preds = %230
  %235 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %236 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %239 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = add i64 %240, 1
  %242 = getelementptr inbounds i32, i32* %237, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @TOP_BOTTOM_END_POINT_DEAVTIVALION_LEVEL, align 4
  %245 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %246 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %244, %247
  %249 = icmp sgt i32 %243, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %234
  %251 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %252 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %251, i32 0, i32 4
  store i32 0, i32* %252, align 4
  br label %253

253:                                              ; preds = %250, %234, %230
  br label %254

254:                                              ; preds = %253, %229
  %255 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %256 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %259 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds i32, i32* %257, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %264 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %267 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = sub i64 %268, 1
  %270 = getelementptr inbounds i32, i32* %265, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %262, %271
  %273 = mul nsw i32 %272, 100
  %274 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %275 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %278 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = sub i64 %279, 1
  %281 = getelementptr inbounds i32, i32* %276, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sdiv i32 %273, %282
  store i32 %283, i32* %7, align 4
  %284 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %285 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %307, label %288

288:                                              ; preds = %254
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* @BOTTOM_END_POINT_DETECTION_LEVEL, align 4
  %291 = icmp sge i32 %289, %290
  br i1 %291, label %292, label %306

292:                                              ; preds = %288
  %293 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %294 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %293, i32 0, i32 6
  store i32 1, i32* %294, align 4
  %295 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %296 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %299 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %298, i32 0, i32 3
  %300 = load i64, i64* %299, align 8
  %301 = sub i64 %300, 1
  %302 = getelementptr inbounds i32, i32* %297, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %305 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %304, i32 0, i32 7
  store i32 %303, i32* %305, align 4
  br label %306

306:                                              ; preds = %292, %288
  br label %331

307:                                              ; preds = %254
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* @BOTTOM_END_POINT_DETECTION_LEVEL, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %330

311:                                              ; preds = %307
  %312 = load %struct.ad714x_chip*, %struct.ad714x_chip** %3, align 8
  %313 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %312, i32 0, i32 0
  %314 = load i32*, i32** %313, align 8
  %315 = load %struct.ad714x_touchpad_plat*, %struct.ad714x_touchpad_plat** %5, align 8
  %316 = getelementptr inbounds %struct.ad714x_touchpad_plat, %struct.ad714x_touchpad_plat* %315, i32 0, i32 3
  %317 = load i64, i64* %316, align 8
  %318 = sub i64 %317, 1
  %319 = getelementptr inbounds i32, i32* %314, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @TOP_BOTTOM_END_POINT_DEAVTIVALION_LEVEL, align 4
  %322 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %323 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %322, i32 0, i32 7
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %321, %324
  %326 = icmp sgt i32 %320, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %311
  %328 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %329 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %328, i32 0, i32 6
  store i32 0, i32* %329, align 4
  br label %330

330:                                              ; preds = %327, %311, %307
  br label %331

331:                                              ; preds = %330, %306
  %332 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %333 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %351, label %336

336:                                              ; preds = %331
  %337 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %338 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %351, label %341

341:                                              ; preds = %336
  %342 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %343 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %351, label %346

346:                                              ; preds = %341
  %347 = load %struct.ad714x_touchpad_drv*, %struct.ad714x_touchpad_drv** %6, align 8
  %348 = getelementptr inbounds %struct.ad714x_touchpad_drv, %struct.ad714x_touchpad_drv* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br label %351

351:                                              ; preds = %346, %341, %336, %331
  %352 = phi i1 [ true, %341 ], [ true, %336 ], [ true, %331 ], [ %350, %346 ]
  %353 = zext i1 %352 to i32
  ret i32 %353
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
