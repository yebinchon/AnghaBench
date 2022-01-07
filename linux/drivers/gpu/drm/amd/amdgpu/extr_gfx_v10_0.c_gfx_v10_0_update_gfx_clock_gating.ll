; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_update_gfx_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_update_gfx_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_GFX_MGCG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGLS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_CGCG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_3D_CGCG = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_GFX_3D_CGLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @gfx_v10_0_update_gfx_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_update_gfx_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = call i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device* %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @gfx_v10_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %10, i32 %11)
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @gfx_v10_0_update_3d_clock_gating(%struct.amdgpu_device* %13, i32 %14)
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @gfx_v10_0_update_coarse_grain_clock_gating(%struct.amdgpu_device* %16, i32 %17)
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @gfx_v10_0_update_coarse_grain_clock_gating(%struct.amdgpu_device* %20, i32 %21)
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @gfx_v10_0_update_3d_clock_gating(%struct.amdgpu_device* %23, i32 %24)
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @gfx_v10_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %26, i32 %27)
  br label %29

29:                                               ; preds = %19, %9
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %31 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AMD_CG_SUPPORT_GFX_MGCG, align 4
  %34 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGCG, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @AMD_CG_SUPPORT_GFX_CGLS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGCG, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @AMD_CG_SUPPORT_GFX_3D_CGLS, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %32, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @gfx_v10_0_enable_gui_idle_interrupt(%struct.amdgpu_device* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %29
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %52 = call i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device* %51)
  ret i32 0
}

declare dso_local i32 @amdgpu_gfx_rlc_enter_safe_mode(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_update_medium_grain_clock_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v10_0_update_3d_clock_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v10_0_update_coarse_grain_clock_gating(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v10_0_enable_gui_idle_interrupt(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_gfx_rlc_exit_safe_mode(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
