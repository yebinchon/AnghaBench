; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_set_compute_eop_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_set_compute_eop_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_ME1_PIPE0_INT_CNTL = common dso_local global i32 0, align 4
@mmCP_ME1_PIPE1_INT_CNTL = common dso_local global i32 0, align 4
@mmCP_ME1_PIPE2_INT_CNTL = common dso_local global i32 0, align 4
@mmCP_ME1_PIPE3_INT_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"invalid pipe %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid me %d\0A\00", align 1
@CP_ME1_PIPE0_INT_CNTL = common dso_local global i32 0, align 4
@TIME_STAMP_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32)* @gfx_v10_0_set_compute_eop_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %35

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %31 [
    i32 0, label %15
    i32 1, label %19
    i32 2, label %23
    i32 3, label %27
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @GC, align 4
  %17 = load i32, i32* @mmCP_ME1_PIPE0_INT_CNTL, align 4
  %18 = call i32 @SOC15_REG_OFFSET(i32 %16, i32 0, i32 %17)
  store i32 %18, i32* %10, align 4
  br label %34

19:                                               ; preds = %13
  %20 = load i32, i32* @GC, align 4
  %21 = load i32, i32* @mmCP_ME1_PIPE1_INT_CNTL, align 4
  %22 = call i32 @SOC15_REG_OFFSET(i32 %20, i32 0, i32 %21)
  store i32 %22, i32* %10, align 4
  br label %34

23:                                               ; preds = %13
  %24 = load i32, i32* @GC, align 4
  %25 = load i32, i32* @mmCP_ME1_PIPE2_INT_CNTL, align 4
  %26 = call i32 @SOC15_REG_OFFSET(i32 %24, i32 0, i32 %25)
  store i32 %26, i32* %10, align 4
  br label %34

27:                                               ; preds = %13
  %28 = load i32, i32* @GC, align 4
  %29 = load i32, i32* @mmCP_ME1_PIPE3_INT_CNTL, align 4
  %30 = call i32 @SOC15_REG_OFFSET(i32 %28, i32 0, i32 %29)
  store i32 %30, i32* %10, align 4
  br label %34

31:                                               ; preds = %13
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %61

34:                                               ; preds = %27, %23, %19, %15
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %61

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  switch i32 %39, label %60 [
    i32 129, label %40
    i32 128, label %50
  ]

40:                                               ; preds = %38
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @RREG32(i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @CP_ME1_PIPE0_INT_CNTL, align 4
  %45 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %43, i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @WREG32(i32 %47, i32 %48)
  br label %61

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @RREG32(i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @CP_ME1_PIPE0_INT_CNTL, align 4
  %55 = load i32, i32* @TIME_STAMP_INT_ENABLE, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %53, i32 %54, i32 %55, i32 1)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @WREG32(i32 %57, i32 %58)
  br label %61

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %31, %35, %60, %50, %40
  ret void
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
