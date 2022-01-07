; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_dependency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_sched.c_etnaviv_sched_dependency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { i32 }
%struct.drm_sched_entity = type { i32 }
%struct.etnaviv_gem_submit = type { i32, %struct.etnaviv_gem_submit_bo*, %struct.dma_fence* }
%struct.etnaviv_gem_submit_bo = type { i32, %struct.dma_fence**, %struct.dma_fence* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*, %struct.drm_sched_entity*)* @etnaviv_sched_dependency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @etnaviv_sched_dependency(%struct.drm_sched_job* %0, %struct.drm_sched_entity* %1) #0 {
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.drm_sched_job*, align 8
  %5 = alloca %struct.drm_sched_entity*, align 8
  %6 = alloca %struct.etnaviv_gem_submit*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.etnaviv_gem_submit_bo*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %4, align 8
  store %struct.drm_sched_entity* %1, %struct.drm_sched_entity** %5, align 8
  %11 = load %struct.drm_sched_job*, %struct.drm_sched_job** %4, align 8
  %12 = call %struct.etnaviv_gem_submit* @to_etnaviv_submit(%struct.drm_sched_job* %11)
  store %struct.etnaviv_gem_submit* %12, %struct.etnaviv_gem_submit** %6, align 8
  %13 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %6, align 8
  %14 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %13, i32 0, i32 2
  %15 = load %struct.dma_fence*, %struct.dma_fence** %14, align 8
  %16 = call i64 @unlikely(%struct.dma_fence* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %6, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %19, i32 0, i32 2
  %21 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8
  store %struct.dma_fence* %21, %struct.dma_fence** %7, align 8
  %22 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %6, align 8
  %23 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %22, i32 0, i32 2
  store %struct.dma_fence* null, %struct.dma_fence** %23, align 8
  %24 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %25 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %28, %struct.dma_fence** %3, align 8
  br label %119

29:                                               ; preds = %18
  %30 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %31 = call i32 @dma_fence_put(%struct.dma_fence* %30)
  br label %32

32:                                               ; preds = %29, %2
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %115, %32
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %6, align 8
  %36 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %118

39:                                               ; preds = %33
  %40 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %6, align 8
  %41 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %40, i32 0, i32 1
  %42 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %42, i64 %44
  store %struct.etnaviv_gem_submit_bo* %45, %struct.etnaviv_gem_submit_bo** %9, align 8
  %46 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %47 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %46, i32 0, i32 2
  %48 = load %struct.dma_fence*, %struct.dma_fence** %47, align 8
  %49 = icmp ne %struct.dma_fence* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %39
  %51 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %52 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %51, i32 0, i32 2
  %53 = load %struct.dma_fence*, %struct.dma_fence** %52, align 8
  store %struct.dma_fence* %53, %struct.dma_fence** %7, align 8
  %54 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %55 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %54, i32 0, i32 2
  store %struct.dma_fence* null, %struct.dma_fence** %55, align 8
  %56 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %57 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %50
  %60 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %60, %struct.dma_fence** %3, align 8
  br label %119

61:                                               ; preds = %50
  %62 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %63 = call i32 @dma_fence_put(%struct.dma_fence* %62)
  br label %64

64:                                               ; preds = %61, %39
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %103, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %68 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %106

71:                                               ; preds = %65
  %72 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %73 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %72, i32 0, i32 1
  %74 = load %struct.dma_fence**, %struct.dma_fence*** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %74, i64 %76
  %78 = load %struct.dma_fence*, %struct.dma_fence** %77, align 8
  %79 = icmp ne %struct.dma_fence* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %71
  br label %103

81:                                               ; preds = %71
  %82 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %83 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %82, i32 0, i32 1
  %84 = load %struct.dma_fence**, %struct.dma_fence*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %84, i64 %86
  %88 = load %struct.dma_fence*, %struct.dma_fence** %87, align 8
  store %struct.dma_fence* %88, %struct.dma_fence** %7, align 8
  %89 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %90 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %89, i32 0, i32 1
  %91 = load %struct.dma_fence**, %struct.dma_fence*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %91, i64 %93
  store %struct.dma_fence* null, %struct.dma_fence** %94, align 8
  %95 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %96 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %81
  %99 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  store %struct.dma_fence* %99, %struct.dma_fence** %3, align 8
  br label %119

100:                                              ; preds = %81
  %101 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %102 = call i32 @dma_fence_put(%struct.dma_fence* %101)
  br label %103

103:                                              ; preds = %100, %80
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %65

106:                                              ; preds = %65
  %107 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %108 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %107, i32 0, i32 1
  %109 = load %struct.dma_fence**, %struct.dma_fence*** %108, align 8
  %110 = call i32 @kfree(%struct.dma_fence** %109)
  %111 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %112 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  %113 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %9, align 8
  %114 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %113, i32 0, i32 1
  store %struct.dma_fence** null, %struct.dma_fence*** %114, align 8
  br label %115

115:                                              ; preds = %106
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %33

118:                                              ; preds = %33
  store %struct.dma_fence* null, %struct.dma_fence** %3, align 8
  br label %119

119:                                              ; preds = %118, %98, %59, %27
  %120 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  ret %struct.dma_fence* %120
}

declare dso_local %struct.etnaviv_gem_submit* @to_etnaviv_submit(%struct.drm_sched_job*) #1

declare dso_local i64 @unlikely(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
