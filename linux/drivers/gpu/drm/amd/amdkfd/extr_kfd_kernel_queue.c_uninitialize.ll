; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_uninitialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_uninitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_queue = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 (%struct.kernel_queue.0*)* }
%struct.kernel_queue.0 = type opaque
%struct.TYPE_9__ = type { i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)* }

@KFD_QUEUE_TYPE_HIQ = common dso_local global i64 0, align 8
@KFD_PREEMPT_TYPE_WAVEFRONT_RESET = common dso_local global i32 0, align 4
@KFD_UNMAP_LATENCY_MS = common dso_local global i32 0, align 4
@KFD_QUEUE_TYPE_DIQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kernel_queue*)* @uninitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninitialize(%struct.kernel_queue* %0) #0 {
  %2 = alloca %struct.kernel_queue*, align 8
  store %struct.kernel_queue* %0, %struct.kernel_queue** %2, align 8
  %3 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %4 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %3, i32 0, i32 0
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @KFD_QUEUE_TYPE_HIQ, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %13 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %12, i32 0, i32 6
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32, i32, i32)** %15, align 8
  %17 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %18 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %17, i32 0, i32 6
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %21 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @KFD_PREEMPT_TYPE_WAVEFRONT_RESET, align 4
  %26 = load i32, i32* @KFD_UNMAP_LATENCY_MS, align 4
  %27 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %28 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %33 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %16(%struct.TYPE_9__* %19, i32 %24, i32 %25, i32 %26, i32 %31, i32 %36)
  br label %56

38:                                               ; preds = %1
  %39 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %40 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @KFD_QUEUE_TYPE_DIQ, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %38
  %48 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %49 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %52 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @kfd_gtt_sa_free(i32 %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %38
  br label %56

56:                                               ; preds = %55, %11
  %57 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %58 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %57, i32 0, i32 6
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_9__*, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32)** %60, align 8
  %62 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %63 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %62, i32 0, i32 6
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %66 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %71 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %61(%struct.TYPE_9__* %64, i32 %69, i32 %74)
  %76 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %77 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %80 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @kfd_gtt_sa_free(i32 %78, i32 %81)
  %83 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %84 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %87 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @kfd_gtt_sa_free(i32 %85, i32 %88)
  %90 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %91 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32 (%struct.kernel_queue.0*)*, i32 (%struct.kernel_queue.0*)** %92, align 8
  %94 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %95 = bitcast %struct.kernel_queue* %94 to %struct.kernel_queue.0*
  %96 = call i32 %93(%struct.kernel_queue.0* %95)
  %97 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %98 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %101 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @kfd_gtt_sa_free(i32 %99, i32 %102)
  %104 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %105 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %108 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %107, i32 0, i32 0
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @kfd_release_kernel_doorbell(i32 %106, i32 %112)
  %114 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %115 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = call i32 @uninit_queue(%struct.TYPE_8__* %116)
  ret void
}

declare dso_local i32 @kfd_gtt_sa_free(i32, i32) #1

declare dso_local i32 @kfd_release_kernel_doorbell(i32, i32) #1

declare dso_local i32 @uninit_queue(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
