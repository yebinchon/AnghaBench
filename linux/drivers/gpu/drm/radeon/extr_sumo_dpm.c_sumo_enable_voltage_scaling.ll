; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_enable_voltage_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_enable_voltage_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_DPM_VOLTAGE_CNTL = common dso_local global i32 0, align 4
@DPM_VOLTAGE_EN = common dso_local global i32 0, align 4
@CG_CG_VOLTAGE_CNTL = common dso_local global i32 0, align 4
@CG_VOLTAGE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @sumo_enable_voltage_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_enable_voltage_scaling(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i32, i32* @CG_DPM_VOLTAGE_CNTL, align 4
  %9 = load i32, i32* @DPM_VOLTAGE_EN, align 4
  %10 = load i32, i32* @DPM_VOLTAGE_EN, align 4
  %11 = xor i32 %10, -1
  %12 = call i32 @WREG32_P(i32 %8, i32 %9, i32 %11)
  %13 = load i32, i32* @CG_CG_VOLTAGE_CNTL, align 4
  %14 = load i32, i32* @CG_VOLTAGE_EN, align 4
  %15 = xor i32 %14, -1
  %16 = call i32 @WREG32_P(i32 %13, i32 0, i32 %15)
  br label %27

17:                                               ; preds = %2
  %18 = load i32, i32* @CG_CG_VOLTAGE_CNTL, align 4
  %19 = load i32, i32* @CG_VOLTAGE_EN, align 4
  %20 = load i32, i32* @CG_VOLTAGE_EN, align 4
  %21 = xor i32 %20, -1
  %22 = call i32 @WREG32_P(i32 %18, i32 %19, i32 %21)
  %23 = load i32, i32* @CG_DPM_VOLTAGE_CNTL, align 4
  %24 = load i32, i32* @DPM_VOLTAGE_EN, align 4
  %25 = xor i32 %24, -1
  %26 = call i32 @WREG32_P(i32 %23, i32 0, i32 %25)
  br label %27

27:                                               ; preds = %17, %7
  ret void
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
