; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_perfcntr_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_perfcntr_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msm_gpu_perfcntr_start(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca i64, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %4 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %5 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %4, i32 0, i32 5
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_get_sync(i32* %7)
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %10 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %9, i32 0, i32 1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %14 = call i32 @msm_gpu_active(%struct.msm_gpu* %13)
  %15 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %16 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = call i32 (...) @ktime_get()
  %19 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %20 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %23 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %25 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %27 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %29 = call i32 @update_hw_cntrs(%struct.msm_gpu* %28, i32 0, i32* null)
  %30 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %31 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %30, i32 0, i32 1
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @msm_gpu_active(%struct.msm_gpu*) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @update_hw_cntrs(%struct.msm_gpu*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
