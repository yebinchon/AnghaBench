; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_handle_qp_async_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_handle_qp_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creq_qp_event = type { i32 }
%struct.bnxt_re_qp = type { %struct.TYPE_7__, %struct.TYPE_5__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32 (%struct.ib_event*, i32)* }
%struct.ib_event = type { i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@CMDQ_MODIFY_QP_NEW_STATE_ERR = common dso_local global i64 0, align 8
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.creq_qp_event*, %struct.bnxt_re_qp*)* @bnxt_re_handle_qp_async_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_handle_qp_async_event(%struct.creq_qp_event* %0, %struct.bnxt_re_qp* %1) #0 {
  %3 = alloca %struct.creq_qp_event*, align 8
  %4 = alloca %struct.bnxt_re_qp*, align 8
  %5 = alloca %struct.ib_event, align 8
  %6 = alloca i32, align 4
  store %struct.creq_qp_event* %0, %struct.creq_qp_event** %3, align 8
  store %struct.bnxt_re_qp* %1, %struct.bnxt_re_qp** %4, align 8
  %7 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %8 = getelementptr inbounds %struct.bnxt_re_qp, %struct.bnxt_re_qp* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CMDQ_MODIFY_QP_NEW_STATE_ERR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %15 = call i32 @bnxt_re_lock_cqs(%struct.bnxt_re_qp* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %17 = getelementptr inbounds %struct.bnxt_re_qp, %struct.bnxt_re_qp* %16, i32 0, i32 2
  %18 = call i32 @bnxt_qplib_add_flush_qp(%struct.TYPE_8__* %17)
  %19 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @bnxt_re_unlock_cqs(%struct.bnxt_re_qp* %19, i32 %20)
  br label %22

22:                                               ; preds = %13, %2
  %23 = call i32 @memset(%struct.ib_event* %5, i32 0, i32 24)
  %24 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %25 = getelementptr inbounds %struct.bnxt_re_qp, %struct.bnxt_re_qp* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %31 = getelementptr inbounds %struct.bnxt_re_qp, %struct.bnxt_re_qp* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %36 = getelementptr inbounds %struct.bnxt_re_qp, %struct.bnxt_re_qp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %40 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  br label %41

41:                                               ; preds = %29, %22
  %42 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %47 = getelementptr inbounds %struct.bnxt_re_qp, %struct.bnxt_re_qp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %48, align 8
  %50 = icmp ne i32 (%struct.ib_event*, i32)* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %53 = getelementptr inbounds %struct.bnxt_re_qp, %struct.bnxt_re_qp* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %54, align 8
  %56 = load %struct.bnxt_re_qp*, %struct.bnxt_re_qp** %4, align 8
  %57 = getelementptr inbounds %struct.bnxt_re_qp, %struct.bnxt_re_qp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %55(%struct.ib_event* %5, i32 %59)
  br label %61

61:                                               ; preds = %51, %45, %41
  ret i32 0
}

declare dso_local i32 @bnxt_re_lock_cqs(%struct.bnxt_re_qp*) #1

declare dso_local i32 @bnxt_qplib_add_flush_qp(%struct.TYPE_8__*) #1

declare dso_local i32 @bnxt_re_unlock_cqs(%struct.bnxt_re_qp*, i32) #1

declare dso_local i32 @memset(%struct.ib_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
