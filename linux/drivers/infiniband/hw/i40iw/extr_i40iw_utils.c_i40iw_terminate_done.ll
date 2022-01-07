; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_terminate_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_terminate_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_qp = type { i32, i64 }
%struct.i40iw_qp = type { i32, i64 }

@I40IW_QP_STATE_ERROR = common dso_local global i32 0, align 4
@I40IW_TERM_DONE = common dso_local global i32 0, align 4
@I40IW_QP_STATE_CLOSING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_terminate_done(%struct.i40iw_sc_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_sc_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40iw_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.i40iw_sc_qp* %0, %struct.i40iw_sc_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @I40IW_QP_STATE_ERROR, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %12 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.i40iw_qp*
  store %struct.i40iw_qp* %14, %struct.i40iw_qp** %5, align 8
  %15 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %16 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %20 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %25 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  store i32 1, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %28 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @I40IW_TERM_DONE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* @I40IW_TERM_DONE, align 4
  %36 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %37 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %41 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %40, i32 0, i32 0
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %26
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  %51 = call i32 @i40iw_terminate_del_timer(%struct.i40iw_sc_qp* %50)
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @I40IW_QP_STATE_CLOSING, align 4
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @i40iw_next_iw_state(%struct.i40iw_qp* %55, i32 %56, i32 %57, i32 0, i32 0)
  %59 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %60 = call i32 @i40iw_cm_disconn(%struct.i40iw_qp* %59)
  br label %61

61:                                               ; preds = %54, %26
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i40iw_terminate_del_timer(%struct.i40iw_sc_qp*) #1

declare dso_local i32 @i40iw_next_iw_state(%struct.i40iw_qp*, i32, i32, i32, i32) #1

declare dso_local i32 @i40iw_cm_disconn(%struct.i40iw_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
