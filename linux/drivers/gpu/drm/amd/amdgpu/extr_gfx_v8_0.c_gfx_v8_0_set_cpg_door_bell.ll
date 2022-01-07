; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_set_cpg_door_bell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_set_cpg_door_bell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_ring = type { i32, i64 }

@CHIP_TOPAZ = common dso_local global i64 0, align 8
@mmCP_RB_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@DOORBELL_OFFSET = common dso_local global i32 0, align 4
@DOORBELL_HIT = common dso_local global i32 0, align 4
@DOORBELL_EN = common dso_local global i32 0, align 4
@AMD_IS_APU = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@mmCP_RB_DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@mmCP_RB_DOORBELL_RANGE_UPPER = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ring*)* @gfx_v8_0_set_cpg_door_bell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_set_cpg_door_bell(%struct.amdgpu_device* %0, %struct.amdgpu_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %4, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHIP_TOPAZ, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %65

12:                                               ; preds = %2
  %13 = load i32, i32* @mmCP_RB_DOORBELL_CONTROL, align 4
  %14 = call i32 @RREG32(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %22 = load i32, i32* @DOORBELL_OFFSET, align 4
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @REG_SET_FIELD(i32 %20, i32 %21, i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %29 = load i32, i32* @DOORBELL_HIT, align 4
  %30 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %33 = load i32, i32* @DOORBELL_EN, align 4
  %34 = call i32 @REG_SET_FIELD(i32 %31, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %5, align 4
  br label %40

35:                                               ; preds = %12
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %38 = load i32, i32* @DOORBELL_EN, align 4
  %39 = call i32 @REG_SET_FIELD(i32 %36, i32 %37, i32 %38, i32 0)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %19
  %41 = load i32, i32* @mmCP_RB_DOORBELL_CONTROL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AMD_IS_APU, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %65

51:                                               ; preds = %40
  %52 = load i32, i32* @CP_RB_DOORBELL_RANGE_LOWER, align 4
  %53 = load i32, i32* @DOORBELL_RANGE_LOWER, align 4
  %54 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %55 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @REG_SET_FIELD(i32 0, i32 %52, i32 %53, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @mmCP_RB_DOORBELL_RANGE_LOWER, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @WREG32(i32 %59, i32 %60)
  %62 = load i32, i32* @mmCP_RB_DOORBELL_RANGE_UPPER, align 4
  %63 = load i32, i32* @CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %51, %50, %11
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
