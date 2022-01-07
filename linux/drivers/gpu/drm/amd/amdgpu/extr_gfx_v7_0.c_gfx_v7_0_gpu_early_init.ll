; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_gpu_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_gpu_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BONAIRE_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@HAWAII_GB_ADDR_CONFIG_GOLDEN = common dso_local global i32 0, align 4
@mmMC_SHARED_CHMAP = common dso_local global i32 0, align 4
@mmMC_ARB_RAMCFG = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@mmMC_FUS_DRAM0_BANK_ADDR_MAPPING = common dso_local global i32 0, align 4
@MC_FUS_DRAM0_BANK_ADDR_MAPPING = common dso_local global i32 0, align 4
@DIMM0ADDRMAP = common dso_local global i32 0, align 4
@DIMM1ADDRMAP = common dso_local global i32 0, align 4
@mmMC_FUS_DRAM1_BANK_ADDR_MAPPING = common dso_local global i32 0, align 4
@MC_FUS_DRAM1_BANK_ADDR_MAPPING = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG__NOOFCOLS_MASK = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG__NOOFCOLS__SHIFT = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG__ROW_SIZE_MASK = common dso_local global i32 0, align 4
@GB_ADDR_CONFIG__ROW_SIZE__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v7_0_gpu_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_gpu_early_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %177 [
    i32 132, label %14
    i32 131, label %68
    i32 129, label %122
    i32 130, label %176
    i32 128, label %176
  ]

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 2, i32* %18, align 4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 4, i32* %22, align 4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %24 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  store i32 7, i32* %26, align 4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i32 2, i32* %34, align 4
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  store i32 4, i32* %38, align 4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  store i32 256, i32* %42, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  store i32 32, i32* %46, align 4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %48 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  store i32 8, i32* %50, align 4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 9
  store i32 32, i32* %54, align 4
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %56 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 10
  store i32 256, i32* %58, align 4
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 11
  store i32 48, i32* %62, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 12
  store i32 304, i32* %66, align 4
  %67 = load i32, i32* @BONAIRE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %67, i32* %3, align 4
  br label %231

68:                                               ; preds = %1
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %70 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 4, i32* %72, align 4
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i32 16, i32* %76, align 4
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 11, i32* %80, align 4
  %81 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %82 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 4
  store i32 4, i32* %88, align 4
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  store i32 16, i32* %92, align 4
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 6
  store i32 256, i32* %96, align 4
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 7
  store i32 32, i32* %100, align 4
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 8
  store i32 8, i32* %104, align 4
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 9
  store i32 32, i32* %108, align 4
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 10
  store i32 256, i32* %112, align 4
  %113 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %114 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 11
  store i32 48, i32* %116, align 4
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %118 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 12
  store i32 304, i32* %120, align 4
  %121 = load i32, i32* @HAWAII_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %121, i32* %3, align 4
  br label %231

122:                                              ; preds = %1
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %124 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  store i32 1, i32* %126, align 4
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store i32 4, i32* %130, align 4
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  store i32 8, i32* %134, align 4
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 4
  store i32 2, i32* %138, align 4
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 3
  store i32 1, i32* %142, align 4
  %143 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %144 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 5
  store i32 4, i32* %146, align 4
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 6
  store i32 256, i32* %150, align 4
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %152 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 7
  store i32 16, i32* %154, align 4
  %155 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %156 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 8
  store i32 8, i32* %158, align 4
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %160 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 9
  store i32 32, i32* %162, align 4
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 10
  store i32 256, i32* %166, align 4
  %167 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %168 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 11
  store i32 48, i32* %170, align 4
  %171 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %172 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 12
  store i32 304, i32* %174, align 4
  %175 = load i32, i32* @BONAIRE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %175, i32* %3, align 4
  br label %231

176:                                              ; preds = %1, %1
  br label %177

177:                                              ; preds = %1, %176
  %178 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %179 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i32 1, i32* %181, align 4
  %182 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %183 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  store i32 2, i32* %185, align 4
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %187 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  store i32 2, i32* %189, align 4
  %190 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %191 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  store i32 1, i32* %193, align 4
  %194 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %195 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 4
  store i32 1, i32* %197, align 4
  %198 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %199 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 5
  store i32 2, i32* %201, align 4
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %203 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 6
  store i32 256, i32* %205, align 4
  %206 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %207 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 7
  store i32 16, i32* %209, align 4
  %210 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %211 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 8
  store i32 8, i32* %213, align 4
  %214 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %215 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 9
  store i32 32, i32* %217, align 4
  %218 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %219 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 10
  store i32 256, i32* %221, align 4
  %222 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %223 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 11
  store i32 48, i32* %225, align 4
  %226 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %227 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 12
  store i32 304, i32* %229, align 4
  %230 = load i32, i32* @BONAIRE_GB_ADDR_CONFIG_GOLDEN, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %177, %122, %68, %14
  %232 = load i32, i32* @mmMC_SHARED_CHMAP, align 4
  %233 = call i8* @RREG32(i32 %232)
  %234 = ptrtoint i8* %233 to i32
  store i32 %234, i32* %4, align 4
  %235 = load i32, i32* @mmMC_ARB_RAMCFG, align 4
  %236 = call i8* @RREG32(i32 %235)
  %237 = ptrtoint i8* %236 to i32
  %238 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %239 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 13
  store i32 %237, i32* %241, align 4
  %242 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %243 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 13
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %5, align 4
  %247 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %248 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %253 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 14
  store i32 %251, i32* %255, align 4
  %256 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %257 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 15
  store i32 256, i32* %259, align 4
  %260 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %261 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @AMD_IS_APU, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %363

266:                                              ; preds = %231
  %267 = load i32, i32* @mmMC_FUS_DRAM0_BANK_ADDR_MAPPING, align 4
  %268 = call i8* @RREG32(i32 %267)
  %269 = ptrtoint i8* %268 to i32
  store i32 %269, i32* %10, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* @MC_FUS_DRAM0_BANK_ADDR_MAPPING, align 4
  %272 = load i32, i32* @DIMM0ADDRMAP, align 4
  %273 = call i32 @REG_GET_FIELD(i32 %270, i32 %271, i32 %272)
  store i32 %273, i32* %6, align 4
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* @MC_FUS_DRAM0_BANK_ADDR_MAPPING, align 4
  %276 = load i32, i32* @DIMM1ADDRMAP, align 4
  %277 = call i32 @REG_GET_FIELD(i32 %274, i32 %275, i32 %276)
  store i32 %277, i32* %7, align 4
  %278 = load i32, i32* @mmMC_FUS_DRAM1_BANK_ADDR_MAPPING, align 4
  %279 = call i8* @RREG32(i32 %278)
  %280 = ptrtoint i8* %279 to i32
  store i32 %280, i32* %10, align 4
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* @MC_FUS_DRAM1_BANK_ADDR_MAPPING, align 4
  %283 = load i32, i32* @DIMM0ADDRMAP, align 4
  %284 = call i32 @REG_GET_FIELD(i32 %281, i32 %282, i32 %283)
  store i32 %284, i32* %8, align 4
  %285 = load i32, i32* %10, align 4
  %286 = load i32, i32* @MC_FUS_DRAM1_BANK_ADDR_MAPPING, align 4
  %287 = load i32, i32* @DIMM1ADDRMAP, align 4
  %288 = call i32 @REG_GET_FIELD(i32 %285, i32 %286, i32 %287)
  store i32 %288, i32* %9, align 4
  %289 = load i32, i32* %6, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %300, label %291

291:                                              ; preds = %266
  %292 = load i32, i32* %6, align 4
  %293 = icmp eq i32 %292, 3
  br i1 %293, label %300, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %6, align 4
  %296 = icmp eq i32 %295, 4
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %6, align 4
  %299 = icmp sgt i32 %298, 12
  br i1 %299, label %300, label %301

300:                                              ; preds = %297, %294, %291, %266
  store i32 0, i32* %6, align 4
  br label %301

301:                                              ; preds = %300, %297
  %302 = load i32, i32* %7, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %313, label %304

304:                                              ; preds = %301
  %305 = load i32, i32* %7, align 4
  %306 = icmp eq i32 %305, 3
  br i1 %306, label %313, label %307

307:                                              ; preds = %304
  %308 = load i32, i32* %7, align 4
  %309 = icmp eq i32 %308, 4
  br i1 %309, label %313, label %310

310:                                              ; preds = %307
  %311 = load i32, i32* %7, align 4
  %312 = icmp sgt i32 %311, 12
  br i1 %312, label %313, label %314

313:                                              ; preds = %310, %307, %304, %301
  store i32 0, i32* %7, align 4
  br label %314

314:                                              ; preds = %313, %310
  %315 = load i32, i32* %8, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %326, label %317

317:                                              ; preds = %314
  %318 = load i32, i32* %8, align 4
  %319 = icmp eq i32 %318, 3
  br i1 %319, label %326, label %320

320:                                              ; preds = %317
  %321 = load i32, i32* %8, align 4
  %322 = icmp eq i32 %321, 4
  br i1 %322, label %326, label %323

323:                                              ; preds = %320
  %324 = load i32, i32* %8, align 4
  %325 = icmp sgt i32 %324, 12
  br i1 %325, label %326, label %327

326:                                              ; preds = %323, %320, %317, %314
  store i32 0, i32* %8, align 4
  br label %327

327:                                              ; preds = %326, %323
  %328 = load i32, i32* %9, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %339, label %330

330:                                              ; preds = %327
  %331 = load i32, i32* %9, align 4
  %332 = icmp eq i32 %331, 3
  br i1 %332, label %339, label %333

333:                                              ; preds = %330
  %334 = load i32, i32* %9, align 4
  %335 = icmp eq i32 %334, 4
  br i1 %335, label %339, label %336

336:                                              ; preds = %333
  %337 = load i32, i32* %9, align 4
  %338 = icmp sgt i32 %337, 12
  br i1 %338, label %339, label %340

339:                                              ; preds = %336, %333, %330, %327
  store i32 0, i32* %9, align 4
  br label %340

340:                                              ; preds = %339, %336
  %341 = load i32, i32* %6, align 4
  %342 = icmp eq i32 %341, 11
  br i1 %342, label %352, label %343

343:                                              ; preds = %340
  %344 = load i32, i32* %7, align 4
  %345 = icmp eq i32 %344, 11
  br i1 %345, label %352, label %346

346:                                              ; preds = %343
  %347 = load i32, i32* %8, align 4
  %348 = icmp eq i32 %347, 11
  br i1 %348, label %352, label %349

349:                                              ; preds = %346
  %350 = load i32, i32* %9, align 4
  %351 = icmp eq i32 %350, 11
  br i1 %351, label %352, label %357

352:                                              ; preds = %349, %346, %343, %340
  %353 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %354 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %353, i32 0, i32 2
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 16
  store i32 2, i32* %356, align 4
  br label %362

357:                                              ; preds = %349
  %358 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %359 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 16
  store i32 1, i32* %361, align 4
  br label %362

362:                                              ; preds = %357, %352
  br label %390

363:                                              ; preds = %231
  %364 = load i32, i32* %5, align 4
  %365 = load i32, i32* @MC_ARB_RAMCFG__NOOFCOLS_MASK, align 4
  %366 = and i32 %364, %365
  %367 = load i32, i32* @MC_ARB_RAMCFG__NOOFCOLS__SHIFT, align 4
  %368 = ashr i32 %366, %367
  store i32 %368, i32* %10, align 4
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 8, %369
  %371 = shl i32 1, %370
  %372 = mul nsw i32 4, %371
  %373 = sdiv i32 %372, 1024
  %374 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %375 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %376, i32 0, i32 16
  store i32 %373, i32* %377, align 4
  %378 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %379 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 16
  %382 = load i32, i32* %381, align 4
  %383 = icmp sgt i32 %382, 4
  br i1 %383, label %384, label %389

384:                                              ; preds = %363
  %385 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %386 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %385, i32 0, i32 2
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %387, i32 0, i32 16
  store i32 4, i32* %388, align 4
  br label %389

389:                                              ; preds = %384, %363
  br label %390

390:                                              ; preds = %389, %362
  %391 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %392 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %393, i32 0, i32 17
  store i32 32, i32* %394, align 4
  %395 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %396 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %395, i32 0, i32 2
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 18
  store i32 1, i32* %398, align 4
  %399 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %400 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %399, i32 0, i32 2
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 19
  store i32 64, i32* %402, align 4
  %403 = load i32, i32* @GB_ADDR_CONFIG__ROW_SIZE_MASK, align 4
  %404 = xor i32 %403, -1
  %405 = load i32, i32* %3, align 4
  %406 = and i32 %405, %404
  store i32 %406, i32* %3, align 4
  %407 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %408 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %407, i32 0, i32 2
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 16
  %411 = load i32, i32* %410, align 4
  switch i32 %411, label %413 [
    i32 1, label %412
    i32 2, label %418
    i32 4, label %423
  ]

412:                                              ; preds = %390
  br label %413

413:                                              ; preds = %390, %412
  %414 = load i32, i32* @GB_ADDR_CONFIG__ROW_SIZE__SHIFT, align 4
  %415 = shl i32 0, %414
  %416 = load i32, i32* %3, align 4
  %417 = or i32 %416, %415
  store i32 %417, i32* %3, align 4
  br label %428

418:                                              ; preds = %390
  %419 = load i32, i32* @GB_ADDR_CONFIG__ROW_SIZE__SHIFT, align 4
  %420 = shl i32 1, %419
  %421 = load i32, i32* %3, align 4
  %422 = or i32 %421, %420
  store i32 %422, i32* %3, align 4
  br label %428

423:                                              ; preds = %390
  %424 = load i32, i32* @GB_ADDR_CONFIG__ROW_SIZE__SHIFT, align 4
  %425 = shl i32 2, %424
  %426 = load i32, i32* %3, align 4
  %427 = or i32 %426, %425
  store i32 %427, i32* %3, align 4
  br label %428

428:                                              ; preds = %423, %418, %413
  %429 = load i32, i32* %3, align 4
  %430 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %431 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %432, i32 0, i32 20
  store i32 %429, i32* %433, align 4
  ret void
}

declare dso_local i8* @RREG32(i32) #1

declare dso_local i32 @REG_GET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
