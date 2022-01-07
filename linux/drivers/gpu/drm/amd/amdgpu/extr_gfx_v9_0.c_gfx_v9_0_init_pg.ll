; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@AMD_PG_SUPPORT_GFX_PG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GFX_SMG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GFX_DMG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_CP = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GDS = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_RLC_SMU_HS = common dso_local global i32 0, align 4
@mmRLC_JUMP_TABLE_RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_0_init_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_init_pg(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = call i32 @gfx_v9_0_init_csb(%struct.amdgpu_device* %3)
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %6 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %13 = call i32 @gfx_v9_1_init_rlc_save_restore_list(%struct.amdgpu_device* %12)
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %15 = call i32 @gfx_v9_0_enable_save_restore_machine(%struct.amdgpu_device* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AMD_PG_SUPPORT_GFX_PG, align 4
  %21 = load i32, i32* @AMD_PG_SUPPORT_GFX_SMG, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @AMD_PG_SUPPORT_GFX_DMG, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @AMD_PG_SUPPORT_CP, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AMD_PG_SUPPORT_GDS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AMD_PG_SUPPORT_RLC_SMU_HS, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %19, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %16
  %34 = load i32, i32* @mmRLC_JUMP_TABLE_RESTORE, align 4
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 8
  %41 = call i32 @WREG32(i32 %34, i32 %40)
  %42 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %43 = call i32 @gfx_v9_0_init_gfx_power_gating(%struct.amdgpu_device* %42)
  br label %44

44:                                               ; preds = %33, %16
  ret void
}

declare dso_local i32 @gfx_v9_0_init_csb(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_1_init_rlc_save_restore_list(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v9_0_enable_save_restore_machine(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v9_0_init_gfx_power_gating(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
