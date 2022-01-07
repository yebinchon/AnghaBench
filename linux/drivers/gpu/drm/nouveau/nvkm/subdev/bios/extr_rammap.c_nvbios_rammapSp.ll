; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapSp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_rammap.c_nvbios_rammapSp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }
%struct.nvbios_ramcfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nvbios_rammapSp(%struct.nvkm_bios* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8, %struct.nvbios_ramcfg* %9) #0 {
  %11 = alloca %struct.nvkm_bios*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.nvbios_ramcfg*, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store %struct.nvbios_ramcfg* %9, %struct.nvbios_ramcfg** %20, align 8
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %17, align 4
  %28 = load i32*, i32** %18, align 8
  %29 = load i32*, i32** %19, align 8
  %30 = call i64 @nvbios_rammapSe(%struct.nvkm_bios* %21, i64 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32* %28, i32* %29)
  store i64 %30, i64* %12, align 8
  %31 = load i32*, i32** %18, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %34 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %19, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %38 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32*, i32** %18, align 8
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %43, %45
  switch i32 %46, label %453 [
    i32 16, label %47
    i32 17, label %182
  ]

47:                                               ; preds = %10
  %48 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i32 @nvbios_rd08(%struct.nvkm_bios* %48, i64 %50)
  %52 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %53 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add nsw i64 %55, 2
  %57 = call i32 @nvbios_rd08(%struct.nvkm_bios* %54, i64 %56)
  %58 = and i32 %57, 1
  %59 = ashr i32 %58, 0
  %60 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %61 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = add nsw i64 %63, 2
  %65 = call i32 @nvbios_rd08(%struct.nvkm_bios* %62, i64 %64)
  %66 = and i32 %65, 2
  %67 = ashr i32 %66, 1
  %68 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %69 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %71 = load i64, i64* %12, align 8
  %72 = add nsw i64 %71, 2
  %73 = call i32 @nvbios_rd08(%struct.nvkm_bios* %70, i64 %72)
  %74 = and i32 %73, 4
  %75 = ashr i32 %74, 2
  %76 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %77 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = add nsw i64 %79, 2
  %81 = call i32 @nvbios_rd08(%struct.nvkm_bios* %78, i64 %80)
  %82 = and i32 %81, 8
  %83 = ashr i32 %82, 3
  %84 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %85 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %87 = load i64, i64* %12, align 8
  %88 = add nsw i64 %87, 2
  %89 = call i32 @nvbios_rd08(%struct.nvkm_bios* %86, i64 %88)
  %90 = and i32 %89, 16
  %91 = ashr i32 %90, 4
  %92 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %93 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = add nsw i64 %95, 2
  %97 = call i32 @nvbios_rd08(%struct.nvkm_bios* %94, i64 %96)
  %98 = and i32 %97, 32
  %99 = ashr i32 %98, 5
  %100 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %101 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 4
  %102 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %103, 2
  %105 = call i32 @nvbios_rd08(%struct.nvkm_bios* %102, i64 %104)
  %106 = and i32 %105, 64
  %107 = ashr i32 %106, 6
  %108 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %109 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %108, i32 0, i32 9
  store i32 %107, i32* %109, align 4
  %110 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %111 = load i64, i64* %12, align 8
  %112 = add nsw i64 %111, 3
  %113 = call i32 @nvbios_rd08(%struct.nvkm_bios* %110, i64 %112)
  %114 = and i32 %113, 15
  %115 = ashr i32 %114, 0
  %116 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %117 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %116, i32 0, i32 10
  store i32 %115, i32* %117, align 4
  %118 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = add nsw i64 %119, 4
  %121 = call i32 @nvbios_rd08(%struct.nvkm_bios* %118, i64 %120)
  %122 = and i32 %121, 1
  %123 = ashr i32 %122, 0
  %124 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %125 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %124, i32 0, i32 11
  store i32 %123, i32* %125, align 4
  %126 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %127 = load i64, i64* %12, align 8
  %128 = add nsw i64 %127, 4
  %129 = call i32 @nvbios_rd08(%struct.nvkm_bios* %126, i64 %128)
  %130 = and i32 %129, 8
  %131 = ashr i32 %130, 3
  %132 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %133 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %132, i32 0, i32 12
  store i32 %131, i32* %133, align 4
  %134 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %135 = load i64, i64* %12, align 8
  %136 = add nsw i64 %135, 5
  %137 = call i32 @nvbios_rd08(%struct.nvkm_bios* %134, i64 %136)
  %138 = and i32 %137, 255
  %139 = ashr i32 %138, 0
  %140 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %141 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %140, i32 0, i32 13
  store i32 %139, i32* %141, align 4
  %142 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %143 = load i64, i64* %12, align 8
  %144 = add nsw i64 %143, 6
  %145 = call i32 @nvbios_rd08(%struct.nvkm_bios* %142, i64 %144)
  %146 = and i32 %145, 255
  %147 = ashr i32 %146, 0
  %148 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %149 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %148, i32 0, i32 14
  store i32 %147, i32* %149, align 4
  %150 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %151 = load i64, i64* %12, align 8
  %152 = add nsw i64 %151, 7
  %153 = call i32 @nvbios_rd08(%struct.nvkm_bios* %150, i64 %152)
  %154 = and i32 %153, 255
  %155 = ashr i32 %154, 0
  %156 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %157 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %156, i32 0, i32 15
  store i32 %155, i32* %157, align 4
  %158 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %159 = load i64, i64* %12, align 8
  %160 = add nsw i64 %159, 8
  %161 = call i32 @nvbios_rd08(%struct.nvkm_bios* %158, i64 %160)
  %162 = and i32 %161, 255
  %163 = ashr i32 %162, 0
  %164 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %165 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %164, i32 0, i32 16
  store i32 %163, i32* %165, align 4
  %166 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %167 = load i64, i64* %12, align 8
  %168 = add nsw i64 %167, 9
  %169 = call i32 @nvbios_rd08(%struct.nvkm_bios* %166, i64 %168)
  %170 = and i32 %169, 15
  %171 = ashr i32 %170, 0
  %172 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %173 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %172, i32 0, i32 17
  store i32 %171, i32* %173, align 4
  %174 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %175 = load i64, i64* %12, align 8
  %176 = add nsw i64 %175, 9
  %177 = call i32 @nvbios_rd08(%struct.nvkm_bios* %174, i64 %176)
  %178 = and i32 %177, 240
  %179 = ashr i32 %178, 4
  %180 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %181 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %180, i32 0, i32 18
  store i32 %179, i32* %181, align 4
  br label %454

182:                                              ; preds = %10
  %183 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %184 = load i64, i64* %12, align 8
  %185 = add nsw i64 %184, 0
  %186 = call i32 @nvbios_rd08(%struct.nvkm_bios* %183, i64 %185)
  %187 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %188 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 4
  %189 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %190 = load i64, i64* %12, align 8
  %191 = add nsw i64 %190, 1
  %192 = call i32 @nvbios_rd08(%struct.nvkm_bios* %189, i64 %191)
  %193 = and i32 %192, 1
  %194 = ashr i32 %193, 0
  %195 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %196 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %195, i32 0, i32 19
  store i32 %194, i32* %196, align 4
  %197 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %198 = load i64, i64* %12, align 8
  %199 = add nsw i64 %198, 1
  %200 = call i32 @nvbios_rd08(%struct.nvkm_bios* %197, i64 %199)
  %201 = and i32 %200, 2
  %202 = ashr i32 %201, 1
  %203 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %204 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %203, i32 0, i32 20
  store i32 %202, i32* %204, align 4
  %205 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %206 = load i64, i64* %12, align 8
  %207 = add nsw i64 %206, 1
  %208 = call i32 @nvbios_rd08(%struct.nvkm_bios* %205, i64 %207)
  %209 = and i32 %208, 4
  %210 = ashr i32 %209, 2
  %211 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %212 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %211, i32 0, i32 21
  store i32 %210, i32* %212, align 4
  %213 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %214 = load i64, i64* %12, align 8
  %215 = add nsw i64 %214, 1
  %216 = call i32 @nvbios_rd08(%struct.nvkm_bios* %213, i64 %215)
  %217 = and i32 %216, 8
  %218 = ashr i32 %217, 3
  %219 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %220 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %219, i32 0, i32 22
  store i32 %218, i32* %220, align 4
  %221 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %222 = load i64, i64* %12, align 8
  %223 = add nsw i64 %222, 1
  %224 = call i32 @nvbios_rd08(%struct.nvkm_bios* %221, i64 %223)
  %225 = and i32 %224, 16
  %226 = ashr i32 %225, 4
  %227 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %228 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %227, i32 0, i32 23
  store i32 %226, i32* %228, align 4
  %229 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %230 = load i64, i64* %12, align 8
  %231 = add nsw i64 %230, 1
  %232 = call i32 @nvbios_rd08(%struct.nvkm_bios* %229, i64 %231)
  %233 = and i32 %232, 32
  %234 = ashr i32 %233, 5
  %235 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %236 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %235, i32 0, i32 9
  store i32 %234, i32* %236, align 4
  %237 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %238 = load i64, i64* %12, align 8
  %239 = add nsw i64 %238, 1
  %240 = call i32 @nvbios_rd08(%struct.nvkm_bios* %237, i64 %239)
  %241 = and i32 %240, 64
  %242 = ashr i32 %241, 6
  %243 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %244 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %243, i32 0, i32 24
  store i32 %242, i32* %244, align 4
  %245 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %246 = load i64, i64* %12, align 8
  %247 = add nsw i64 %246, 1
  %248 = call i32 @nvbios_rd08(%struct.nvkm_bios* %245, i64 %247)
  %249 = and i32 %248, 128
  %250 = ashr i32 %249, 7
  %251 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %252 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %251, i32 0, i32 25
  store i32 %250, i32* %252, align 4
  %253 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %254 = load i64, i64* %12, align 8
  %255 = add nsw i64 %254, 2
  %256 = call i32 @nvbios_rd08(%struct.nvkm_bios* %253, i64 %255)
  %257 = and i32 %256, 3
  %258 = ashr i32 %257, 0
  %259 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %260 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %259, i32 0, i32 26
  store i32 %258, i32* %260, align 4
  %261 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %262 = load i64, i64* %12, align 8
  %263 = add nsw i64 %262, 2
  %264 = call i32 @nvbios_rd08(%struct.nvkm_bios* %261, i64 %263)
  %265 = and i32 %264, 4
  %266 = ashr i32 %265, 2
  %267 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %268 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %267, i32 0, i32 27
  store i32 %266, i32* %268, align 4
  %269 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %270 = load i64, i64* %12, align 8
  %271 = add nsw i64 %270, 2
  %272 = call i32 @nvbios_rd08(%struct.nvkm_bios* %269, i64 %271)
  %273 = and i32 %272, 8
  %274 = ashr i32 %273, 3
  %275 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %276 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %275, i32 0, i32 28
  store i32 %274, i32* %276, align 4
  %277 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %278 = load i64, i64* %12, align 8
  %279 = add nsw i64 %278, 2
  %280 = call i32 @nvbios_rd08(%struct.nvkm_bios* %277, i64 %279)
  %281 = and i32 %280, 16
  %282 = ashr i32 %281, 4
  %283 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %284 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %283, i32 0, i32 29
  store i32 %282, i32* %284, align 4
  %285 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %286 = load i64, i64* %12, align 8
  %287 = add nsw i64 %286, 2
  %288 = call i32 @nvbios_rd08(%struct.nvkm_bios* %285, i64 %287)
  %289 = and i32 %288, 64
  %290 = ashr i32 %289, 6
  %291 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %292 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %291, i32 0, i32 30
  store i32 %290, i32* %292, align 4
  %293 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %294 = load i64, i64* %12, align 8
  %295 = add nsw i64 %294, 2
  %296 = call i32 @nvbios_rd08(%struct.nvkm_bios* %293, i64 %295)
  %297 = and i32 %296, 128
  %298 = ashr i32 %297, 7
  %299 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %300 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %299, i32 0, i32 31
  store i32 %298, i32* %300, align 4
  %301 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %302 = load i64, i64* %12, align 8
  %303 = add nsw i64 %302, 3
  %304 = call i32 @nvbios_rd08(%struct.nvkm_bios* %301, i64 %303)
  %305 = and i32 %304, 15
  %306 = ashr i32 %305, 0
  %307 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %308 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %307, i32 0, i32 32
  store i32 %306, i32* %308, align 4
  %309 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %310 = load i64, i64* %12, align 8
  %311 = add nsw i64 %310, 3
  %312 = call i32 @nvbios_rd08(%struct.nvkm_bios* %309, i64 %311)
  %313 = and i32 %312, 48
  %314 = ashr i32 %313, 4
  %315 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %316 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %315, i32 0, i32 33
  store i32 %314, i32* %316, align 4
  %317 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %318 = load i64, i64* %12, align 8
  %319 = add nsw i64 %318, 3
  %320 = call i32 @nvbios_rd08(%struct.nvkm_bios* %317, i64 %319)
  %321 = and i32 %320, 192
  %322 = ashr i32 %321, 6
  %323 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %324 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %323, i32 0, i32 34
  store i32 %322, i32* %324, align 4
  %325 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %326 = load i64, i64* %12, align 8
  %327 = add nsw i64 %326, 3
  %328 = call i32 @nvbios_rd08(%struct.nvkm_bios* %325, i64 %327)
  %329 = and i32 %328, 240
  %330 = ashr i32 %329, 4
  %331 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %332 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %331, i32 0, i32 35
  store i32 %330, i32* %332, align 4
  %333 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %334 = load i64, i64* %12, align 8
  %335 = add nsw i64 %334, 4
  %336 = call i32 @nvbios_rd08(%struct.nvkm_bios* %333, i64 %335)
  %337 = and i32 %336, 255
  %338 = ashr i32 %337, 0
  %339 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %340 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %339, i32 0, i32 36
  store i32 %338, i32* %340, align 4
  %341 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %342 = load i64, i64* %12, align 8
  %343 = add nsw i64 %342, 6
  %344 = call i32 @nvbios_rd08(%struct.nvkm_bios* %341, i64 %343)
  %345 = and i32 %344, 255
  %346 = ashr i32 %345, 0
  %347 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %348 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %347, i32 0, i32 37
  store i32 %346, i32* %348, align 4
  %349 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %350 = load i64, i64* %12, align 8
  %351 = add nsw i64 %350, 7
  %352 = call i32 @nvbios_rd08(%struct.nvkm_bios* %349, i64 %351)
  %353 = and i32 %352, 2
  %354 = ashr i32 %353, 1
  %355 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %356 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %355, i32 0, i32 38
  store i32 %354, i32* %356, align 4
  %357 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %358 = load i64, i64* %12, align 8
  %359 = add nsw i64 %358, 7
  %360 = call i32 @nvbios_rd08(%struct.nvkm_bios* %357, i64 %359)
  %361 = and i32 %360, 4
  %362 = ashr i32 %361, 2
  %363 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %364 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %363, i32 0, i32 39
  store i32 %362, i32* %364, align 4
  %365 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %366 = load i64, i64* %12, align 8
  %367 = add nsw i64 %366, 7
  %368 = call i32 @nvbios_rd08(%struct.nvkm_bios* %365, i64 %367)
  %369 = and i32 %368, 8
  %370 = ashr i32 %369, 3
  %371 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %372 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %371, i32 0, i32 40
  store i32 %370, i32* %372, align 4
  %373 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %374 = load i64, i64* %12, align 8
  %375 = add nsw i64 %374, 7
  %376 = call i32 @nvbios_rd08(%struct.nvkm_bios* %373, i64 %375)
  %377 = and i32 %376, 16
  %378 = ashr i32 %377, 4
  %379 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %380 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %379, i32 0, i32 41
  store i32 %378, i32* %380, align 4
  %381 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %382 = load i64, i64* %12, align 8
  %383 = add nsw i64 %382, 7
  %384 = call i32 @nvbios_rd08(%struct.nvkm_bios* %381, i64 %383)
  %385 = and i32 %384, 64
  %386 = ashr i32 %385, 6
  %387 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %388 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %387, i32 0, i32 42
  store i32 %386, i32* %388, align 4
  %389 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %390 = load i64, i64* %12, align 8
  %391 = add nsw i64 %390, 7
  %392 = call i32 @nvbios_rd08(%struct.nvkm_bios* %389, i64 %391)
  %393 = and i32 %392, 128
  %394 = ashr i32 %393, 7
  %395 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %396 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %395, i32 0, i32 43
  store i32 %394, i32* %396, align 4
  %397 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %398 = load i64, i64* %12, align 8
  %399 = add nsw i64 %398, 8
  %400 = call i32 @nvbios_rd08(%struct.nvkm_bios* %397, i64 %399)
  %401 = and i32 %400, 1
  %402 = ashr i32 %401, 0
  %403 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %404 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %403, i32 0, i32 44
  store i32 %402, i32* %404, align 4
  %405 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %406 = load i64, i64* %12, align 8
  %407 = add nsw i64 %406, 8
  %408 = call i32 @nvbios_rd08(%struct.nvkm_bios* %405, i64 %407)
  %409 = and i32 %408, 2
  %410 = ashr i32 %409, 1
  %411 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %412 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %411, i32 0, i32 45
  store i32 %410, i32* %412, align 4
  %413 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %414 = load i64, i64* %12, align 8
  %415 = add nsw i64 %414, 8
  %416 = call i32 @nvbios_rd08(%struct.nvkm_bios* %413, i64 %415)
  %417 = and i32 %416, 4
  %418 = ashr i32 %417, 2
  %419 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %420 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %419, i32 0, i32 46
  store i32 %418, i32* %420, align 4
  %421 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %422 = load i64, i64* %12, align 8
  %423 = add nsw i64 %422, 8
  %424 = call i32 @nvbios_rd08(%struct.nvkm_bios* %421, i64 %423)
  %425 = and i32 %424, 8
  %426 = ashr i32 %425, 3
  %427 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %428 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %427, i32 0, i32 47
  store i32 %426, i32* %428, align 4
  %429 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %430 = load i64, i64* %12, align 8
  %431 = add nsw i64 %430, 8
  %432 = call i32 @nvbios_rd08(%struct.nvkm_bios* %429, i64 %431)
  %433 = and i32 %432, 16
  %434 = ashr i32 %433, 4
  %435 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %436 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %435, i32 0, i32 48
  store i32 %434, i32* %436, align 4
  %437 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %438 = load i64, i64* %12, align 8
  %439 = add nsw i64 %438, 8
  %440 = call i32 @nvbios_rd08(%struct.nvkm_bios* %437, i64 %439)
  %441 = and i32 %440, 32
  %442 = ashr i32 %441, 5
  %443 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %444 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %443, i32 0, i32 49
  store i32 %442, i32* %444, align 4
  %445 = load %struct.nvkm_bios*, %struct.nvkm_bios** %11, align 8
  %446 = load i64, i64* %12, align 8
  %447 = add nsw i64 %446, 9
  %448 = call i32 @nvbios_rd08(%struct.nvkm_bios* %445, i64 %447)
  %449 = and i32 %448, 255
  %450 = ashr i32 %449, 0
  %451 = load %struct.nvbios_ramcfg*, %struct.nvbios_ramcfg** %20, align 8
  %452 = getelementptr inbounds %struct.nvbios_ramcfg, %struct.nvbios_ramcfg* %451, i32 0, i32 50
  store i32 %450, i32* %452, align 4
  br label %454

453:                                              ; preds = %10
  store i64 0, i64* %12, align 8
  br label %454

454:                                              ; preds = %453, %182, %47
  %455 = load i64, i64* %12, align 8
  ret i64 %455
}

declare dso_local i64 @nvbios_rammapSe(%struct.nvkm_bios*, i64, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
