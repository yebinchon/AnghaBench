; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decon_context = type { i64, i32 }

@VIDCON0_SWRESET = common dso_local global i32 0, align 4
@VIDCON0 = common dso_local global i64 0, align 8
@VIDOUTCON0_DISP_IF_0_ON = common dso_local global i32 0, align 4
@VIDOUTCON0_RGBIF = common dso_local global i32 0, align 4
@VIDOUTCON0 = common dso_local global i64 0, align 8
@VCLKCON0_CLKVALUP = common dso_local global i32 0, align 4
@VCLKCON0_VCLKFREE = common dso_local global i32 0, align 4
@VCLKCON0 = common dso_local global i64 0, align 8
@VIDCON1_VCLK_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decon_context*)* @decon_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_init(%struct.decon_context* %0) #0 {
  %2 = alloca %struct.decon_context*, align 8
  %3 = alloca i32, align 4
  store %struct.decon_context* %0, %struct.decon_context** %2, align 8
  %4 = load i32, i32* @VIDCON0_SWRESET, align 4
  %5 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %6 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VIDCON0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 %4, i64 %9)
  %11 = load i32, i32* @VIDOUTCON0_DISP_IF_0_ON, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %13 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @VIDOUTCON0_RGBIF, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %23 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VIDOUTCON0, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load i32, i32* @VCLKCON0_CLKVALUP, align 4
  %29 = load i32, i32* @VCLKCON0_VCLKFREE, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %32 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VCLKCON0, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %38 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %20
  %42 = load i32, i32* @VIDCON1_VCLK_HOLD, align 4
  %43 = load %struct.decon_context*, %struct.decon_context** %2, align 8
  %44 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @VIDCON1(i32 0)
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  br label %49

49:                                               ; preds = %41, %20
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @VIDCON1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
