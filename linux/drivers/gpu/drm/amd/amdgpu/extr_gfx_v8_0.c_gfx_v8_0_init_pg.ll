; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CHIP_CARRIZO = common dso_local global i64 0, align 8
@CHIP_STONEY = common dso_local global i64 0, align 8
@mmRLC_JUMP_TABLE_RESTORE = common dso_local global i32 0, align 4
@mmRLC_PG_ALWAYS_ON_CU_MASK = common dso_local global i32 0, align 4
@CHIP_POLARIS11 = common dso_local global i64 0, align 8
@CHIP_POLARIS12 = common dso_local global i64 0, align 8
@CHIP_VEGAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v8_0_init_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_init_pg(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CHIP_CARRIZO, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CHIP_STONEY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %8, %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = call i32 @gfx_v8_0_init_csb(%struct.amdgpu_device* %15)
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %18 = call i32 @gfx_v8_0_init_save_restore_list(%struct.amdgpu_device* %17)
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %20 = call i32 @gfx_v8_0_enable_save_restore_machine(%struct.amdgpu_device* %19)
  %21 = load i32, i32* @mmRLC_JUMP_TABLE_RESTORE, align 4
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 8
  %28 = call i32 @WREG32(i32 %21, i32 %27)
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %30 = call i32 @gfx_v8_0_init_power_gating(%struct.amdgpu_device* %29)
  %31 = load i32, i32* @mmRLC_PG_ALWAYS_ON_CU_MASK, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WREG32(i32 %31, i32 %36)
  br label %66

38:                                               ; preds = %8
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHIP_POLARIS11, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @CHIP_POLARIS12, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CHIP_VEGAM, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50, %44, %38
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = call i32 @gfx_v8_0_init_csb(%struct.amdgpu_device* %57)
  %59 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %60 = call i32 @gfx_v8_0_init_save_restore_list(%struct.amdgpu_device* %59)
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %62 = call i32 @gfx_v8_0_enable_save_restore_machine(%struct.amdgpu_device* %61)
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = call i32 @gfx_v8_0_init_power_gating(%struct.amdgpu_device* %63)
  br label %65

65:                                               ; preds = %56, %50
  br label %66

66:                                               ; preds = %65, %14
  ret void
}

declare dso_local i32 @gfx_v8_0_init_csb(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_init_save_restore_list(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v8_0_enable_save_restore_machine(%struct.amdgpu_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @gfx_v8_0_init_power_gating(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
