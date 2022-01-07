; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_event_handler = type { i32 }
%struct.ib_event = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_update_work = type { i32, i32, i32, i32 }

@IB_EVENT_PORT_ERR = common dso_local global i64 0, align 8
@IB_EVENT_PORT_ACTIVE = common dso_local global i64 0, align 8
@IB_EVENT_LID_CHANGE = common dso_local global i64 0, align 8
@IB_EVENT_PKEY_CHANGE = common dso_local global i64 0, align 8
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i64 0, align 8
@IB_EVENT_GID_CHANGE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ib_cache_task = common dso_local global i32 0, align 4
@ib_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_event_handler*, %struct.ib_event*)* @ib_cache_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_cache_event(%struct.ib_event_handler* %0, %struct.ib_event* %1) #0 {
  %3 = alloca %struct.ib_event_handler*, align 8
  %4 = alloca %struct.ib_event*, align 8
  %5 = alloca %struct.ib_update_work*, align 8
  store %struct.ib_event_handler* %0, %struct.ib_event_handler** %3, align 8
  store %struct.ib_event* %1, %struct.ib_event** %4, align 8
  %6 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %7 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IB_EVENT_PORT_ERR, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %41, label %11

11:                                               ; preds = %2
  %12 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %13 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IB_EVENT_PORT_ACTIVE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %41, label %17

17:                                               ; preds = %11
  %18 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %19 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IB_EVENT_LID_CHANGE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %41, label %23

23:                                               ; preds = %17
  %24 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %25 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IB_EVENT_PKEY_CHANGE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %31 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IB_EVENT_CLIENT_REREGISTER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %37 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_EVENT_GID_CHANGE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %35, %29, %23, %17, %11, %2
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.ib_update_work* @kmalloc(i32 16, i32 %42)
  store %struct.ib_update_work* %43, %struct.ib_update_work** %5, align 8
  %44 = load %struct.ib_update_work*, %struct.ib_update_work** %5, align 8
  %45 = icmp ne %struct.ib_update_work* %44, null
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load %struct.ib_update_work*, %struct.ib_update_work** %5, align 8
  %48 = getelementptr inbounds %struct.ib_update_work, %struct.ib_update_work* %47, i32 0, i32 1
  %49 = load i32, i32* @ib_cache_task, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %52 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ib_update_work*, %struct.ib_update_work** %5, align 8
  %55 = getelementptr inbounds %struct.ib_update_work, %struct.ib_update_work* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %57 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ib_update_work*, %struct.ib_update_work** %5, align 8
  %61 = getelementptr inbounds %struct.ib_update_work, %struct.ib_update_work* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %63 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IB_EVENT_PKEY_CHANGE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %46
  %68 = load %struct.ib_event*, %struct.ib_event** %4, align 8
  %69 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IB_EVENT_GID_CHANGE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67, %46
  %74 = load %struct.ib_update_work*, %struct.ib_update_work** %5, align 8
  %75 = getelementptr inbounds %struct.ib_update_work, %struct.ib_update_work* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %79

76:                                               ; preds = %67
  %77 = load %struct.ib_update_work*, %struct.ib_update_work** %5, align 8
  %78 = getelementptr inbounds %struct.ib_update_work, %struct.ib_update_work* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @ib_wq, align 4
  %81 = load %struct.ib_update_work*, %struct.ib_update_work** %5, align 8
  %82 = getelementptr inbounds %struct.ib_update_work, %struct.ib_update_work* %81, i32 0, i32 1
  %83 = call i32 @queue_work(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %79, %41
  br label %85

85:                                               ; preds = %84, %35
  ret void
}

declare dso_local %struct.ib_update_work* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
