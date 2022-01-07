; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_init_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_init_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_PG_SUPPORT_GFX_PG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GFX_SMG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GFX_DMG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_CP = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GDS = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_RLC_SMU_HS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v7_0_init_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_init_pg(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @AMD_PG_SUPPORT_GFX_PG, align 4
  %7 = load i32, i32* @AMD_PG_SUPPORT_GFX_SMG, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @AMD_PG_SUPPORT_GFX_DMG, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @AMD_PG_SUPPORT_CP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @AMD_PG_SUPPORT_GDS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @AMD_PG_SUPPORT_RLC_SMU_HS, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %5, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %1
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %21 = call i32 @gfx_v7_0_enable_sclk_slowdown_on_pu(%struct.amdgpu_device* %20, i32 1)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = call i32 @gfx_v7_0_enable_sclk_slowdown_on_pd(%struct.amdgpu_device* %22, i32 1)
  %24 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AMD_PG_SUPPORT_GFX_PG, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %32 = call i32 @gfx_v7_0_init_gfx_cgpg(%struct.amdgpu_device* %31)
  %33 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %34 = call i32 @gfx_v7_0_enable_cp_pg(%struct.amdgpu_device* %33, i32 1)
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = call i32 @gfx_v7_0_enable_gds_pg(%struct.amdgpu_device* %35, i32 1)
  br label %37

37:                                               ; preds = %30, %19
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %39 = call i32 @gfx_v7_0_init_ao_cu_mask(%struct.amdgpu_device* %38)
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = call i32 @gfx_v7_0_update_gfx_pg(%struct.amdgpu_device* %40, i32 1)
  br label %42

42:                                               ; preds = %37, %1
  ret void
}

declare dso_local i32 @gfx_v7_0_enable_sclk_slowdown_on_pu(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v7_0_enable_sclk_slowdown_on_pd(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v7_0_init_gfx_cgpg(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v7_0_enable_cp_pg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v7_0_enable_gds_pg(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v7_0_init_ao_cu_mask(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v7_0_update_gfx_pg(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
