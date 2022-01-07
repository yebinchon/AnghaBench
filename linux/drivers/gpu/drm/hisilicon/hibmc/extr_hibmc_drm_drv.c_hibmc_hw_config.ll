; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_drv.c_hibmc_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hibmc_drm_private = type { i64 }

@HIBMC_PW_MODE_CTL_MODE_MODE0 = common dso_local global i32 0, align 4
@HIBMC_CURRENT_GATE = common dso_local global i64 0, align 8
@HIBMC_CURR_GATE_DISPLAY_MASK = common dso_local global i32 0, align 4
@HIBMC_CURR_GATE_LOCALMEM_MASK = common dso_local global i32 0, align 4
@HIBMC_MISC_CTRL = common dso_local global i64 0, align 8
@HIBMC_MSCCTL_LOCALMEM_RESET_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hibmc_drm_private*)* @hibmc_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hibmc_hw_config(%struct.hibmc_drm_private* %0) #0 {
  %2 = alloca %struct.hibmc_drm_private*, align 8
  %3 = alloca i32, align 4
  store %struct.hibmc_drm_private* %0, %struct.hibmc_drm_private** %2, align 8
  %4 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %2, align 8
  %5 = load i32, i32* @HIBMC_PW_MODE_CTL_MODE_MODE0, align 4
  %6 = call i32 @hibmc_set_power_mode(%struct.hibmc_drm_private* %4, i32 %5)
  %7 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %2, align 8
  %8 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @HIBMC_CURRENT_GATE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @HIBMC_CURR_GATE_DISPLAY_MASK, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %3, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @HIBMC_CURR_GATE_LOCALMEM_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = call i32 @HIBMC_CURR_GATE_DISPLAY(i32 1)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = call i32 @HIBMC_CURR_GATE_LOCALMEM(i32 1)
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @hibmc_set_current_gate(%struct.hibmc_drm_private* %27, i32 %28)
  %30 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %2, align 8
  %31 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @HIBMC_MISC_CTRL, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @HIBMC_MSCCTL_LOCALMEM_RESET_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = call i32 @HIBMC_MSCCTL_LOCALMEM_RESET(i32 0)
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %2, align 8
  %45 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HIBMC_MISC_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load i32, i32* @HIBMC_MSCCTL_LOCALMEM_RESET_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = call i32 @HIBMC_MSCCTL_LOCALMEM_RESET(i32 1)
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %2, align 8
  %59 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @HIBMC_MISC_CTRL, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  ret void
}

declare dso_local i32 @hibmc_set_power_mode(%struct.hibmc_drm_private*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @HIBMC_CURR_GATE_DISPLAY(i32) #1

declare dso_local i32 @HIBMC_CURR_GATE_LOCALMEM(i32) #1

declare dso_local i32 @hibmc_set_current_gate(%struct.hibmc_drm_private*, i32) #1

declare dso_local i32 @HIBMC_MSCCTL_LOCALMEM_RESET(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
