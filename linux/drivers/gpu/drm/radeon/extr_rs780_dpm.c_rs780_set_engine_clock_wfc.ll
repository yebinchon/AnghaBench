; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_set_engine_clock_wfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_set_engine_clock_wfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@FVTHROT_UTC0 = common dso_local global i32 0, align 4
@RS780_FVTHROTUTC0_DFLT = common dso_local global i32 0, align 4
@FVTHROT_UTC1 = common dso_local global i32 0, align 4
@RS780_FVTHROTUTC1_DFLT = common dso_local global i32 0, align 4
@FVTHROT_UTC2 = common dso_local global i32 0, align 4
@RS780_FVTHROTUTC2_DFLT = common dso_local global i32 0, align 4
@FVTHROT_UTC3 = common dso_local global i32 0, align 4
@RS780_FVTHROTUTC3_DFLT = common dso_local global i32 0, align 4
@FVTHROT_UTC4 = common dso_local global i32 0, align 4
@RS780_FVTHROTUTC4_DFLT = common dso_local global i32 0, align 4
@FVTHROT_DTC0 = common dso_local global i32 0, align 4
@RS780_FVTHROTDTC0_DFLT = common dso_local global i32 0, align 4
@FVTHROT_DTC1 = common dso_local global i32 0, align 4
@RS780_FVTHROTDTC1_DFLT = common dso_local global i32 0, align 4
@FVTHROT_DTC2 = common dso_local global i32 0, align 4
@RS780_FVTHROTDTC2_DFLT = common dso_local global i32 0, align 4
@FVTHROT_DTC3 = common dso_local global i32 0, align 4
@RS780_FVTHROTDTC3_DFLT = common dso_local global i32 0, align 4
@FVTHROT_DTC4 = common dso_local global i32 0, align 4
@RS780_FVTHROTDTC4_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rs780_set_engine_clock_wfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_set_engine_clock_wfc(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %3 = load i32, i32* @FVTHROT_UTC0, align 4
  %4 = load i32, i32* @RS780_FVTHROTUTC0_DFLT, align 4
  %5 = call i32 @WREG32(i32 %3, i32 %4)
  %6 = load i32, i32* @FVTHROT_UTC1, align 4
  %7 = load i32, i32* @RS780_FVTHROTUTC1_DFLT, align 4
  %8 = call i32 @WREG32(i32 %6, i32 %7)
  %9 = load i32, i32* @FVTHROT_UTC2, align 4
  %10 = load i32, i32* @RS780_FVTHROTUTC2_DFLT, align 4
  %11 = call i32 @WREG32(i32 %9, i32 %10)
  %12 = load i32, i32* @FVTHROT_UTC3, align 4
  %13 = load i32, i32* @RS780_FVTHROTUTC3_DFLT, align 4
  %14 = call i32 @WREG32(i32 %12, i32 %13)
  %15 = load i32, i32* @FVTHROT_UTC4, align 4
  %16 = load i32, i32* @RS780_FVTHROTUTC4_DFLT, align 4
  %17 = call i32 @WREG32(i32 %15, i32 %16)
  %18 = load i32, i32* @FVTHROT_DTC0, align 4
  %19 = load i32, i32* @RS780_FVTHROTDTC0_DFLT, align 4
  %20 = call i32 @WREG32(i32 %18, i32 %19)
  %21 = load i32, i32* @FVTHROT_DTC1, align 4
  %22 = load i32, i32* @RS780_FVTHROTDTC1_DFLT, align 4
  %23 = call i32 @WREG32(i32 %21, i32 %22)
  %24 = load i32, i32* @FVTHROT_DTC2, align 4
  %25 = load i32, i32* @RS780_FVTHROTDTC2_DFLT, align 4
  %26 = call i32 @WREG32(i32 %24, i32 %25)
  %27 = load i32, i32* @FVTHROT_DTC3, align 4
  %28 = load i32, i32* @RS780_FVTHROTDTC3_DFLT, align 4
  %29 = call i32 @WREG32(i32 %27, i32 %28)
  %30 = load i32, i32* @FVTHROT_DTC4, align 4
  %31 = load i32, i32* @RS780_FVTHROTDTC4_DFLT, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
