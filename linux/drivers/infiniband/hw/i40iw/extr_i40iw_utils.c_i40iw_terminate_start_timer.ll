; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_terminate_start_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_terminate_start_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i64 }
%struct.i40iw_qp = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@i40iw_terminate_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_terminate_start_timer(%struct.i40iw_sc_qp* %0) #0 {
  %2 = alloca %struct.i40iw_sc_qp*, align 8
  %3 = alloca %struct.i40iw_qp*, align 8
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %2, align 8
  %4 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %2, align 8
  %5 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.i40iw_qp*
  store %struct.i40iw_qp* %7, %struct.i40iw_qp** %3, align 8
  %8 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %9 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %8, i32 0, i32 1
  %10 = call i32 @i40iw_add_ref(i32* %9)
  %11 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %11, i32 0, i32 0
  %13 = load i32, i32* @i40iw_terminate_timeout, align 4
  %14 = call i32 @timer_setup(%struct.TYPE_3__* %12, i32 %13, i32 0)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @HZ, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %19 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %22 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %21, i32 0, i32 0
  %23 = call i32 @add_timer(%struct.TYPE_3__* %22)
  ret void
}

declare dso_local i32 @i40iw_add_ref(i32*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
