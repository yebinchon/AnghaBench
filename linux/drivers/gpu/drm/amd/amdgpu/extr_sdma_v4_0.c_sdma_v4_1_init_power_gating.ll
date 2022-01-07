; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_1_init_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_1_init_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@SDMA0 = common dso_local global i32 0, align 4
@mmSDMA0_POWER_CNTL = common dso_local global i32 0, align 4
@SDMA0_POWER_CNTL__PG_CNTL_ENABLE_MASK = common dso_local global i32 0, align 4
@mmSDMA0_CNTL = common dso_local global i32 0, align 4
@SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@SDMA0_POWER_CNTL__ON_OFF_CONDITION_HOLD_TIME_MASK = common dso_local global i32 0, align 4
@mmSDMA0_POWER_CNTL_DEFAULT = common dso_local global i32 0, align 4
@SDMA0_POWER_CNTL__ON_OFF_STATUS_DURATION_TIME_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @sdma_v4_1_init_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_1_init_power_gating(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @SDMA0, align 4
  %6 = load i32, i32* @mmSDMA0_POWER_CNTL, align 4
  %7 = call i32 @SOC15_REG_OFFSET(i32 %5, i32 0, i32 %6)
  %8 = call i32 @RREG32(i32 %7)
  store i32 %8, i32* %4, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @SDMA0_POWER_CNTL__PG_CNTL_ENABLE_MASK, align 4
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @SDMA0, align 4
  %17 = load i32, i32* @mmSDMA0_POWER_CNTL, align 4
  %18 = call i32 @SOC15_REG_OFFSET(i32 %16, i32 0, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @WREG32(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @SDMA0, align 4
  %23 = load i32, i32* @mmSDMA0_CNTL, align 4
  %24 = call i32 @SOC15_REG_OFFSET(i32 %22, i32 0, i32 %23)
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %4, align 4
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @SDMA0_CNTL__CTXEMPTY_INT_ENABLE_MASK, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32, i32* @SDMA0, align 4
  %34 = load i32, i32* @mmSDMA0_CNTL, align 4
  %35 = call i32 @SOC15_REG_OFFSET(i32 %33, i32 0, i32 %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @WREG32(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %21
  %39 = load i32, i32* @SDMA0, align 4
  %40 = load i32, i32* @mmSDMA0_POWER_CNTL, align 4
  %41 = call i32 @SOC15_REG_OFFSET(i32 %39, i32 0, i32 %40)
  %42 = call i32 @RREG32(i32 %41)
  store i32 %42, i32* %4, align 4
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @SDMA0_POWER_CNTL__ON_OFF_CONDITION_HOLD_TIME_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @mmSDMA0_POWER_CNTL_DEFAULT, align 4
  %48 = load i32, i32* @SDMA0_POWER_CNTL__ON_OFF_CONDITION_HOLD_TIME_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @SDMA0_POWER_CNTL__ON_OFF_STATUS_DURATION_TIME_MASK, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @mmSDMA0_POWER_CNTL_DEFAULT, align 4
  %57 = load i32, i32* @SDMA0_POWER_CNTL__ON_OFF_STATUS_DURATION_TIME_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %38
  %65 = load i32, i32* @SDMA0, align 4
  %66 = load i32, i32* @mmSDMA0_POWER_CNTL, align 4
  %67 = call i32 @SOC15_REG_OFFSET(i32 %65, i32 0, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @WREG32(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %38
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
