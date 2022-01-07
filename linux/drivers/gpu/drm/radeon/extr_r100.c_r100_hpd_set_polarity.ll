; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_hpd_set_polarity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_hpd_set_polarity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_FP_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_FP_DETECT_INT_POL = common dso_local global i32 0, align 4
@RADEON_FP2_GEN_CNTL = common dso_local global i32 0, align 4
@RADEON_FP2_DETECT_INT_POL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r100_hpd_set_polarity(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @r100_hpd_sense(%struct.radeon_device* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %47 [
    i32 129, label %11
    i32 128, label %29
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @RADEON_FP_GEN_CNTL, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* @RADEON_FP_DETECT_INT_POL, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %25

21:                                               ; preds = %11
  %22 = load i32, i32* @RADEON_FP_DETECT_INT_POL, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* @RADEON_FP_GEN_CNTL, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @WREG32(i32 %26, i32 %27)
  br label %48

29:                                               ; preds = %2
  %30 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @RADEON_FP2_DETECT_INT_POL, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load i32, i32* @RADEON_FP2_DETECT_INT_POL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @RADEON_FP2_GEN_CNTL, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @WREG32(i32 %44, i32 %45)
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %43, %25
  ret void
}

declare dso_local i32 @r100_hpd_sense(%struct.radeon_device*, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
