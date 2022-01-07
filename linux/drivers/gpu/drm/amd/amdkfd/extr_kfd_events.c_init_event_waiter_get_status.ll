; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_init_event_waiter_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_init_event_waiter_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_process = type { i32 }
%struct.kfd_event_waiter = type { i32, %struct.kfd_event* }
%struct.kfd_event = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfd_process*, %struct.kfd_event_waiter*, i32)* @init_event_waiter_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_event_waiter_get_status(%struct.kfd_process* %0, %struct.kfd_event_waiter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kfd_process*, align 8
  %6 = alloca %struct.kfd_event_waiter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kfd_event*, align 8
  store %struct.kfd_process* %0, %struct.kfd_process** %5, align 8
  store %struct.kfd_event_waiter* %1, %struct.kfd_event_waiter** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.kfd_process*, %struct.kfd_process** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.kfd_event* @lookup_event_by_id(%struct.kfd_process* %9, i32 %10)
  store %struct.kfd_event* %11, %struct.kfd_event** %8, align 8
  %12 = load %struct.kfd_event*, %struct.kfd_event** %8, align 8
  %13 = icmp ne %struct.kfd_event* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.kfd_event*, %struct.kfd_event** %8, align 8
  %19 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %6, align 8
  %20 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %19, i32 0, i32 1
  store %struct.kfd_event* %18, %struct.kfd_event** %20, align 8
  %21 = load %struct.kfd_event*, %struct.kfd_event** %8, align 8
  %22 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %6, align 8
  %25 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.kfd_event*, %struct.kfd_event** %8, align 8
  %27 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = load %struct.kfd_event*, %struct.kfd_event** %8, align 8
  %32 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %30, %17
  %37 = phi i1 [ false, %17 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  %39 = load %struct.kfd_event*, %struct.kfd_event** %8, align 8
  %40 = getelementptr inbounds %struct.kfd_event, %struct.kfd_event* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.kfd_event* @lookup_event_by_id(%struct.kfd_process*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
