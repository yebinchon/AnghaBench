; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_constants_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_constants_init.c"
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
@AMDGPU_GFXHUB_0 = common dso_local global i64 0, align 8
@mmSH_MEM_CONFIG = common dso_local global i32 0, align 4
@DEFAULT_SH_MEM_CONFIG = common dso_local global i64 0, align 8
@SH_MEM_BASES = common dso_local global i32 0, align 4
@PRIVATE_BASE = common dso_local global i32 0, align 4
@SHARED_BASE = common dso_local global i32 0, align 4
@mmSH_MEM_BASES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v10_0_constants_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_constants_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @GC, align 4
  %6 = load i32, i32* @GRBM_CNTL, align 4
  %7 = load i32, i32* @READ_TIMEOUT, align 4
  %8 = call i32 @WREG32_FIELD15(i32 %5, i32 0, i32 %6, i32 %7, i32 255)
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = call i32 @gfx_v10_0_tiling_mode_table_init(%struct.amdgpu_device* %9)
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = call i32 @gfx_v10_0_setup_rb(%struct.amdgpu_device* %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = call i32 @gfx_v10_0_get_cu_info(%struct.amdgpu_device* %13, i32* %16)
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %19 = call i32 @gfx_v10_0_get_tcc_info(%struct.amdgpu_device* %18)
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = call i32 @gfx_v10_0_init_pa_sc_tile_steering_override(%struct.amdgpu_device* %20)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %27 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %73, %1
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %30, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %29
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @nv_grbm_select(%struct.amdgpu_device* %41, i32 0, i32 0, i32 0, i32 %42)
  %44 = load i32, i32* @GC, align 4
  %45 = load i32, i32* @mmSH_MEM_CONFIG, align 4
  %46 = load i64, i64* @DEFAULT_SH_MEM_CONFIG, align 8
  %47 = call i32 @WREG32_SOC15(i32 %44, i32 0, i32 %45, i64 %46)
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %40
  %51 = load i32, i32* @SH_MEM_BASES, align 4
  %52 = load i32, i32* @PRIVATE_BASE, align 4
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 48
  %58 = call i64 @REG_SET_FIELD(i64 0, i32 %51, i32 %52, i32 %57)
  store i64 %58, i64* %3, align 8
  %59 = load i64, i64* %3, align 8
  %60 = load i32, i32* @SH_MEM_BASES, align 4
  %61 = load i32, i32* @SHARED_BASE, align 4
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 48
  %67 = call i64 @REG_SET_FIELD(i64 %59, i32 %60, i32 %61, i32 %66)
  store i64 %67, i64* %3, align 8
  %68 = load i32, i32* @GC, align 4
  %69 = load i32, i32* @mmSH_MEM_BASES, align 4
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @WREG32_SOC15(i32 %68, i32 0, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %50, %40
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %29

76:                                               ; preds = %29
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = call i32 @nv_grbm_select(%struct.amdgpu_device* %77, i32 0, i32 0, i32 0, i32 0)
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %83 = call i32 @gfx_v10_0_init_compute_vmid(%struct.amdgpu_device* %82)
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %85 = call i32 @gfx_v10_0_init_gds_vmid(%struct.amdgpu_device* %84)
  ret void
}

declare dso_local i32 @WREG32_FIELD15(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_tiling_mode_table_init(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_setup_rb(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_get_cu_info(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @gfx_v10_0_get_tcc_info(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_init_pa_sc_tile_steering_override(%struct.amdgpu_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nv_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i64) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfx_v10_0_init_compute_vmid(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_init_gds_vmid(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
