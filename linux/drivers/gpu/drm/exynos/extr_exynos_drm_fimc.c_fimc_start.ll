; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@EXYNOS_MSCTRL = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_INPUT_MASK = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_INPUT_MEMORY = common dso_local global i32 0, align 4
@EXYNOS_CISTATUS = common dso_local global i32 0, align 4
@EXYNOS_CIIMGCPT = common dso_local global i32 0, align 4
@EXYNOS_CIIMGCPT_IMGCPTEN_SC = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_SCAN_MASK = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_PROGRESSIVE = common dso_local global i32 0, align 4
@EXYNOS_CISCCTRL_SCALERSTART = common dso_local global i32 0, align 4
@EXYNOS_CIIMGCPT_IMGCPTEN = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL = common dso_local global i32 0, align 4
@EXYNOS_CIGCTRL_IRQ_END_DISABLE = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL = common dso_local global i32 0, align 4
@EXYNOS_CIOCTRL_WEAVE_MASK = common dso_local global i32 0, align 4
@EXYNOS_MSCTRL_ENVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_context*)* @fimc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_start(%struct.fimc_context* %0) #0 {
  %2 = alloca %struct.fimc_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %2, align 8
  %5 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %6 = call i32 @fimc_mask_irq(%struct.fimc_context* %5, i32 1)
  %7 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %8 = call i32 @fimc_handle_jpeg(%struct.fimc_context* %7, i32 0)
  %9 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %10 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %11 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %10, i32 0, i32 0
  %12 = call i32 @fimc_set_scaler(%struct.fimc_context* %9, i32* %11)
  %13 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %14 = call i32 @fimc_set_type_ctrl(%struct.fimc_context* %13)
  %15 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %16 = call i32 @fimc_handle_lastend(%struct.fimc_context* %15, i32 0)
  %17 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %18 = load i32, i32* @EXYNOS_MSCTRL, align 4
  %19 = call i32 @fimc_read(%struct.fimc_context* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @EXYNOS_MSCTRL_INPUT_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @EXYNOS_MSCTRL_INPUT_MEMORY, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @EXYNOS_MSCTRL, align 4
  %30 = call i32 @fimc_write(%struct.fimc_context* %27, i32 %28, i32 %29)
  %31 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %32 = load i32, i32* @EXYNOS_CISTATUS, align 4
  %33 = call i32 @fimc_write(%struct.fimc_context* %31, i32 0, i32 %32)
  %34 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %35 = load i32, i32* @EXYNOS_CIIMGCPT, align 4
  %36 = call i32 @fimc_read(%struct.fimc_context* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @EXYNOS_CIIMGCPT_IMGCPTEN_SC, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @EXYNOS_CIIMGCPT_IMGCPTEN_SC, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %45 = load i32, i32* @EXYNOS_CISCCTRL, align 4
  %46 = call i32 @fimc_read(%struct.fimc_context* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* @EXYNOS_CISCCTRL_SCAN_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @EXYNOS_CISCCTRL_PROGRESSIVE, align 4
  %52 = load i32, i32* @EXYNOS_CISCCTRL_SCALERSTART, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @EXYNOS_CISCCTRL, align 4
  %59 = call i32 @fimc_write(%struct.fimc_context* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @EXYNOS_CIIMGCPT_IMGCPTEN, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @EXYNOS_CIIMGCPT, align 4
  %66 = call i32 @fimc_write(%struct.fimc_context* %63, i32 %64, i32 %65)
  %67 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %68 = load i32, i32* @EXYNOS_CIGCTRL, align 4
  %69 = load i32, i32* @EXYNOS_CIGCTRL_IRQ_END_DISABLE, align 4
  %70 = call i32 @fimc_clear_bits(%struct.fimc_context* %67, i32 %68, i32 %69)
  %71 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %72 = load i32, i32* @EXYNOS_CIOCTRL, align 4
  %73 = load i32, i32* @EXYNOS_CIOCTRL_WEAVE_MASK, align 4
  %74 = call i32 @fimc_clear_bits(%struct.fimc_context* %71, i32 %72, i32 %73)
  %75 = load %struct.fimc_context*, %struct.fimc_context** %2, align 8
  %76 = load i32, i32* @EXYNOS_MSCTRL, align 4
  %77 = load i32, i32* @EXYNOS_MSCTRL_ENVID, align 4
  %78 = call i32 @fimc_set_bits(%struct.fimc_context* %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @fimc_mask_irq(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_handle_jpeg(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_set_scaler(%struct.fimc_context*, i32*) #1

declare dso_local i32 @fimc_set_type_ctrl(%struct.fimc_context*) #1

declare dso_local i32 @fimc_handle_lastend(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @fimc_write(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @fimc_clear_bits(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @fimc_set_bits(%struct.fimc_context*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
