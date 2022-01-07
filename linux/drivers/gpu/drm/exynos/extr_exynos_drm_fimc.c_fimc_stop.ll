; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@EXYNOS_MSCTRL = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_INPUT_MASK = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_ENVID = common dso_local global i32 0, align 4
@EXYNOS_CIFCNTSEQ = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_SCALERSTART = common dso_local global i32 0, align 4
@EXYNOS_CIIMGCPT = common dso_local global i32 0, align 4
@EXYNOS_CIIMGCPT_IMGCPTEN_SC = common dso_local global i32 0, align 4
@EXYNOS_CIIMGCPT_IMGCPTEN = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_IRQ_END_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*)* @fimc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_stop(%struct.fimc_context* %0) #0 {
  %2 = alloca %struct.fimc_context*, align 8
  %3 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %2, align 8
  %4 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %5 = load i32, i32* @EXYNOS_MSCTRL, align 4
  %6 = call i32 @fimc_read(%struct.fimc_context* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @EXYNOS_MSCTRL_INPUT_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @EXYNOS_MSCTRL_ENVID, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @EXYNOS_MSCTRL, align 4
  %18 = call i32 @fimc_write(%struct.fimc_context* %15, i32 %16, i32 %17)
  %19 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %20 = call i32 @fimc_mask_irq(%struct.fimc_context* %19, i32 0)
  %21 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %22 = load i32, i32* @EXYNOS_CIFCNTSEQ, align 4
  %23 = call i32 @fimc_write(%struct.fimc_context* %21, i32 0, i32 %22)
  %24 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %25 = load i32, i32* @EXYNOS_CISCCTRL, align 4
  %26 = load i32, i32* @EXYNOS_CISCCTRL_SCALERSTART, align 4
  %27 = call i32 @fimc_clear_bits(%struct.fimc_context* %24, i32 %25, i32 %26)
  %28 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %29 = load i32, i32* @EXYNOS_CIIMGCPT, align 4
  %30 = load i32, i32* @EXYNOS_CIIMGCPT_IMGCPTEN_SC, align 4
  %31 = load i32, i32* @EXYNOS_CIIMGCPT_IMGCPTEN, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @fimc_clear_bits(%struct.fimc_context* %28, i32 %29, i32 %32)
  %34 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %35 = load i32, i32* @EXYNOS_CIGCTRL, align 4
  %36 = load i32, i32* @EXYNOS_CIGCTRL_IRQ_END_DISABLE, align 4
  %37 = call i32 @fimc_set_bits(%struct.fimc_context* %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @fimc_mask_irq(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_clear_bits(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @fimc_set_bits(%struct.fimc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
