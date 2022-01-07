; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_schedule_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_qp.c_hfi1_schedule_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i64, i32 }
%struct.hfi1_qp_priv = type { i32 }

@HFI1_S_ANY_WAIT_IO = common dso_local global i32 0, align 4
@IOWAIT_PENDING_IB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_schedule_send(%struct.rvt_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvt_qp*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  %4 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %5 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %4, i32 0, i32 2
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %8 = call i64 @hfi1_send_ok(%struct.rvt_qp* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %12 = call i32 @_hfi1_schedule_send(%struct.rvt_qp* %11)
  store i32 1, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %15 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HFI1_S_ANY_WAIT_IO, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %22 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.hfi1_qp_priv*
  %25 = getelementptr inbounds %struct.hfi1_qp_priv, %struct.hfi1_qp_priv* %24, i32 0, i32 0
  %26 = load i32, i32* @IOWAIT_PENDING_IB, align 4
  %27 = call i32 @iowait_set_flag(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %20, %13
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %10
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @hfi1_send_ok(%struct.rvt_qp*) #1

declare dso_local i32 @_hfi1_schedule_send(%struct.rvt_qp*) #1

declare dso_local i32 @iowait_set_flag(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
