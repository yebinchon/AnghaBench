; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_cq.c_rvt_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.rvt_cq = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_req_notify_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rvt_cq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %9 = call %struct.rvt_cq* @ibcq_to_rvtcq(%struct.ib_cq* %8)
  store %struct.rvt_cq* %9, %struct.rvt_cq** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %11 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %10, i32 0, i32 1
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %15 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %24 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %66

30:                                               ; preds = %25
  %31 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %32 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %37 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @RDMA_READ_UAPI_ATOMIC(i32 %40)
  %42 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %43 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @RDMA_READ_UAPI_ATOMIC(i32 %46)
  %48 = icmp ne i64 %41, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  store i32 1, i32* %7, align 4
  br label %50

50:                                               ; preds = %49, %35
  br label %65

51:                                               ; preds = %30
  %52 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %53 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %58 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %25
  %67 = load %struct.rvt_cq*, %struct.rvt_cq** %5, align 8
  %68 = getelementptr inbounds %struct.rvt_cq, %struct.rvt_cq* %67, i32 0, i32 1
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local %struct.rvt_cq* @ibcq_to_rvtcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @RDMA_READ_UAPI_ATOMIC(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
