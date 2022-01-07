; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_set_uvd_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_set_uvd_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_clock_dividers = type { i32 }

@COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK = common dso_local global i32 0, align 4
@DCLK_DIR_CNTL_EN = common dso_local global i32 0, align 4
@DCLK_DIVIDER_MASK = common dso_local global i32 0, align 4
@DCLK_STATUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, i32)* @cik_set_uvd_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_set_uvd_clock(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.atom_clock_dividers, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %15 = load i32, i32* @COMPUTE_GPUCLK_INPUT_FLAG_DEFAULT_GPUCLK, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %14, i32 %15, i32 %16, i32 0, %struct.atom_clock_dividers* %12)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %60

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @RREG32_SMC(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @DCLK_DIR_CNTL_EN, align 4
  %26 = load i32, i32* @DCLK_DIVIDER_MASK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %13, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %13, align 4
  %31 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @WREG32_SMC(i32 %35, i32 %36)
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %50, %22
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 100
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @RREG32_SMC(i32 %42)
  %44 = load i32, i32* @DCLK_STATUS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %53

48:                                               ; preds = %41
  %49 = call i32 @mdelay(i32 10)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %38

53:                                               ; preds = %47, %38
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 100
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %60

59:                                               ; preds = %53
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %56, %20
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @RREG32_SMC(i32) #1

declare dso_local i32 @WREG32_SMC(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
