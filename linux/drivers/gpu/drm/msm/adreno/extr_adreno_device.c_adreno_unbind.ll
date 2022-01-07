; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_adreno_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_device.c_adreno_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.msm_gpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.msm_gpu*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @adreno_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adreno_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.msm_gpu*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.msm_gpu* @dev_get_drvdata(%struct.device* %8)
  store %struct.msm_gpu* %9, %struct.msm_gpu** %7, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @pm_runtime_force_suspend(%struct.device* %10)
  %12 = load %struct.msm_gpu*, %struct.msm_gpu** %7, align 8
  %13 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.msm_gpu*)*, i32 (%struct.msm_gpu*)** %15, align 8
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %7, align 8
  %18 = call i32 %16(%struct.msm_gpu* %17)
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.msm_gpu* @dev_get_drvdata(%struct.device* %19)
  %21 = call i32 @set_gpu_pdev(%struct.msm_gpu* %20, i32* null)
  ret void
}

declare dso_local %struct.msm_gpu* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @pm_runtime_force_suspend(%struct.device*) #1

declare dso_local i32 @set_gpu_pdev(%struct.msm_gpu*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
