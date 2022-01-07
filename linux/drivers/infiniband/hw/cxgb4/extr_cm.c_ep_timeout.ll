; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_ep_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_cm.c_ep_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_ep = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@timeout_lock = common dso_local global i32 0, align 4
@TIMEOUT = common dso_local global i32 0, align 4
@timeout_list = common dso_local global i32 0, align 4
@workq = common dso_local global i32 0, align 4
@skb_work = common dso_local global i32 0, align 4
@ep = common dso_local global %struct.c4iw_ep* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ep_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.c4iw_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %6 = ptrtoint %struct.c4iw_ep* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.c4iw_ep* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.c4iw_ep* %9, %struct.c4iw_ep** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = call i32 @spin_lock(i32* @timeout_lock)
  %11 = load i32, i32* @TIMEOUT, align 4
  %12 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %13 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @test_and_set_bit(i32 %11, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %1
  %18 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %19 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load %struct.c4iw_ep*, %struct.c4iw_ep** %3, align 8
  %25 = getelementptr inbounds %struct.c4iw_ep, %struct.c4iw_ep* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(%struct.TYPE_4__* %25, i32* @timeout_list)
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %27, %1
  %29 = call i32 @spin_unlock(i32* @timeout_lock)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @workq, align 4
  %34 = call i32 @queue_work(i32 %33, i32* @skb_work)
  br label %35

35:                                               ; preds = %32, %28
  ret void
}

declare dso_local %struct.c4iw_ep* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @list_add_tail(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
