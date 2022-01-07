; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_stop_rc_timers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_stop_rc_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i32, i32, i32 }

@RVT_S_TIMER = common dso_local global i32 0, align 4
@RVT_S_WAIT_RNR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_stop_rc_timers(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %3 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %4 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %3, i32 0, i32 3
  %5 = call i32 @lockdep_assert_held(i32* %4)
  %6 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %7 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RVT_S_TIMER, align 4
  %10 = load i32, i32* @RVT_S_WAIT_RNR, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load i32, i32* @RVT_S_TIMER, align 4
  %16 = load i32, i32* @RVT_S_WAIT_RNR, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %20 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %24 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %23, i32 0, i32 2
  %25 = call i32 @del_timer(i32* %24)
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 1
  %28 = call i32 @hrtimer_try_to_cancel(i32* %27)
  br label %29

29:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @hrtimer_try_to_cancel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
