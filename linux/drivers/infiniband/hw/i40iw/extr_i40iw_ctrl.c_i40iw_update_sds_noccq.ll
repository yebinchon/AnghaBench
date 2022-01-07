; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_update_sds_noccq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_update_sds_noccq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { %struct.i40iw_sc_cqp* }
%struct.i40iw_sc_cqp = type { i32 }
%struct.i40iw_update_sds_info = type { i32 }

@I40IW_ERR_CQP_COMPL_ERROR = common dso_local global i32 0, align 4
@I40IW_DONE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_update_sds_noccq(%struct.i40iw_sc_dev* %0, %struct.i40iw_update_sds_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_update_sds_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i40iw_sc_cqp*, align 8
  %10 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %4, align 8
  store %struct.i40iw_update_sds_info* %1, %struct.i40iw_update_sds_info** %5, align 8
  %11 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %11, i32 0, i32 0
  %13 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %12, align 8
  store %struct.i40iw_sc_cqp* %13, %struct.i40iw_sc_cqp** %9, align 8
  %14 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %15 = load %struct.i40iw_update_sds_info*, %struct.i40iw_update_sds_info** %5, align 8
  %16 = call i32 @cqp_sds_wqe_fill(%struct.i40iw_sc_cqp* %14, %struct.i40iw_update_sds_info* %15, i32 0)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %23 = call i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp* %22, i64* %7, i64* %8, i64* %6)
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @I40IW_ERR_CQP_COMPL_ERROR, align 4
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %21
  %29 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %30 = call i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp* %29)
  %31 = load %struct.i40iw_sc_cqp*, %struct.i40iw_sc_cqp** %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @I40IW_DONE_COUNT, align 4
  %34 = call i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp* %31, i64 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %28, %26, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @cqp_sds_wqe_fill(%struct.i40iw_sc_cqp*, %struct.i40iw_update_sds_info*, i32) #1

declare dso_local i32 @i40iw_get_cqp_reg_info(%struct.i40iw_sc_cqp*, i64*, i64*, i64*) #1

declare dso_local i32 @i40iw_sc_cqp_post_sq(%struct.i40iw_sc_cqp*) #1

declare dso_local i32 @i40iw_cqp_poll_registers(%struct.i40iw_sc_cqp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
