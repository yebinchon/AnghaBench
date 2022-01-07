; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_add_retry_timer_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_add_retry_timer_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, %struct.TYPE_2__, i32, i32, %struct.ib_qp }
%struct.TYPE_2__ = type { i64 }
%struct.ib_qp = type { i32 }
%struct.rvt_dev_info = type { i64 }

@RVT_S_TIMER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rvt_add_retry_timer_ext(%struct.rvt_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.rvt_dev_info*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 4
  store %struct.ib_qp* %8, %struct.ib_qp** %5, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rvt_dev_info* @ib_to_rvt(i32 %11)
  store %struct.rvt_dev_info* %12, %struct.rvt_dev_info** %6, align 8
  %13 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %14 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %13, i32 0, i32 3
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load i32, i32* @RVT_S_TIMER, align 4
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %18 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %6, align 8
  %23 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %27 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %25, %31
  %33 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %34 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %37 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %36, i32 0, i32 1
  %38 = call i32 @add_timer(%struct.TYPE_2__* %37)
  ret void
}

declare dso_local %struct.rvt_dev_info* @ib_to_rvt(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
