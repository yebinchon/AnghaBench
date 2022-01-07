; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_set_type_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_set_type_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@EXYNOS_CIGCTRL = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_TESTPATTERN_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_SELCAM_ITU_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_SELCAM_MIPI_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_SELCAM_FIMC_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_SELWB_CAMIF_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_SELWRITEBACK_MASK = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_SELCAM_ITU_A = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_SELWRITEBACK_A = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_SELCAM_MIPI_A = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_SELCAM_FIMC_ITU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*)* @fimc_set_type_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_set_type_ctrl(%struct.fimc_context* %0) #0 {
  %2 = alloca %struct.fimc_context*, align 8
  %3 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %2, align 8
  %4 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %5 = load i32, i32* @EXYNOS_CIGCTRL, align 4
  %6 = call i32 @fimc_read(%struct.fimc_context* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @EXYNOS_CIGCTRL_TESTPATTERN_MASK, align 4
  %8 = load i32, i32* @EXYNOS_CIGCTRL_SELCAM_ITU_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @EXYNOS_CIGCTRL_SELCAM_MIPI_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @EXYNOS_CIGCTRL_SELCAM_FIMC_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @EXYNOS_CIGCTRL_SELWB_CAMIF_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @EXYNOS_CIGCTRL_SELWRITEBACK_MASK, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @EXYNOS_CIGCTRL_SELCAM_ITU_A, align 4
  %22 = load i32, i32* @EXYNOS_CIGCTRL_SELWRITEBACK_A, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @EXYNOS_CIGCTRL_SELCAM_MIPI_A, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @EXYNOS_CIGCTRL_SELCAM_FIMC_ITU, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @EXYNOS_CIGCTRL, align 4
  %33 = call i32 @fimc_write(%struct.fimc_context* %30, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
