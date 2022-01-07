; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32 }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gpu*)* @a5xx_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a5xx_destroy(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a5xx_gpu*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %6 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %5)
  store %struct.adreno_gpu* %6, %struct.adreno_gpu** %3, align 8
  %7 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %8 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %7)
  store %struct.a5xx_gpu* %8, %struct.a5xx_gpu** %4, align 8
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %10 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %14 = call i32 @a5xx_preempt_fini(%struct.msm_gpu* %13)
  %15 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %16 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %21 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %24 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @msm_gem_unpin_iova(i64 %22, i32 %25)
  %27 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %28 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @drm_gem_object_put_unlocked(i64 %29)
  br label %31

31:                                               ; preds = %19, %1
  %32 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %33 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %38 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %41 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @msm_gem_unpin_iova(i64 %39, i32 %42)
  %44 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %45 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @drm_gem_object_put_unlocked(i64 %46)
  br label %48

48:                                               ; preds = %36, %31
  %49 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %50 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %55 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %58 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @msm_gem_unpin_iova(i64 %56, i32 %59)
  %61 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %62 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @drm_gem_object_put_unlocked(i64 %63)
  br label %65

65:                                               ; preds = %53, %48
  %66 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %67 = call i32 @adreno_gpu_cleanup(%struct.adreno_gpu* %66)
  %68 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %69 = call i32 @kfree(%struct.a5xx_gpu* %68)
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @a5xx_preempt_fini(%struct.msm_gpu*) #1

declare dso_local i32 @msm_gem_unpin_iova(i64, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i64) #1

declare dso_local i32 @adreno_gpu_cleanup(%struct.adreno_gpu*) #1

declare dso_local i32 @kfree(%struct.a5xx_gpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
