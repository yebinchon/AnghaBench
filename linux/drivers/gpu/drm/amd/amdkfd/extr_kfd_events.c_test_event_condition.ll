; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_test_event_condition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_events.c_test_event_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_event_waiter = type { i64, i32 }

@KFD_IOC_WAIT_RESULT_FAIL = common dso_local global i64 0, align 8
@KFD_IOC_WAIT_RESULT_COMPLETE = common dso_local global i64 0, align 8
@KFD_IOC_WAIT_RESULT_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, %struct.kfd_event_waiter*)* @test_event_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @test_event_condition(i32 %0, i64 %1, %struct.kfd_event_waiter* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.kfd_event_waiter*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store %struct.kfd_event_waiter* %2, %struct.kfd_event_waiter** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %39, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %15, i64 %16
  %18 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = load i64, i64* @KFD_IOC_WAIT_RESULT_FAIL, align 8
  store i64 %22, i64* %4, align 8
  br label %52

23:                                               ; preds = %14
  %24 = load %struct.kfd_event_waiter*, %struct.kfd_event_waiter** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %24, i64 %25
  %27 = getelementptr inbounds %struct.kfd_event_waiter, %struct.kfd_event_waiter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @KFD_IOC_WAIT_RESULT_COMPLETE, align 8
  store i64 %34, i64* %4, align 8
  br label %52

35:                                               ; preds = %30
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %35, %23
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %10

42:                                               ; preds = %10
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @KFD_IOC_WAIT_RESULT_COMPLETE, align 8
  br label %50

48:                                               ; preds = %42
  %49 = load i64, i64* @KFD_IOC_WAIT_RESULT_TIMEOUT, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  store i64 %51, i64* %4, align 8
  br label %52

52:                                               ; preds = %50, %33, %21
  %53 = load i64, i64* %4, align 8
  ret i64 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
