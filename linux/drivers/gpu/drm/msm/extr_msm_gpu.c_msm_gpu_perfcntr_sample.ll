; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_perfcntr_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_gpu_perfcntr_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msm_gpu_perfcntr_sample(%struct.msm_gpu* %0, i64* %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.msm_gpu*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %14 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %13, i32 0, i32 0
  %15 = load i64, i64* %11, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %18 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %12, align 4
  br label %41

24:                                               ; preds = %5
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %26 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %7, align 8
  store i64 %27, i64* %28, align 8
  %29 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %30 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %8, align 8
  store i64 %31, i64* %32, align 8
  %33 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %34 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %36 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = call i32 @update_hw_cntrs(%struct.msm_gpu* %37, i64 %38, i64* %39)
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %24, %21
  %42 = load %struct.msm_gpu*, %struct.msm_gpu** %6, align 8
  %43 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %42, i32 0, i32 0
  %44 = load i64, i64* %11, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %12, align 4
  ret i32 %46
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_hw_cntrs(%struct.msm_gpu*, i64, i64*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
