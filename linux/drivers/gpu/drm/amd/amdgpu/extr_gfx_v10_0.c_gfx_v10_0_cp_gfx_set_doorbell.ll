; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_gfx_set_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_cp_gfx_set_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_ring = type { i32, i64 }

@GC = common dso_local global i32 0, align 4
@mmCP_RB_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_CONTROL = common dso_local global i32 0, align 4
@DOORBELL_OFFSET = common dso_local global i32 0, align 4
@DOORBELL_EN = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@mmCP_RB_DOORBELL_RANGE_LOWER = common dso_local global i32 0, align 4
@mmCP_RB_DOORBELL_RANGE_UPPER = common dso_local global i32 0, align 4
@CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_ring*)* @gfx_v10_0_cp_gfx_set_doorbell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_cp_gfx_set_doorbell(%struct.amdgpu_device* %0, %struct.amdgpu_ring* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_ring* %1, %struct.amdgpu_ring** %4, align 8
  %6 = load i32, i32* @GC, align 4
  %7 = load i32, i32* @mmCP_RB_DOORBELL_CONTROL, align 4
  %8 = call i32 @RREG32_SOC15(i32 %6, i32 0, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %16 = load i32, i32* @DOORBELL_OFFSET, align 4
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @REG_SET_FIELD(i32 %14, i32 %15, i32 %16, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %23 = load i32, i32* @DOORBELL_EN, align 4
  %24 = call i32 @REG_SET_FIELD(i32 %21, i32 %22, i32 %23, i32 1)
  store i32 %24, i32* %5, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @CP_RB_DOORBELL_CONTROL, align 4
  %28 = load i32, i32* @DOORBELL_EN, align 4
  %29 = call i32 @REG_SET_FIELD(i32 %26, i32 %27, i32 %28, i32 0)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %25, %13
  %31 = load i32, i32* @GC, align 4
  %32 = load i32, i32* @mmCP_RB_DOORBELL_CONTROL, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @WREG32_SOC15(i32 %31, i32 0, i32 %32, i32 %33)
  %35 = load i32, i32* @CP_RB_DOORBELL_RANGE_LOWER, align 4
  %36 = load i32, i32* @DOORBELL_RANGE_LOWER, align 4
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %38 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @REG_SET_FIELD(i32 0, i32 %35, i32 %36, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @GC, align 4
  %42 = load i32, i32* @mmCP_RB_DOORBELL_RANGE_LOWER, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @WREG32_SOC15(i32 %41, i32 0, i32 %42, i32 %43)
  %45 = load i32, i32* @GC, align 4
  %46 = load i32, i32* @mmCP_RB_DOORBELL_RANGE_UPPER, align 4
  %47 = load i32, i32* @CP_RB_DOORBELL_RANGE_UPPER__DOORBELL_RANGE_UPPER_MASK, align 4
  %48 = call i32 @WREG32_SOC15(i32 %45, i32 0, i32 %46, i32 %47)
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
