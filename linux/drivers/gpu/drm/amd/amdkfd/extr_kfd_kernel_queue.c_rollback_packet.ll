; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_rollback_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_rollback_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_queue = type { i32, i32*, %struct.TYPE_7__*, i32*, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kernel_queue*)* @rollback_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rollback_packet(%struct.kernel_queue* %0) #0 {
  %2 = alloca %struct.kernel_queue*, align 8
  store %struct.kernel_queue* %0, %struct.kernel_queue** %2, align 8
  %3 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %4 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %3, i32 0, i32 5
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %13 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %17 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %19 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %23 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %27, 4
  %29 = srem i32 %21, %28
  %30 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %31 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %39

32:                                               ; preds = %1
  %33 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %34 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.kernel_queue*, %struct.kernel_queue** %2, align 8
  %38 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %32, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
