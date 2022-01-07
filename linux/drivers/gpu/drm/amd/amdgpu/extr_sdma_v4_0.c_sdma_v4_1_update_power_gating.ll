; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_1_update_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_1_update_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_PG_SUPPORT_SDMA = common dso_local global i32 0, align 4
@SDMA0 = common dso_local global i32 0, align 4
@mmSDMA0_CNTL = common dso_local global i32 0, align 4
@SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @sdma_v4_1_update_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_1_update_power_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AMD_PG_SUPPORT_SDMA, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = load i32, i32* @SDMA0, align 4
  %18 = load i32, i32* @mmSDMA0_CNTL, align 4
  %19 = call i32 @SOC15_REG_OFFSET(i32 %17, i32 0, i32 %18)
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %6, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = load i32, i32* @SDMA0, align 4
  %29 = load i32, i32* @mmSDMA0_CNTL, align 4
  %30 = call i32 @SOC15_REG_OFFSET(i32 %28, i32 0, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %16
  br label %53

34:                                               ; preds = %9, %2
  %35 = load i32, i32* @SDMA0, align 4
  %36 = load i32, i32* @mmSDMA0_CNTL, align 4
  %37 = call i32 @SOC15_REG_OFFSET(i32 %35, i32 0, i32 %36)
  %38 = call i32 @RREG32(i32 %37)
  store i32 %38, i32* %6, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i32, i32* @SDMA0, align 4
  %48 = load i32, i32* @mmSDMA0_CNTL, align 4
  %49 = call i32 @SOC15_REG_OFFSET(i32 %47, i32 0, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %34
  br label %53

53:                                               ; preds = %52, %33
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
