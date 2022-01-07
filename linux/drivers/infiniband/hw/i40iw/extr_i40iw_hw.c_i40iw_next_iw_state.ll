; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_next_iw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_next_iw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_qp = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.i40iw_modify_qp_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@I40IWQP_TERM_SEND_TERM_ONLY = common dso_local global i32 0, align 4
@I40IWQP_TERM_SEND_FIN_ONLY = common dso_local global i32 0, align 4
@I40IW_QP_STATE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_next_iw_state(%struct.i40iw_qp* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.i40iw_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i40iw_modify_qp_info, align 4
  store %struct.i40iw_qp* %0, %struct.i40iw_qp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i32 @memset(%struct.i40iw_modify_qp_info* %11, i32 0, i32 32)
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 2
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 4
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 5
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 6
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @I40IWQP_TERM_SEND_TERM_ONLY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 4
  store i32 0, i32* %28, align 4
  br label %29

29:                                               ; preds = %27, %5
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @I40IWQP_TERM_SEND_FIN_ONLY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 5
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %38 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @I40IW_QP_STATE_ERROR, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.i40iw_modify_qp_info, %struct.i40iw_modify_qp_info* %11, i32 0, i32 7
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %42, %36
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %51 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %53 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i40iw_qp*, %struct.i40iw_qp** %6, align 8
  %56 = call i32 @i40iw_hw_modify_qp(i32 %54, %struct.i40iw_qp* %55, %struct.i40iw_modify_qp_info* %11, i32 0)
  ret void
}

declare dso_local i32 @memset(%struct.i40iw_modify_qp_info*, i32, i32) #1

declare dso_local i32 @i40iw_hw_modify_qp(i32, %struct.i40iw_qp*, %struct.i40iw_modify_qp_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
