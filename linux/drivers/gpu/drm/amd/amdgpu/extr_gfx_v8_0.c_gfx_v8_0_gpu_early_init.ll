; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_gpu_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_gpu_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TOPAZ_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@TONGA_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@POLARIS11_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@CARRIZO_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@mmMC_SHARED_CHMAP = common dso_local global i32 0, align 4
@mmMC_ARB_RAMCFG = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@mmMC_FUS_DRAM0_BANK_ADDR_MAPPING = common dso_local global i32 0, align 4
@MC_FUS_DRAM0_BANK_ADDR_MAPPING = common dso_local global i32 0, align 4
@DIMM0ADDRMAP = common dso_local global i32 0, align 4
@DIMM1ADDRMAP = common dso_local global i32 0, align 4
@mmMC_FUS_DRAM1_BANK_ADDR_MAPPING = common dso_local global i32 0, align 4
@MC_FUS_DRAM1_BANK_ADDR_MAPPING = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG = common dso_local global i32 0, align 4
@NOOFCOLS = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG = common dso_local global i32 0, align 4
@ROW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v8_0_gpu_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_gpu_early_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %360 [
    i32 129, label %16
    i32 135, label %70
    i32 133, label %124
    i32 132, label %124
    i32 134, label %161
    i32 128, label %161
    i32 130, label %198
    i32 136, label %252
    i32 131, label %306
  ]

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 2, i32* %24, align 4
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 6, i32* %28, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %34 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  store i32 2, i32* %36, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  store i32 2, i32* %40, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  store i32 256, i32* %44, align 4
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 7
  store i32 32, i32* %48, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 8
  store i32 8, i32* %52, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 9
  store i32 32, i32* %56, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 10
  store i32 256, i32* %60, align 4
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 11
  store i32 48, i32* %64, align 4
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 12
  store i32 304, i32* %68, align 4
  %69 = load i32, i32* @TOPAZ_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %69, i32* %4, align 4
  br label %414

70:                                               ; preds = %1
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 4, i32* %74, align 4
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 16, i32* %78, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 16, i32* %82, align 4
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %84 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 1, i32* %86, align 4
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 4, i32* %90, align 4
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %92 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 5
  store i32 16, i32* %94, align 4
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 6
  store i32 256, i32* %98, align 4
  %99 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %100 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 7
  store i32 32, i32* %102, align 4
  %103 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %104 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 8
  store i32 8, i32* %106, align 4
  %107 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %108 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 9
  store i32 32, i32* %110, align 4
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 10
  store i32 256, i32* %114, align 4
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 11
  store i32 48, i32* %118, align 4
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %120 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 12
  store i32 304, i32* %122, align 4
  %123 = load i32, i32* @TONGA_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %123, i32* %4, align 4
  br label %414

124:                                              ; preds = %1, %1
  %125 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %126 = call i32 @amdgpu_atombios_get_gfx_info(%struct.amdgpu_device* %125)
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* %12, align 4
  store i32 %130, i32* %2, align 4
  br label %612

131:                                              ; preds = %124
  %132 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %133 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 6
  store i32 256, i32* %135, align 4
  %136 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %137 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 7
  store i32 32, i32* %139, align 4
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %141 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 8
  store i32 8, i32* %143, align 4
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 9
  store i32 32, i32* %147, align 4
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 10
  store i32 256, i32* %151, align 4
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 11
  store i32 48, i32* %155, align 4
  %156 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %157 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 12
  store i32 304, i32* %159, align 4
  %160 = load i32, i32* @POLARIS11_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %160, i32* %4, align 4
  br label %414

161:                                              ; preds = %1, %1
  %162 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %163 = call i32 @amdgpu_atombios_get_gfx_info(%struct.amdgpu_device* %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  store i32 %167, i32* %2, align 4
  br label %612

168:                                              ; preds = %161
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 6
  store i32 256, i32* %172, align 4
  %173 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %174 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 7
  store i32 32, i32* %176, align 4
  %177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %178 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 8
  store i32 8, i32* %180, align 4
  %181 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %182 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 9
  store i32 32, i32* %184, align 4
  %185 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %186 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 10
  store i32 256, i32* %188, align 4
  %189 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %190 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 11
  store i32 48, i32* %192, align 4
  %193 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %194 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 12
  store i32 304, i32* %196, align 4
  %197 = load i32, i32* @TONGA_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %197, i32* %4, align 4
  br label %414

198:                                              ; preds = %1
  %199 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %200 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  store i32 4, i32* %202, align 4
  %203 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %204 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  store i32 8, i32* %206, align 4
  %207 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %208 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 2
  store i32 8, i32* %210, align 4
  %211 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %212 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 3
  store i32 1, i32* %214, align 4
  %215 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %216 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 4
  store i32 2, i32* %218, align 4
  %219 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %220 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 5
  store i32 8, i32* %222, align 4
  %223 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %224 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 6
  store i32 256, i32* %226, align 4
  %227 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %228 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 7
  store i32 32, i32* %230, align 4
  %231 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %232 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 8
  store i32 8, i32* %234, align 4
  %235 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %236 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 9
  store i32 32, i32* %238, align 4
  %239 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %240 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 10
  store i32 256, i32* %242, align 4
  %243 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %244 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 11
  store i32 48, i32* %246, align 4
  %247 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %248 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 12
  store i32 304, i32* %250, align 4
  %251 = load i32, i32* @TONGA_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %251, i32* %4, align 4
  br label %414

252:                                              ; preds = %1
  %253 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %254 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  store i32 1, i32* %256, align 4
  %257 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %258 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 1
  store i32 2, i32* %260, align 4
  %261 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %262 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 3
  store i32 1, i32* %264, align 4
  %265 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %266 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 4
  store i32 2, i32* %268, align 4
  %269 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %270 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 2
  store i32 8, i32* %272, align 4
  %273 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %274 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 5
  store i32 2, i32* %276, align 4
  %277 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %278 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 6
  store i32 256, i32* %280, align 4
  %281 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %282 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %283, i32 0, i32 7
  store i32 32, i32* %284, align 4
  %285 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %286 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 8
  store i32 8, i32* %288, align 4
  %289 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %290 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 9
  store i32 32, i32* %292, align 4
  %293 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %294 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 10
  store i32 256, i32* %296, align 4
  %297 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %298 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 11
  store i32 48, i32* %300, align 4
  %301 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %302 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 12
  store i32 304, i32* %304, align 4
  %305 = load i32, i32* @CARRIZO_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %305, i32* %4, align 4
  br label %414

306:                                              ; preds = %1
  %307 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %308 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 0
  store i32 1, i32* %310, align 4
  %311 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %312 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 1
  store i32 2, i32* %314, align 4
  %315 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %316 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %315, i32 0, i32 2
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 3
  store i32 1, i32* %318, align 4
  %319 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %320 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %321, i32 0, i32 4
  store i32 1, i32* %322, align 4
  %323 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %324 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %323, i32 0, i32 2
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 2
  store i32 3, i32* %326, align 4
  %327 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %328 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %327, i32 0, i32 2
  %329 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 5
  store i32 2, i32* %330, align 4
  %331 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %332 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %333, i32 0, i32 6
  store i32 256, i32* %334, align 4
  %335 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %336 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %335, i32 0, i32 2
  %337 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %337, i32 0, i32 7
  store i32 16, i32* %338, align 4
  %339 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %340 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 8
  store i32 8, i32* %342, align 4
  %343 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %344 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %343, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 9
  store i32 32, i32* %346, align 4
  %347 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %348 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %347, i32 0, i32 2
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %349, i32 0, i32 10
  store i32 256, i32* %350, align 4
  %351 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %352 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %353, i32 0, i32 11
  store i32 48, i32* %354, align 4
  %355 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %356 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %357, i32 0, i32 12
  store i32 304, i32* %358, align 4
  %359 = load i32, i32* @CARRIZO_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %359, i32* %4, align 4
  br label %414

360:                                              ; preds = %1
  %361 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %362 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %361, i32 0, i32 2
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %363, i32 0, i32 0
  store i32 2, i32* %364, align 4
  %365 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %366 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 1
  store i32 4, i32* %368, align 4
  %369 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %370 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %371, i32 0, i32 2
  store i32 2, i32* %372, align 4
  %373 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %374 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %375, i32 0, i32 3
  store i32 1, i32* %376, align 4
  %377 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %378 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %377, i32 0, i32 2
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %379, i32 0, i32 4
  store i32 2, i32* %380, align 4
  %381 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %382 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 5
  store i32 4, i32* %384, align 4
  %385 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %386 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 6
  store i32 256, i32* %388, align 4
  %389 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %390 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %389, i32 0, i32 2
  %391 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 7
  store i32 32, i32* %392, align 4
  %393 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %394 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 8
  store i32 8, i32* %396, align 4
  %397 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %398 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %397, i32 0, i32 2
  %399 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 9
  store i32 32, i32* %400, align 4
  %401 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %402 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %401, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 10
  store i32 256, i32* %404, align 4
  %405 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %406 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %405, i32 0, i32 2
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 11
  store i32 48, i32* %408, align 4
  %409 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %410 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %409, i32 0, i32 2
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 12
  store i32 304, i32* %412, align 4
  %413 = load i32, i32* @TONGA_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %413, i32* %4, align 4
  br label %414

414:                                              ; preds = %360, %306, %252, %198, %168, %131, %70, %16
  %415 = load i32, i32* @mmMC_SHARED_CHMAP, align 4
  %416 = call i8* @RREG32(i32 %415)
  %417 = ptrtoint i8* %416 to i32
  store i32 %417, i32* %5, align 4
  %418 = load i32, i32* @mmMC_ARB_RAMCFG, align 4
  %419 = call i8* @RREG32(i32 %418)
  %420 = ptrtoint i8* %419 to i32
  %421 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %422 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %423, i32 0, i32 13
  store i32 %420, i32* %424, align 4
  %425 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %426 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %425, i32 0, i32 2
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %427, i32 0, i32 13
  %429 = load i32, i32* %428, align 4
  store i32 %429, i32* %6, align 4
  %430 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %431 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %436 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %435, i32 0, i32 2
  %437 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %437, i32 0, i32 14
  store i32 %434, i32* %438, align 4
  %439 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %440 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %441, i32 0, i32 15
  store i32 256, i32* %442, align 4
  %443 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %444 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %443, i32 0, i32 1
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @AMD_IS_APU, align 4
  %447 = and i32 %445, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %546

449:                                              ; preds = %414
  %450 = load i32, i32* @mmMC_FUS_DRAM0_BANK_ADDR_MAPPING, align 4
  %451 = call i8* @RREG32(i32 %450)
  %452 = ptrtoint i8* %451 to i32
  store i32 %452, i32* %11, align 4
  %453 = load i32, i32* %11, align 4
  %454 = load i32, i32* @MC_FUS_DRAM0_BANK_ADDR_MAPPING, align 4
  %455 = load i32, i32* @DIMM0ADDRMAP, align 4
  %456 = call i32 @REG_GET_FIELD(i32 %453, i32 %454, i32 %455)
  store i32 %456, i32* %7, align 4
  %457 = load i32, i32* %11, align 4
  %458 = load i32, i32* @MC_FUS_DRAM0_BANK_ADDR_MAPPING, align 4
  %459 = load i32, i32* @DIMM1ADDRMAP, align 4
  %460 = call i32 @REG_GET_FIELD(i32 %457, i32 %458, i32 %459)
  store i32 %460, i32* %8, align 4
  %461 = load i32, i32* @mmMC_FUS_DRAM1_BANK_ADDR_MAPPING, align 4
  %462 = call i8* @RREG32(i32 %461)
  %463 = ptrtoint i8* %462 to i32
  store i32 %463, i32* %11, align 4
  %464 = load i32, i32* %11, align 4
  %465 = load i32, i32* @MC_FUS_DRAM1_BANK_ADDR_MAPPING, align 4
  %466 = load i32, i32* @DIMM0ADDRMAP, align 4
  %467 = call i32 @REG_GET_FIELD(i32 %464, i32 %465, i32 %466)
  store i32 %467, i32* %9, align 4
  %468 = load i32, i32* %11, align 4
  %469 = load i32, i32* @MC_FUS_DRAM1_BANK_ADDR_MAPPING, align 4
  %470 = load i32, i32* @DIMM1ADDRMAP, align 4
  %471 = call i32 @REG_GET_FIELD(i32 %468, i32 %469, i32 %470)
  store i32 %471, i32* %10, align 4
  %472 = load i32, i32* %7, align 4
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %483, label %474

474:                                              ; preds = %449
  %475 = load i32, i32* %7, align 4
  %476 = icmp eq i32 %475, 3
  br i1 %476, label %483, label %477

477:                                              ; preds = %474
  %478 = load i32, i32* %7, align 4
  %479 = icmp eq i32 %478, 4
  br i1 %479, label %483, label %480

480:                                              ; preds = %477
  %481 = load i32, i32* %7, align 4
  %482 = icmp sgt i32 %481, 12
  br i1 %482, label %483, label %484

483:                                              ; preds = %480, %477, %474, %449
  store i32 0, i32* %7, align 4
  br label %484

484:                                              ; preds = %483, %480
  %485 = load i32, i32* %8, align 4
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %496, label %487

487:                                              ; preds = %484
  %488 = load i32, i32* %8, align 4
  %489 = icmp eq i32 %488, 3
  br i1 %489, label %496, label %490

490:                                              ; preds = %487
  %491 = load i32, i32* %8, align 4
  %492 = icmp eq i32 %491, 4
  br i1 %492, label %496, label %493

493:                                              ; preds = %490
  %494 = load i32, i32* %8, align 4
  %495 = icmp sgt i32 %494, 12
  br i1 %495, label %496, label %497

496:                                              ; preds = %493, %490, %487, %484
  store i32 0, i32* %8, align 4
  br label %497

497:                                              ; preds = %496, %493
  %498 = load i32, i32* %9, align 4
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %509, label %500

500:                                              ; preds = %497
  %501 = load i32, i32* %9, align 4
  %502 = icmp eq i32 %501, 3
  br i1 %502, label %509, label %503

503:                                              ; preds = %500
  %504 = load i32, i32* %9, align 4
  %505 = icmp eq i32 %504, 4
  br i1 %505, label %509, label %506

506:                                              ; preds = %503
  %507 = load i32, i32* %9, align 4
  %508 = icmp sgt i32 %507, 12
  br i1 %508, label %509, label %510

509:                                              ; preds = %506, %503, %500, %497
  store i32 0, i32* %9, align 4
  br label %510

510:                                              ; preds = %509, %506
  %511 = load i32, i32* %10, align 4
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %522, label %513

513:                                              ; preds = %510
  %514 = load i32, i32* %10, align 4
  %515 = icmp eq i32 %514, 3
  br i1 %515, label %522, label %516

516:                                              ; preds = %513
  %517 = load i32, i32* %10, align 4
  %518 = icmp eq i32 %517, 4
  br i1 %518, label %522, label %519

519:                                              ; preds = %516
  %520 = load i32, i32* %10, align 4
  %521 = icmp sgt i32 %520, 12
  br i1 %521, label %522, label %523

522:                                              ; preds = %519, %516, %513, %510
  store i32 0, i32* %10, align 4
  br label %523

523:                                              ; preds = %522, %519
  %524 = load i32, i32* %7, align 4
  %525 = icmp eq i32 %524, 11
  br i1 %525, label %535, label %526

526:                                              ; preds = %523
  %527 = load i32, i32* %8, align 4
  %528 = icmp eq i32 %527, 11
  br i1 %528, label %535, label %529

529:                                              ; preds = %526
  %530 = load i32, i32* %9, align 4
  %531 = icmp eq i32 %530, 11
  br i1 %531, label %535, label %532

532:                                              ; preds = %529
  %533 = load i32, i32* %10, align 4
  %534 = icmp eq i32 %533, 11
  br i1 %534, label %535, label %540

535:                                              ; preds = %532, %529, %526, %523
  %536 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %537 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %536, i32 0, i32 2
  %538 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %538, i32 0, i32 16
  store i32 2, i32* %539, align 4
  br label %545

540:                                              ; preds = %532
  %541 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %542 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %541, i32 0, i32 2
  %543 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %543, i32 0, i32 16
  store i32 1, i32* %544, align 4
  br label %545

545:                                              ; preds = %540, %535
  br label %572

546:                                              ; preds = %414
  %547 = load i32, i32* %6, align 4
  %548 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %549 = load i32, i32* @NOOFCOLS, align 4
  %550 = call i32 @REG_GET_FIELD(i32 %547, i32 %548, i32 %549)
  store i32 %550, i32* %11, align 4
  %551 = load i32, i32* %11, align 4
  %552 = add nsw i32 8, %551
  %553 = shl i32 1, %552
  %554 = mul nsw i32 4, %553
  %555 = sdiv i32 %554, 1024
  %556 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %557 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %556, i32 0, i32 2
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %558, i32 0, i32 16
  store i32 %555, i32* %559, align 4
  %560 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %561 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %560, i32 0, i32 2
  %562 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %562, i32 0, i32 16
  %564 = load i32, i32* %563, align 4
  %565 = icmp sgt i32 %564, 4
  br i1 %565, label %566, label %571

566:                                              ; preds = %546
  %567 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %568 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %567, i32 0, i32 2
  %569 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %568, i32 0, i32 0
  %570 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %569, i32 0, i32 16
  store i32 4, i32* %570, align 4
  br label %571

571:                                              ; preds = %566, %546
  br label %572

572:                                              ; preds = %571, %545
  %573 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %574 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %573, i32 0, i32 2
  %575 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %575, i32 0, i32 17
  store i32 32, i32* %576, align 4
  %577 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %578 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %577, i32 0, i32 2
  %579 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %579, i32 0, i32 18
  store i32 1, i32* %580, align 4
  %581 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %582 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %581, i32 0, i32 2
  %583 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %582, i32 0, i32 0
  %584 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %583, i32 0, i32 19
  store i32 64, i32* %584, align 4
  %585 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %586 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %585, i32 0, i32 2
  %587 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %587, i32 0, i32 16
  %589 = load i32, i32* %588, align 4
  switch i32 %589, label %591 [
    i32 1, label %590
    i32 2, label %596
    i32 4, label %601
  ]

590:                                              ; preds = %572
  br label %591

591:                                              ; preds = %572, %590
  %592 = load i32, i32* %4, align 4
  %593 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %594 = load i32, i32* @ROW_SIZE, align 4
  %595 = call i32 @REG_SET_FIELD(i32 %592, i32 %593, i32 %594, i32 0)
  store i32 %595, i32* %4, align 4
  br label %606

596:                                              ; preds = %572
  %597 = load i32, i32* %4, align 4
  %598 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %599 = load i32, i32* @ROW_SIZE, align 4
  %600 = call i32 @REG_SET_FIELD(i32 %597, i32 %598, i32 %599, i32 1)
  store i32 %600, i32* %4, align 4
  br label %606

601:                                              ; preds = %572
  %602 = load i32, i32* %4, align 4
  %603 = load i32, i32* @GB_ADDR_CONFIG, align 4
  %604 = load i32, i32* @ROW_SIZE, align 4
  %605 = call i32 @REG_SET_FIELD(i32 %602, i32 %603, i32 %604, i32 2)
  store i32 %605, i32* %4, align 4
  br label %606

606:                                              ; preds = %601, %596, %591
  %607 = load i32, i32* %4, align 4
  %608 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %609 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %608, i32 0, i32 2
  %610 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %610, i32 0, i32 20
  store i32 %607, i32* %611, align 4
  store i32 0, i32* %2, align 4
  br label %612

612:                                              ; preds = %606, %166, %129
  %613 = load i32, i32* %2, align 4
  ret i32 %613
}

declare dso_local i32 @amdgpu_atombios_get_gfx_info(%struct.amdgpu_device*) #1

declare dso_local i8* @RREG32(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
