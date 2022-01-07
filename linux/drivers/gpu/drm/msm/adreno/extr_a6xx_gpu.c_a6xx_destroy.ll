; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu.c_a6xx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a6xx_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a6xx_destroy(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a6xx_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %6 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %5)
  store %struct.adreno_gpu* %6, %struct.adreno_gpu** %3, align 8
  %7 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %8 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %7)
  store %struct.a6xx_gpu* %8, %struct.a6xx_gpu** %4, align 8
  %9 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %4, align 8
  %10 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %4, align 8
  %15 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %18 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @msm_gem_unpin_iova(i64 %16, i32 %19)
  %21 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %4, align 8
  %22 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @drm_gem_object_put_unlocked(i64 %23)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %4, align 8
  %27 = call i32 @a6xx_gmu_remove(%struct.a6xx_gpu* %26)
  %28 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %29 = call i32 @adreno_gpu_cleanup(%struct.adreno_gpu* %28)
  %30 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %4, align 8
  %31 = call i32 @kfree(%struct.a6xx_gpu* %30)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @msm_gem_unpin_iova(i64, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i64) #1

declare dso_local i32 @a6xx_gmu_remove(%struct.a6xx_gpu*) #1

declare dso_local i32 @adreno_gpu_cleanup(%struct.adreno_gpu*) #1

declare dso_local i32 @kfree(%struct.a6xx_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
