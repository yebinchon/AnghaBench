; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_constants_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_constants_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }

@GC = common dso_local global i32 0, align 4
@GRBM_CNTL = common dso_local global i32 0, align 4
@READ_TIMEOUT = common dso_local global i32 0, align 4
@mmDB_DEBUG2 = common dso_local global i32 0, align 4
@AMDGPU_GFXHUB_0 = common dso_local global i64 0, align 8
@SH_MEM_CONFIG = common dso_local global i32 0, align 4
@ALIGNMENT_MODE = common dso_local global i32 0, align 4
@SH_MEM_ALIGNMENT_MODE_UNALIGNED = common dso_local global i32 0, align 4
@RETRY_DISABLE = common dso_local global i32 0, align 4
@amdgpu_noretry = common dso_local global i32 0, align 4
@mmSH_MEM_CONFIG = common dso_local global i32 0, align 4
@mmSH_MEM_BASES = common dso_local global i32 0, align 4
@SH_MEM_BASES = common dso_local global i32 0, align 4
@PRIVATE_BASE = common dso_local global i32 0, align 4
@SHARED_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_0_constants_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_constants_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @GC, align 4
  %6 = load i32, i32* @GRBM_CNTL, align 4
  %7 = load i32, i32* @READ_TIMEOUT, align 4
  %8 = call i32 @WREG32_FIELD15_RLC(i32 %5, i32 0, i32 %6, i32 %7, i32 255)
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = call i32 @gfx_v9_0_tiling_mode_table_init(%struct.amdgpu_device* %9)
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = call i32 @gfx_v9_0_setup_rb(%struct.amdgpu_device* %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = call i32 @gfx_v9_0_get_cu_info(%struct.amdgpu_device* %13, i32* %16)
  %18 = load i32, i32* @GC, align 4
  %19 = load i32, i32* @mmDB_DEBUG2, align 4
  %20 = call i32 @RREG32_SOC15(i32 %18, i32 0, i32 %19)
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %106, %1
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %29, %37
  br i1 %38, label %39, label %109

39:                                               ; preds = %28
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %40, i32 0, i32 0, i32 0, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i32, i32* @SH_MEM_CONFIG, align 4
  %47 = load i32, i32* @ALIGNMENT_MODE, align 4
  %48 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %49 = call i64 @REG_SET_FIELD(i64 0, i32 %46, i32 %47, i32 %48)
  store i64 %49, i64* %3, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i32, i32* @SH_MEM_CONFIG, align 4
  %52 = load i32, i32* @RETRY_DISABLE, align 4
  %53 = load i32, i32* @amdgpu_noretry, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @REG_SET_FIELD(i64 %50, i32 %51, i32 %52, i32 %57)
  store i64 %58, i64* %3, align 8
  %59 = load i32, i32* @GC, align 4
  %60 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @WREG32_SOC15_RLC(i32 %59, i32 0, i32 %60, i64 %61)
  %63 = load i32, i32* @GC, align 4
  %64 = load i32, i32* @mmSH_MEM_BASES, align 4
  %65 = call i32 @WREG32_SOC15_RLC(i32 %63, i32 0, i32 %64, i64 0)
  br label %105

66:                                               ; preds = %39
  %67 = load i32, i32* @SH_MEM_CONFIG, align 4
  %68 = load i32, i32* @ALIGNMENT_MODE, align 4
  %69 = load i32, i32* @SH_MEM_ALIGNMENT_MODE_UNALIGNED, align 4
  %70 = call i64 @REG_SET_FIELD(i64 0, i32 %67, i32 %68, i32 %69)
  store i64 %70, i64* %3, align 8
  %71 = load i64, i64* %3, align 8
  %72 = load i32, i32* @SH_MEM_CONFIG, align 4
  %73 = load i32, i32* @RETRY_DISABLE, align 4
  %74 = load i32, i32* @amdgpu_noretry, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @REG_SET_FIELD(i64 %71, i32 %72, i32 %73, i32 %78)
  store i64 %79, i64* %3, align 8
  %80 = load i32, i32* @GC, align 4
  %81 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @WREG32_SOC15_RLC(i32 %80, i32 0, i32 %81, i64 %82)
  %84 = load i32, i32* @SH_MEM_BASES, align 4
  %85 = load i32, i32* @PRIVATE_BASE, align 4
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 48
  %91 = call i64 @REG_SET_FIELD(i64 0, i32 %84, i32 %85, i32 %90)
  store i64 %91, i64* %3, align 8
  %92 = load i64, i64* %3, align 8
  %93 = load i32, i32* @SH_MEM_BASES, align 4
  %94 = load i32, i32* @SHARED_BASE, align 4
  %95 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %96 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = ashr i32 %98, 48
  %100 = call i64 @REG_SET_FIELD(i64 %92, i32 %93, i32 %94, i32 %99)
  store i64 %100, i64* %3, align 8
  %101 = load i32, i32* @GC, align 4
  %102 = load i32, i32* @mmSH_MEM_BASES, align 4
  %103 = load i64, i64* %3, align 8
  %104 = call i32 @WREG32_SOC15_RLC(i32 %101, i32 0, i32 %102, i64 %103)
  br label %105

105:                                              ; preds = %66, %45
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %28

109:                                              ; preds = %28
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %111 = call i32 @soc15_grbm_select(%struct.amdgpu_device* %110, i32 0, i32 0, i32 0, i32 0)
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 0
  %114 = call i32 @mutex_unlock(i32* %113)
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %116 = call i32 @gfx_v9_0_init_compute_vmid(%struct.amdgpu_device* %115)
  %117 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %118 = call i32 @gfx_v9_0_init_gds_vmid(%struct.amdgpu_device* %117)
  ret void
}

declare dso_local i32 @WREG32_FIELD15_RLC(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_tiling_mode_table_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_setup_rb(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_get_cu_info(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @soc15_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_RLC(i32, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfx_v9_0_init_compute_vmid(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_init_gds_vmid(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
