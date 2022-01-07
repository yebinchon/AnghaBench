; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_preempt.c_a5xx_preempt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, i32* }
%struct.adreno_gpu = type { i32 }
%struct.a5xx_gpu = type { i32 }

@a5xx_preempt_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @a5xx_preempt_init(%struct.msm_gpu* %0) #0 {
  %2 = alloca %struct.msm_gpu*, align 8
  %3 = alloca %struct.adreno_gpu*, align 8
  %4 = alloca %struct.a5xx_gpu*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %2, align 8
  %6 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %7 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %6)
  store %struct.adreno_gpu* %7, %struct.adreno_gpu** %3, align 8
  %8 = load %struct.adreno_gpu*, %struct.adreno_gpu** %3, align 8
  %9 = call %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu* %8)
  store %struct.a5xx_gpu* %9, %struct.a5xx_gpu** %4, align 8
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %11 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %47

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %39, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %19 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %16
  %23 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %24 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %25 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @preempt_init_ring(%struct.a5xx_gpu* %23, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %35 = call i32 @a5xx_preempt_fini(%struct.msm_gpu* %34)
  %36 = load %struct.msm_gpu*, %struct.msm_gpu** %2, align 8
  %37 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %47

38:                                               ; preds = %22
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load %struct.a5xx_gpu*, %struct.a5xx_gpu** %4, align 8
  %44 = getelementptr inbounds %struct.a5xx_gpu, %struct.a5xx_gpu* %43, i32 0, i32 0
  %45 = load i32, i32* @a5xx_preempt_timer, align 4
  %46 = call i32 @timer_setup(i32* %44, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %42, %33, %14
  ret void
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a5xx_gpu* @to_a5xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i64 @preempt_init_ring(%struct.a5xx_gpu*, i32) #1

declare dso_local i32 @a5xx_preempt_fini(%struct.msm_gpu*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
