; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_terminate_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_terminate_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32, i32 }
%struct.i40iw_aeqe_info = type { i32 }

@I40IW_TERM_SENT = common dso_local global i32 0, align 4
@TERM_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@I40IW_QP_STATE_TERMINATE = common dso_local global i32 0, align 4
@I40IWQP_TERM_SEND_TERM_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_terminate_connection(%struct.i40iw_sc_qp* %0, %struct.i40iw_aeqe_info* %1) #0 {
  %3 = alloca %struct.i40iw_sc_qp*, align 8
  %4 = alloca %struct.i40iw_aeqe_info*, align 8
  %5 = alloca i32, align 4
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %3, align 8
  store %struct.i40iw_aeqe_info* %1, %struct.i40iw_aeqe_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %7 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @I40IW_TERM_SENT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* @TERM_EVENT_QP_FATAL, align 4
  %15 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %18 = load %struct.i40iw_aeqe_info*, %struct.i40iw_aeqe_info** %4, align 8
  %19 = call i32 @i40iw_bld_terminate_hdr(%struct.i40iw_sc_qp* %17, %struct.i40iw_aeqe_info* %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %21 = call i32 @i40iw_terminate_start_timer(%struct.i40iw_sc_qp* %20)
  %22 = load i32, i32* @I40IW_TERM_SENT, align 4
  %23 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %24 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %28 = load i32, i32* @I40IW_QP_STATE_TERMINATE, align 4
  %29 = load i32, i32* @I40IWQP_TERM_SEND_TERM_ONLY, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @i40iw_term_modify_qp(%struct.i40iw_sc_qp* %27, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @i40iw_bld_terminate_hdr(%struct.i40iw_sc_qp*, %struct.i40iw_aeqe_info*) #1

declare dso_local i32 @i40iw_terminate_start_timer(%struct.i40iw_sc_qp*) #1

declare dso_local i32 @i40iw_term_modify_qp(%struct.i40iw_sc_qp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
