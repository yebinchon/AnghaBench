; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_reg_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_mic.c_mic_set_reg_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_mic = type { i64, i64 }

@MIC_OP = common dso_local global i64 0, align 8
@MIC_MODE_SEL_MASK = common dso_local global i32 0, align 4
@MIC_CORE_VER_CONTROL = common dso_local global i32 0, align 4
@MIC_PSR_EN = common dso_local global i32 0, align 4
@MIC_CORE_EN = common dso_local global i32 0, align 4
@MIC_BS_CHG_OUT = common dso_local global i32 0, align 4
@MIC_ON_REG = common dso_local global i32 0, align 4
@MIC_MODE_SEL_COMMAND_MODE = common dso_local global i32 0, align 4
@MIC_UPD_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_mic*, i32)* @mic_set_reg_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mic_set_reg_on(%struct.exynos_mic* %0, i32 %1) #0 {
  %3 = alloca %struct.exynos_mic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.exynos_mic* %0, %struct.exynos_mic** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MIC_OP, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load i32, i32* @MIC_MODE_SEL_MASK, align 4
  %16 = load i32, i32* @MIC_CORE_VER_CONTROL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MIC_PSR_EN, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @MIC_CORE_EN, align 4
  %24 = load i32, i32* @MIC_BS_CHG_OUT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MIC_ON_REG, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @MIC_MODE_SEL_COMMAND_MODE, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %35 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %14
  %39 = load i32, i32* @MIC_MODE_SEL_COMMAND_MODE, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %14
  br label %48

43:                                               ; preds = %2
  %44 = load i32, i32* @MIC_CORE_EN, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %43, %42
  %49 = load i32, i32* @MIC_UPD_REG, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.exynos_mic*, %struct.exynos_mic** %3, align 8
  %54 = getelementptr inbounds %struct.exynos_mic, %struct.exynos_mic* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MIC_OP, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
