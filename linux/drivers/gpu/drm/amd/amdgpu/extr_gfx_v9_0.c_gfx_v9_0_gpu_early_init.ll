; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_gpu_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_gpu_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@gfx_v9_0_gfx_funcs = common dso_local global i32 0, align 4
@VEGA10_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@VEGA12_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fix gfx.config for vega12\0A\00", align 1
@GC = common dso_local global i32 0, align 4
@mmGB_ADDR_CONFIG = common dso_local global i32 0, align 4
@RAVEN2_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@RAVEN_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG = common dso_local global i32 0, align 4
@NUM_PIPES = common dso_local global i32 0, align 4
@NUM_BANKS = common dso_local global i32 0, align 4
@MAX_COMPRESSED_FRAGS = common dso_local global i32 0, align 4
@NUM_RB_PER_SE = common dso_local global i32 0, align 4
@NUM_SHADER_ENGINES = common dso_local global i32 0, align 4
@PIPE_INTERLEAVE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_gpu_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_gpu_early_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32* @gfx_v9_0_gfx_funcs, i32** %8, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %178 [
    i32 130, label %12
    i32 129, label %34
    i32 128, label %57
    i32 132, label %92
    i32 133, label %122
    i32 131, label %150
  ]

12:                                               ; preds = %1
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 8, i32* %16, align 8
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 32, i32* %20, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 256, i32* %24, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 48, i32* %28, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  store i32 1216, i32* %32, align 8
  %33 = load i32, i32* @VEGA10_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %33, i32* %4, align 4
  br label %180

34:                                               ; preds = %1
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 8, i32* %38, align 8
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i32 32, i32* %42, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 256, i32* %46, align 8
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i32 48, i32* %50, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 4
  store i32 1216, i32* %54, align 8
  %55 = load i32, i32* @VEGA12_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %55, i32* %4, align 4
  %56 = call i32 @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %180

57:                                               ; preds = %1
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 8, i32* %61, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  store i32 32, i32* %65, align 4
  %66 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %67 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 256, i32* %69, align 8
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 3
  store i32 48, i32* %73, align 4
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 4
  store i32 1216, i32* %77, align 8
  %78 = load i32, i32* @GC, align 4
  %79 = load i32, i32* @mmGB_ADDR_CONFIG, align 4
  %80 = call i32 @RREG32_SOC15(i32 %78, i32 0, i32 %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = and i32 %81, 202934272
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, 570507330
  store i32 %84, i32* %4, align 4
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %86 = call i32 @amdgpu_atomfirmware_get_gfx_info(%struct.amdgpu_device* %85)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %57
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %281

91:                                               ; preds = %57
  br label %180

92:                                               ; preds = %1
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 8, i32* %96, align 8
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  store i32 32, i32* %100, align 4
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 256, i32* %104, align 8
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 3
  store i32 48, i32* %108, align 4
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 4
  store i32 1216, i32* %112, align 8
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %115, 8
  br i1 %116, label %117, label %119

117:                                              ; preds = %92
  %118 = load i32, i32* @RAVEN2_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %118, i32* %4, align 4
  br label %121

119:                                              ; preds = %92
  %120 = load i32, i32* @RAVEN_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %117
  br label %180

122:                                              ; preds = %1
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32 8, i32* %126, align 8
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i32 32, i32* %130, align 4
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i32 256, i32* %134, align 8
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 3
  store i32 48, i32* %138, align 4
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  store i32 1216, i32* %142, align 8
  %143 = load i32, i32* @GC, align 4
  %144 = load i32, i32* @mmGB_ADDR_CONFIG, align 4
  %145 = call i32 @RREG32_SOC15(i32 %143, i32 0, i32 %144)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = and i32 %146, 202934272
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = or i32 %148, 570507330
  store i32 %149, i32* %4, align 4
  br label %180

150:                                              ; preds = %1
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  store i32 8, i32* %154, align 8
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  store i32 32, i32* %158, align 4
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 2
  store i32 256, i32* %162, align 8
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  store i32 128, i32* %166, align 4
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %168 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 4
  store i32 1216, i32* %170, align 8
  %171 = load i32, i32* @GC, align 4
  %172 = load i32, i32* @mmGB_ADDR_CONFIG, align 4
  %173 = call i32 @RREG32_SOC15(i32 %171, i32 0, i32 %172)
  store i32 %173, i32* %4, align 4
  %174 = load i32, i32* %4, align 4
  %175 = and i32 %174, 202934272
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* %4, align 4
  %177 = or i32 %176, 570490946
  store i32 %177, i32* %4, align 4
  br label %180

178:                                              ; preds = %1
  %179 = call i32 (...) @BUG()
  br label %180

180:                                              ; preds = %178, %150, %122, %121, %91, %34, %12
  %181 = load i32, i32* %4, align 4
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  store i32 %181, i32* %185, align 4
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %187 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %192 = load i32, i32* @NUM_PIPES, align 4
  %193 = call i32 @REG_GET_FIELD(i32 %190, i32 %191, i32 %192)
  %194 = shl i32 1, %193
  %195 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %196 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 7
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  store i32 %194, i32* %199, align 4
  %200 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %201 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %207 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 6
  store i32 %205, i32* %209, align 8
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %211 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %216 = load i32, i32* @NUM_BANKS, align 4
  %217 = call i32 @REG_GET_FIELD(i32 %214, i32 %215, i32 %216)
  %218 = shl i32 1, %217
  %219 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %220 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 1
  store i32 %218, i32* %223, align 4
  %224 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %225 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %230 = load i32, i32* @MAX_COMPRESSED_FRAGS, align 4
  %231 = call i32 @REG_GET_FIELD(i32 %228, i32 %229, i32 %230)
  %232 = shl i32 1, %231
  %233 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %234 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 7
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 2
  store i32 %232, i32* %237, align 4
  %238 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %239 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %244 = load i32, i32* @NUM_RB_PER_SE, align 4
  %245 = call i32 @REG_GET_FIELD(i32 %242, i32 %243, i32 %244)
  %246 = shl i32 1, %245
  %247 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %248 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 3
  store i32 %246, i32* %251, align 4
  %252 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %253 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %258 = load i32, i32* @NUM_SHADER_ENGINES, align 4
  %259 = call i32 @REG_GET_FIELD(i32 %256, i32 %257, i32 %258)
  %260 = shl i32 1, %259
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %262 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 7
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 4
  store i32 %260, i32* %265, align 4
  %266 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %267 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %272 = load i32, i32* @PIPE_INTERLEAVE_SIZE, align 4
  %273 = call i32 @REG_GET_FIELD(i32 %270, i32 %271, i32 %272)
  %274 = add nsw i32 8, %273
  %275 = shl i32 1, %274
  %276 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %277 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 7
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 5
  store i32 %275, i32* %280, align 4
  store i32 0, i32* %2, align 4
  br label %281

281:                                              ; preds = %180, %89
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @amdgpu_atomfirmware_get_gfx_info(%struct.amdgpu_device*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
