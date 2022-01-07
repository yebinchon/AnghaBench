; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_mic = type { i64 }

@MIC_SW_RST = common dso_local global i32 0, align 4
@MIC_OP = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_mic*)* @mic_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_sw_reset(%struct.exynos_mic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_mic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.exynos_mic* %0, %struct.exynos_mic** %3, align 8
  store i32 100, i32* %4, align 4
  %6 = load i32, i32* @MIC_SW_RST, align 4
  %7 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %8 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MIC_OP, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  br label %13

13:                                               ; preds = %29, %1
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %14, -1
  store i32 %15, i32* %4, align 4
  %16 = icmp ugt i32 %14, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %19 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MIC_OP, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MIC_SW_RST, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %34

29:                                               ; preds = %17
  %30 = call i32 @udelay(i32 10)
  br label %13

31:                                               ; preds = %13
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
