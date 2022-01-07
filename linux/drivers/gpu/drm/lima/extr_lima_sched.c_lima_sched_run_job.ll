; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_run_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_sched.c_lima_sched_run_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.drm_sched_job = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.lima_sched_task = type { %struct.dma_fence*, %struct.lima_vm* }
%struct.lima_vm = type { i32 }
%struct.lima_sched_pipe = type { i32, i32, i32, i32 (%struct.lima_sched_pipe*, %struct.lima_sched_task*)*, i64*, i64, %struct.lima_vm*, i32*, %struct.lima_sched_task* }
%struct.lima_fence = type { %struct.dma_fence }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_fence* (%struct.drm_sched_job*)* @lima_sched_run_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_fence* @lima_sched_run_job(%struct.drm_sched_job* %0) #0 {
  %2 = alloca %struct.dma_fence*, align 8
  %3 = alloca %struct.drm_sched_job*, align 8
  %4 = alloca %struct.lima_sched_task*, align 8
  %5 = alloca %struct.lima_sched_pipe*, align 8
  %6 = alloca %struct.lima_fence*, align 8
  %7 = alloca %struct.dma_fence*, align 8
  %8 = alloca %struct.lima_vm*, align 8
  %9 = alloca %struct.lima_vm*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_sched_job* %0, %struct.drm_sched_job** %3, align 8
  %11 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %12 = call %struct.lima_sched_task* @to_lima_task(%struct.drm_sched_job* %11)
  store %struct.lima_sched_task* %12, %struct.lima_sched_task** %4, align 8
  %13 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %14 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.lima_sched_pipe* @to_lima_pipe(i32 %15)
  store %struct.lima_sched_pipe* %16, %struct.lima_sched_pipe** %5, align 8
  store %struct.lima_vm* null, %struct.lima_vm** %8, align 8
  store %struct.lima_vm* null, %struct.lima_vm** %9, align 8
  %17 = load %struct.drm_sched_job*, %struct.drm_sched_job** %3, align 8
  %18 = getelementptr inbounds %struct.drm_sched_job, %struct.drm_sched_job* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %132

25:                                               ; preds = %1
  %26 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %27 = call %struct.lima_fence* @lima_fence_create(%struct.lima_sched_pipe* %26)
  store %struct.lima_fence* %27, %struct.lima_fence** %6, align 8
  %28 = load %struct.lima_fence*, %struct.lima_fence** %6, align 8
  %29 = icmp ne %struct.lima_fence* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.dma_fence* null, %struct.dma_fence** %2, align 8
  br label %132

31:                                               ; preds = %25
  %32 = load %struct.lima_fence*, %struct.lima_fence** %6, align 8
  %33 = getelementptr inbounds %struct.lima_fence, %struct.lima_fence* %32, i32 0, i32 0
  %34 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %35 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %34, i32 0, i32 0
  store %struct.dma_fence* %33, %struct.dma_fence** %35, align 8
  %36 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %37 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %36, i32 0, i32 0
  %38 = load %struct.dma_fence*, %struct.dma_fence** %37, align 8
  %39 = call %struct.dma_fence* @dma_fence_get(%struct.dma_fence* %38)
  store %struct.dma_fence* %39, %struct.dma_fence** %7, align 8
  %40 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %41 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %42 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %41, i32 0, i32 8
  store %struct.lima_sched_task* %40, %struct.lima_sched_task** %42, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %58, %31
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %46 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %51 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %50, i32 0, i32 7
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @lima_l2_cache_flush(i32 %56)
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %63 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %62, i32 0, i32 1
  %64 = load %struct.lima_vm*, %struct.lima_vm** %63, align 8
  %65 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %66 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %65, i32 0, i32 6
  %67 = load %struct.lima_vm*, %struct.lima_vm** %66, align 8
  %68 = icmp ne %struct.lima_vm* %64, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %71 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %70, i32 0, i32 1
  %72 = load %struct.lima_vm*, %struct.lima_vm** %71, align 8
  %73 = call %struct.lima_vm* @lima_vm_get(%struct.lima_vm* %72)
  store %struct.lima_vm* %73, %struct.lima_vm** %8, align 8
  %74 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %75 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %74, i32 0, i32 6
  %76 = load %struct.lima_vm*, %struct.lima_vm** %75, align 8
  store %struct.lima_vm* %76, %struct.lima_vm** %9, align 8
  %77 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %78 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %77, i32 0, i32 1
  %79 = load %struct.lima_vm*, %struct.lima_vm** %78, align 8
  %80 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %81 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %80, i32 0, i32 6
  store %struct.lima_vm* %79, %struct.lima_vm** %81, align 8
  br label %82

82:                                               ; preds = %69, %61
  %83 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %84 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %89 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.lima_vm*, %struct.lima_vm** %8, align 8
  %92 = call i32 @lima_mmu_switch_vm(i64 %90, %struct.lima_vm* %91)
  br label %114

93:                                               ; preds = %82
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %110, %93
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %97 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %94
  %101 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %102 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %101, i32 0, i32 4
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.lima_vm*, %struct.lima_vm** %8, align 8
  %109 = call i32 @lima_mmu_switch_vm(i64 %107, %struct.lima_vm* %108)
  br label %110

110:                                              ; preds = %100
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %94

113:                                              ; preds = %94
  br label %114

114:                                              ; preds = %113, %87
  %115 = load %struct.lima_vm*, %struct.lima_vm** %9, align 8
  %116 = icmp ne %struct.lima_vm* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.lima_vm*, %struct.lima_vm** %9, align 8
  %119 = call i32 @lima_vm_put(%struct.lima_vm* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %122 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %124 = getelementptr inbounds %struct.lima_sched_pipe, %struct.lima_sched_pipe* %123, i32 0, i32 3
  %125 = load i32 (%struct.lima_sched_pipe*, %struct.lima_sched_task*)*, i32 (%struct.lima_sched_pipe*, %struct.lima_sched_task*)** %124, align 8
  %126 = load %struct.lima_sched_pipe*, %struct.lima_sched_pipe** %5, align 8
  %127 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %128 = call i32 %125(%struct.lima_sched_pipe* %126, %struct.lima_sched_task* %127)
  %129 = load %struct.lima_sched_task*, %struct.lima_sched_task** %4, align 8
  %130 = getelementptr inbounds %struct.lima_sched_task, %struct.lima_sched_task* %129, i32 0, i32 0
  %131 = load %struct.dma_fence*, %struct.dma_fence** %130, align 8
  store %struct.dma_fence* %131, %struct.dma_fence** %2, align 8
  br label %132

132:                                              ; preds = %120, %30, %24
  %133 = load %struct.dma_fence*, %struct.dma_fence** %2, align 8
  ret %struct.dma_fence* %133
}

declare dso_local %struct.lima_sched_task* @to_lima_task(%struct.drm_sched_job*) #1

declare dso_local %struct.lima_sched_pipe* @to_lima_pipe(i32) #1

declare dso_local %struct.lima_fence* @lima_fence_create(%struct.lima_sched_pipe*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i32 @lima_l2_cache_flush(i32) #1

declare dso_local %struct.lima_vm* @lima_vm_get(%struct.lima_vm*) #1

declare dso_local i32 @lima_mmu_switch_vm(i64, %struct.lima_vm*) #1

declare dso_local i32 @lima_vm_put(%struct.lima_vm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
