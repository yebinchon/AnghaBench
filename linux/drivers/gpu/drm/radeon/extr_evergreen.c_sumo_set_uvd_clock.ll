; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_sumo_set_uvd_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_sumo_set_uvd_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.atom_clock_dividers = type { i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@DCLK_DIR_CNTL_EN = common dso_local global i32 0, align 4
@DCLK_DIVIDER_MASK = common dso_local global i32 0, align 4
@DCLK_STATUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, i32)* @sumo_set_uvd_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sumo_set_uvd_clock(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.atom_clock_dividers, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %14 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %13, i32 %14, i32 %15, i32 0, %struct.atom_clock_dividers* %12)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %5, align 4
  br label %52

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %12, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DCLK_DIR_CNTL_EN, align 4
  %26 = load i32, i32* @DCLK_DIVIDER_MASK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = call i32 @WREG32_P(i32 %22, i32 %24, i32 %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %42, %21
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 100
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @RREG32(i32 %34)
  %36 = load i32, i32* @DCLK_STATUS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %45

40:                                               ; preds = %33
  %41 = call i32 @mdelay(i32 10)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %30

45:                                               ; preds = %39, %30
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 100
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @ETIMEDOUT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %48, %19
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
