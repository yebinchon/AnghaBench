; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_alloc_event_waiters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_alloc_event_waiters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_event_waiter = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kfd_event_waiter* (i64)* @alloc_event_waiters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kfd_event_waiter* @alloc_event_waiters(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kfd_event_waiter*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.kfd_event_waiter* @kmalloc_array(i64 %5, i32 8, i32 %6)
  store %struct.kfd_event_waiter* %7, %struct.kfd_event_waiter** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %27, %1
  %9 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %3, align 8
  %10 = icmp ne %struct.kfd_event_waiter* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %2, align 8
  %14 = icmp ult i64 %12, %13
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i1 [ false, %8 ], [ %14, %11 ]
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %3, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %18, i64 %19
  %21 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %20, i32 0, i32 1
  %22 = call i32 @init_wait(i32* %21)
  %23 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %23, i64 %24
  %26 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %17
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %8

30:                                               ; preds = %15
  %31 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %3, align 8
  ret %struct.kfd_event_waiter* %31
}

declare dso_local %struct.kfd_event_waiter* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @init_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
