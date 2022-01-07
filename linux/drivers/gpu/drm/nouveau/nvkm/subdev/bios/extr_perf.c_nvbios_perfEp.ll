; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_perf.c_nvbios_perfEp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_perf.c_nvbios_perfEp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nvbios_perfE = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NVKM_PCIE_SPEED_5_0 = common dso_local global i32 0, align 4
@NVKM_PCIE_SPEED_2_5 = common dso_local global i32 0, align 4
@NVKM_PCIE_SPEED_8_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_perfEp(%struct.nvkm_bios* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.nvbios_perfE* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.nvbios_perfE*, align 8
  %16 = alloca i64, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.nvbios_perfE* %6, %struct.nvbios_perfE** %15, align 8
  %17 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = call i64 @nvbios_perf_entry(%struct.nvkm_bios* %17, i32 %18, i32* %19, i32* %20, i32* %21, i32* %22)
  store i64 %23, i64* %16, align 8
  %24 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %25 = call i32 @memset(%struct.nvbios_perfE* %24, i32 0, i32 44)
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %27 = load i64, i64* %16, align 8
  %28 = add nsw i64 %27, 0
  %29 = call i32 @nvbios_rd08(%struct.nvkm_bios* %26, i64 %28)
  %30 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %31 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %16, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %36, %38
  switch i32 %39, label %245 [
    i32 18, label %40
    i32 19, label %40
    i32 20, label %40
    i32 33, label %72
    i32 35, label %72
    i32 36, label %72
    i32 37, label %128
    i32 48, label %162
    i32 53, label %169
    i32 64, label %217
  ]

40:                                               ; preds = %7, %7, %7
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %42 = load i64, i64* %16, align 8
  %43 = add nsw i64 %42, 1
  %44 = call i32 @nvbios_rd32(%struct.nvkm_bios* %41, i64 %43)
  %45 = mul nsw i32 %44, 10
  %46 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %47 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %49 = load i64, i64* %16, align 8
  %50 = add nsw i64 %49, 5
  %51 = call i32 @nvbios_rd32(%struct.nvkm_bios* %48, i64 %50)
  %52 = mul nsw i32 %51, 20
  %53 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %54 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %56 = load i64, i64* %16, align 8
  %57 = add nsw i64 %56, 55
  %58 = call i32 @nvbios_rd08(%struct.nvkm_bios* %55, i64 %57)
  %59 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %60 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 56
  br i1 %63, label %64, label %71

64:                                               ; preds = %40
  %65 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %66 = load i64, i64* %16, align 8
  %67 = add nsw i64 %66, 56
  %68 = call i32 @nvbios_rd08(%struct.nvkm_bios* %65, i64 %67)
  %69 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %70 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %64, %40
  br label %246

72:                                               ; preds = %7, %7, %7
  %73 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %74 = load i64, i64* %16, align 8
  %75 = add nsw i64 %74, 4
  %76 = call i32 @nvbios_rd08(%struct.nvkm_bios* %73, i64 %75)
  %77 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %78 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %80 = load i64, i64* %16, align 8
  %81 = add nsw i64 %80, 5
  %82 = call i32 @nvbios_rd08(%struct.nvkm_bios* %79, i64 %81)
  %83 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %84 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %86 = load i64, i64* %16, align 8
  %87 = add nsw i64 %86, 6
  %88 = call i32 @nvbios_rd16(%struct.nvkm_bios* %85, i64 %87)
  %89 = mul nsw i32 %88, 1000
  %90 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %91 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 4
  %92 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %93 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %96 = load i64, i64* %16, align 8
  %97 = add nsw i64 %96, 8
  %98 = call i32 @nvbios_rd08(%struct.nvkm_bios* %95, i64 %97)
  %99 = trunc i32 %98 to i8
  %100 = sext i8 %99 to i32
  %101 = mul nsw i32 %100, 1000
  %102 = add nsw i32 %94, %101
  %103 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %104 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %106 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %119 [
    i32 73, label %111
    i32 75, label %111
  ]

111:                                              ; preds = %72, %72
  %112 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %113 = load i64, i64* %16, align 8
  %114 = add nsw i64 %113, 11
  %115 = call i32 @nvbios_rd16(%struct.nvkm_bios* %112, i64 %114)
  %116 = mul nsw i32 %115, 1000
  %117 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %118 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  br label %127

119:                                              ; preds = %72
  %120 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %121 = load i64, i64* %16, align 8
  %122 = add nsw i64 %121, 11
  %123 = call i32 @nvbios_rd16(%struct.nvkm_bios* %120, i64 %122)
  %124 = mul nsw i32 %123, 2000
  %125 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %126 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %119, %111
  br label %246

128:                                              ; preds = %7
  %129 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %130 = load i64, i64* %16, align 8
  %131 = add nsw i64 %130, 4
  %132 = call i32 @nvbios_rd08(%struct.nvkm_bios* %129, i64 %131)
  %133 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %134 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %136 = load i64, i64* %16, align 8
  %137 = add nsw i64 %136, 5
  %138 = call i32 @nvbios_rd08(%struct.nvkm_bios* %135, i64 %137)
  %139 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %140 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %139, i32 0, i32 4
  store i32 %138, i32* %140, align 4
  %141 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %142 = load i64, i64* %16, align 8
  %143 = add nsw i64 %142, 6
  %144 = call i32 @nvbios_rd16(%struct.nvkm_bios* %141, i64 %143)
  %145 = mul nsw i32 %144, 1000
  %146 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %147 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %149 = load i64, i64* %16, align 8
  %150 = add nsw i64 %149, 10
  %151 = call i32 @nvbios_rd16(%struct.nvkm_bios* %148, i64 %150)
  %152 = mul nsw i32 %151, 1000
  %153 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %154 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %156 = load i64, i64* %16, align 8
  %157 = add nsw i64 %156, 12
  %158 = call i32 @nvbios_rd16(%struct.nvkm_bios* %155, i64 %157)
  %159 = mul nsw i32 %158, 1000
  %160 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %161 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  br label %246

162:                                              ; preds = %7
  %163 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %164 = load i64, i64* %16, align 8
  %165 = add nsw i64 %164, 2
  %166 = call i32 @nvbios_rd16(%struct.nvkm_bios* %163, i64 %165)
  %167 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %168 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %7, %162
  %170 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %171 = load i64, i64* %16, align 8
  %172 = add nsw i64 %171, 6
  %173 = call i32 @nvbios_rd08(%struct.nvkm_bios* %170, i64 %172)
  %174 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %175 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %177 = load i64, i64* %16, align 8
  %178 = add nsw i64 %177, 7
  %179 = call i32 @nvbios_rd08(%struct.nvkm_bios* %176, i64 %178)
  %180 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %181 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %183 = load i64, i64* %16, align 8
  %184 = add nsw i64 %183, 8
  %185 = call i32 @nvbios_rd16(%struct.nvkm_bios* %182, i64 %184)
  %186 = mul nsw i32 %185, 1000
  %187 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %188 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %190 = load i64, i64* %16, align 8
  %191 = add nsw i64 %190, 10
  %192 = call i32 @nvbios_rd16(%struct.nvkm_bios* %189, i64 %191)
  %193 = mul nsw i32 %192, 1000
  %194 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %195 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %194, i32 0, i32 5
  store i32 %193, i32* %195, align 4
  %196 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %197 = load i64, i64* %16, align 8
  %198 = add nsw i64 %197, 12
  %199 = call i32 @nvbios_rd16(%struct.nvkm_bios* %196, i64 %198)
  %200 = mul nsw i32 %199, 1000
  %201 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %202 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 4
  %203 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %204 = load i64, i64* %16, align 8
  %205 = add nsw i64 %204, 16
  %206 = call i32 @nvbios_rd16(%struct.nvkm_bios* %203, i64 %205)
  %207 = mul nsw i32 %206, 1000
  %208 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %209 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %208, i32 0, i32 7
  store i32 %207, i32* %209, align 4
  %210 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %211 = load i64, i64* %16, align 8
  %212 = add nsw i64 %211, 20
  %213 = call i32 @nvbios_rd16(%struct.nvkm_bios* %210, i64 %212)
  %214 = mul nsw i32 %213, 1000
  %215 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %216 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %215, i32 0, i32 8
  store i32 %214, i32* %216, align 4
  br label %246

217:                                              ; preds = %7
  %218 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %219 = load i64, i64* %16, align 8
  %220 = add nsw i64 %219, 2
  %221 = call i32 @nvbios_rd08(%struct.nvkm_bios* %218, i64 %220)
  %222 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %223 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 4
  %224 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %225 = load i64, i64* %16, align 8
  %226 = add nsw i64 %225, 11
  %227 = call i32 @nvbios_rd08(%struct.nvkm_bios* %224, i64 %226)
  %228 = and i32 %227, 3
  switch i32 %228, label %241 [
    i32 0, label %229
    i32 3, label %233
    i32 1, label %233
    i32 2, label %237
  ]

229:                                              ; preds = %217
  %230 = load i32, i32* @NVKM_PCIE_SPEED_5_0, align 4
  %231 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %232 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %231, i32 0, i32 10
  store i32 %230, i32* %232, align 4
  br label %242

233:                                              ; preds = %217, %217
  %234 = load i32, i32* @NVKM_PCIE_SPEED_2_5, align 4
  %235 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %236 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %235, i32 0, i32 10
  store i32 %234, i32* %236, align 4
  br label %242

237:                                              ; preds = %217
  %238 = load i32, i32* @NVKM_PCIE_SPEED_8_0, align 4
  %239 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %240 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %239, i32 0, i32 10
  store i32 %238, i32* %240, align 4
  br label %242

241:                                              ; preds = %217
  br label %242

242:                                              ; preds = %241, %237, %233, %229
  %243 = load %struct.nvbios_perfE*, %struct.nvbios_perfE** %15, align 8
  %244 = getelementptr inbounds %struct.nvbios_perfE, %struct.nvbios_perfE* %243, i32 0, i32 9
  store i32 255, i32* %244, align 4
  br label %246

245:                                              ; preds = %7
  store i64 0, i64* %8, align 8
  br label %248

246:                                              ; preds = %242, %169, %128, %127, %71
  %247 = load i64, i64* %16, align 8
  store i64 %247, i64* %8, align 8
  br label %248

248:                                              ; preds = %246, %245
  %249 = load i64, i64* %8, align 8
  ret i64 %249
}

declare dso_local i64 @nvbios_perf_entry(%struct.nvkm_bios*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.nvbios_perfE*, i32, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i64) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
