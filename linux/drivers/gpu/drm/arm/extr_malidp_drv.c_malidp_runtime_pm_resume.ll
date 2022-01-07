; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_runtime_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_runtime_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.drm_device = type { %struct.malidp_drm* }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @malidp_runtime_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_runtime_pm_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.malidp_drm*, align 8
  %5 = alloca %struct.malidp_hw_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %6)
  store %struct.drm_device* %7, %struct.drm_device** %3, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load %struct.malidp_drm*, %struct.malidp_drm** %9, align 8
  store %struct.malidp_drm* %10, %struct.malidp_drm** %4, align 8
  %11 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %12 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %11, i32 0, i32 0
  %13 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %12, align 8
  store %struct.malidp_hw_device* %13, %struct.malidp_hw_device** %5, align 8
  %14 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %15 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_prepare_enable(i32 %16)
  %18 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %19 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_prepare_enable(i32 %20)
  %22 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %23 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_prepare_enable(i32 %24)
  %26 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %27 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %29 = call i32 @malidp_de_irq_hw_init(%struct.malidp_hw_device* %28)
  %30 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %5, align 8
  %31 = call i32 @malidp_se_irq_hw_init(%struct.malidp_hw_device* %30)
  ret i32 0
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @malidp_de_irq_hw_init(%struct.malidp_hw_device*) #1

declare dso_local i32 @malidp_se_irq_hw_init(%struct.malidp_hw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
