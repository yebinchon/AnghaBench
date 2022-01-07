; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.h_msm_gpu_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.h_msm_gpu_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32, %struct.msm_ringbuffer** }
%struct.msm_ringbuffer = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @msm_gpu_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gpu_active(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msm_ringbuffer*, align 8
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %9 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %6
  %13 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %14 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %13, i32 0, i32 1
  %15 = load %struct.msm_ringbuffer**, %struct.msm_ringbuffer*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %15, i64 %17
  %19 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %18, align 8
  store %struct.msm_ringbuffer* %19, %struct.msm_ringbuffer** %5, align 8
  %20 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %21 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.msm_ringbuffer*, %struct.msm_ringbuffer** %5, align 8
  %24 = getelementptr inbounds %struct.msm_ringbuffer, %struct.msm_ringbuffer* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %22, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %35

30:                                               ; preds = %12
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %6

34:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
