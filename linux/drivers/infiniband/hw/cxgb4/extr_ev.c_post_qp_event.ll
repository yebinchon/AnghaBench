; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_ev.c_post_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_ev.c_post_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_dev = type { i32 }
%struct.c4iw_cq = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_8__*, i32)*, i32 }
%struct.c4iw_qp = type { %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 (%struct.ib_event*, i32)* }
%struct.ib_event = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i64 }
%struct.t4_cqe = type { i32 }
%struct.c4iw_qp_attributes = type { i32 }

@C4IW_QP_STATE_RTS = common dso_local global i64 0, align 8
@C4IW_QP_STATE_TERMINATE = common dso_local global i32 0, align 4
@C4IW_QP_ATTR_NEXT_STATE = common dso_local global i32 0, align 4
@IB_EVENT_CQ_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c4iw_dev*, %struct.c4iw_cq*, %struct.c4iw_qp*, %struct.t4_cqe*, i32)* @post_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @post_qp_event(%struct.c4iw_dev* %0, %struct.c4iw_cq* %1, %struct.c4iw_qp* %2, %struct.t4_cqe* %3, i32 %4) #0 {
  %6 = alloca %struct.c4iw_dev*, align 8
  %7 = alloca %struct.c4iw_cq*, align 8
  %8 = alloca %struct.c4iw_qp*, align 8
  %9 = alloca %struct.t4_cqe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_event, align 8
  %12 = alloca %struct.c4iw_qp_attributes, align 4
  %13 = alloca i64, align 8
  store %struct.c4iw_dev* %0, %struct.c4iw_dev** %6, align 8
  store %struct.c4iw_cq* %1, %struct.c4iw_cq** %7, align 8
  store %struct.c4iw_qp* %2, %struct.c4iw_qp** %8, align 8
  store %struct.t4_cqe* %3, %struct.t4_cqe** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.c4iw_dev*, %struct.c4iw_dev** %6, align 8
  %15 = load %struct.t4_cqe*, %struct.t4_cqe** %9, align 8
  %16 = call i32 @dump_err_cqe(%struct.c4iw_dev* %14, %struct.t4_cqe* %15)
  %17 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %18 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @C4IW_QP_STATE_RTS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %5
  %24 = load i32, i32* @C4IW_QP_STATE_TERMINATE, align 4
  %25 = getelementptr inbounds %struct.c4iw_qp_attributes, %struct.c4iw_qp_attributes* %12, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %27 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %30 = load i32, i32* @C4IW_QP_ATTR_NEXT_STATE, align 4
  %31 = call i32 @c4iw_modify_qp(i32 %28, %struct.c4iw_qp* %29, i32 %30, %struct.c4iw_qp_attributes* %12, i32 0)
  br label %32

32:                                               ; preds = %23, %5
  %33 = load i32, i32* %10, align 4
  %34 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.c4iw_cq*, %struct.c4iw_cq** %7, align 8
  %36 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @IB_EVENT_CQ_ERR, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.c4iw_cq*, %struct.c4iw_cq** %7, align 8
  %45 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %47, align 8
  br label %53

48:                                               ; preds = %32
  %49 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %50 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %11, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store %struct.TYPE_7__* %50, %struct.TYPE_7__** %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %55 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.ib_event*, i32)* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %61 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %62, align 8
  %64 = load %struct.c4iw_qp*, %struct.c4iw_qp** %8, align 8
  %65 = getelementptr inbounds %struct.c4iw_qp, %struct.c4iw_qp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 %63(%struct.ib_event* %11, i32 %67)
  br label %69

69:                                               ; preds = %59, %53
  %70 = load %struct.c4iw_cq*, %struct.c4iw_cq** %7, align 8
  %71 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %70, i32 0, i32 2
  %72 = call i64 @t4_clear_cq_armed(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load %struct.c4iw_cq*, %struct.c4iw_cq** %7, align 8
  %76 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %75, i32 0, i32 0
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.c4iw_cq*, %struct.c4iw_cq** %7, align 8
  %80 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32 (%struct.TYPE_8__*, i32)*, i32 (%struct.TYPE_8__*, i32)** %81, align 8
  %83 = load %struct.c4iw_cq*, %struct.c4iw_cq** %7, align 8
  %84 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %83, i32 0, i32 1
  %85 = load %struct.c4iw_cq*, %struct.c4iw_cq** %7, align 8
  %86 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %82(%struct.TYPE_8__* %84, i32 %88)
  %90 = load %struct.c4iw_cq*, %struct.c4iw_cq** %7, align 8
  %91 = getelementptr inbounds %struct.c4iw_cq, %struct.c4iw_cq* %90, i32 0, i32 0
  %92 = load i64, i64* %13, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  br label %94

94:                                               ; preds = %74, %69
  ret void
}

declare dso_local i32 @dump_err_cqe(%struct.c4iw_dev*, %struct.t4_cqe*) #1

declare dso_local i32 @c4iw_modify_qp(i32, %struct.c4iw_qp*, i32, %struct.c4iw_qp_attributes*, i32) #1

declare dso_local i64 @t4_clear_cq_armed(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
