; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_disable_ss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_atombios_crtc.c_atombios_disable_ss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@EVERGREEN_P1PLL_SS_CNTL = common dso_local global i32 0, align 4
@EVERGREEN_PxPLL_SS_EN = common dso_local global i32 0, align 4
@EVERGREEN_P2PLL_SS_CNTL = common dso_local global i32 0, align 4
@AVIVO_P1PLL_INT_SS_CNTL = common dso_local global i32 0, align 4
@AVIVO_P2PLL_INT_SS_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @atombios_disable_ss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atombios_disable_ss(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %32 [
    i32 130, label %11
    i32 129, label %21
    i32 131, label %31
    i32 128, label %31
  ]

11:                                               ; preds = %9
  %12 = load i32, i32* @EVERGREEN_P1PLL_SS_CNTL, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @EVERGREEN_PxPLL_SS_EN, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @EVERGREEN_P1PLL_SS_CNTL, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @WREG32(i32 %18, i32 %19)
  br label %32

21:                                               ; preds = %9
  %22 = load i32, i32* @EVERGREEN_P2PLL_SS_CNTL, align 4
  %23 = call i32 @RREG32(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @EVERGREEN_PxPLL_SS_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @EVERGREEN_P2PLL_SS_CNTL, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @WREG32(i32 %28, i32 %29)
  br label %32

31:                                               ; preds = %9, %9
  br label %58

32:                                               ; preds = %9, %21, %11
  br label %58

33:                                               ; preds = %2
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %33
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %56 [
    i32 130, label %39
    i32 129, label %47
    i32 131, label %55
    i32 128, label %55
  ]

39:                                               ; preds = %37
  %40 = load i32, i32* @AVIVO_P1PLL_INT_SS_CNTL, align 4
  %41 = call i32 @RREG32(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, -2
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @AVIVO_P1PLL_INT_SS_CNTL, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @WREG32(i32 %44, i32 %45)
  br label %56

47:                                               ; preds = %37
  %48 = load i32, i32* @AVIVO_P2PLL_INT_SS_CNTL, align 4
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, -2
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* @AVIVO_P2PLL_INT_SS_CNTL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @WREG32(i32 %52, i32 %53)
  br label %56

55:                                               ; preds = %37, %37
  br label %58

56:                                               ; preds = %37, %47, %39
  br label %57

57:                                               ; preds = %56, %33
  br label %58

58:                                               ; preds = %31, %55, %57, %32
  ret void
}

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
