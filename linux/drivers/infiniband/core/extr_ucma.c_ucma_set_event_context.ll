; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_set_event_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ucma.c_ucma_set_event_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_context = type { i32, i32 }
%struct.rdma_cm_event = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ucma_event = type { %struct.TYPE_6__, %struct.ucma_multicast*, %struct.ucma_context* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ucma_multicast = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucma_context*, %struct.rdma_cm_event*, %struct.ucma_event*)* @ucma_set_event_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_set_event_context(%struct.ucma_context* %0, %struct.rdma_cm_event* %1, %struct.ucma_event* %2) #0 {
  %4 = alloca %struct.ucma_context*, align 8
  %5 = alloca %struct.rdma_cm_event*, align 8
  %6 = alloca %struct.ucma_event*, align 8
  store %struct.ucma_context* %0, %struct.ucma_context** %4, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %5, align 8
  store %struct.ucma_event* %2, %struct.ucma_event** %6, align 8
  %7 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %8 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %9 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %8, i32 0, i32 2
  store %struct.ucma_context* %7, %struct.ucma_context** %9, align 8
  %10 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %38 [
    i32 128, label %13
    i32 129, label %13
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %15 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ucma_multicast*
  %20 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %21 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %20, i32 0, i32 1
  store %struct.ucma_multicast* %19, %struct.ucma_multicast** %21, align 8
  %22 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %23 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %22, i32 0, i32 1
  %24 = load %struct.ucma_multicast*, %struct.ucma_multicast** %23, align 8
  %25 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %28 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 4
  %30 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %31 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %30, i32 0, i32 1
  %32 = load %struct.ucma_multicast*, %struct.ucma_multicast** %31, align 8
  %33 = getelementptr inbounds %struct.ucma_multicast, %struct.ucma_multicast* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %36 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  br label %51

38:                                               ; preds = %3
  %39 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %40 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %43 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ucma_context*, %struct.ucma_context** %4, align 8
  %46 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ucma_event*, %struct.ucma_event** %6, align 8
  %49 = getelementptr inbounds %struct.ucma_event, %struct.ucma_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  br label %51

51:                                               ; preds = %38, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
