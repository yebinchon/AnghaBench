; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_fence_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem_submit.c_submit_fence_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_submit = type { i32, %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.msm_gem_object* }
%struct.msm_gem_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MSM_SUBMIT_BO_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gem_submit*, i32)* @submit_fence_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_fence_sync(%struct.msm_gem_submit* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_gem_submit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_gem_object*, align 8
  %9 = alloca i32, align 4
  store %struct.msm_gem_submit* %0, %struct.msm_gem_submit** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %66, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %13 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %69

16:                                               ; preds = %10
  %17 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %18 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %17, i32 0, i32 2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.msm_gem_object*, %struct.msm_gem_object** %23, align 8
  store %struct.msm_gem_object* %24, %struct.msm_gem_object** %8, align 8
  %25 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %26 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MSM_SUBMIT_BO_WRITE, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %16
  %38 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %39 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dma_resv_reserve_shared(i32 %41, i32 1)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %71

47:                                               ; preds = %37
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %66

52:                                               ; preds = %48
  %53 = load %struct.msm_gem_object*, %struct.msm_gem_object** %8, align 8
  %54 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %53, i32 0, i32 0
  %55 = load %struct.msm_gem_submit*, %struct.msm_gem_submit** %4, align 8
  %56 = getelementptr inbounds %struct.msm_gem_submit, %struct.msm_gem_submit* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @msm_gem_sync_object(%struct.TYPE_6__* %54, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %69

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %10

69:                                               ; preds = %64, %10
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %45
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @dma_resv_reserve_shared(i32, i32) #1

declare dso_local i32 @msm_gem_sync_object(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
