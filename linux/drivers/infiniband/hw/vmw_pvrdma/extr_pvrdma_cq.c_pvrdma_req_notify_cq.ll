; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c_pvrdma_req_notify_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c_pvrdma_req_notify_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.pvrdma_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pvrdma_cq = type { i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@PVRDMA_UAR_CQ_ARM_SOL = common dso_local global i32 0, align 4
@PVRDMA_UAR_CQ_ARM = common dso_local global i32 0, align 4
@IB_CQ_REPORT_MISSED_EVENTS = common dso_local global i32 0, align 4
@PVRDMA_INVALID_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CQ ring state invalid\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_req_notify_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvrdma_dev*, align 8
  %6 = alloca %struct.pvrdma_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %12 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.pvrdma_dev* @to_vdev(i32 %13)
  store %struct.pvrdma_dev* %14, %struct.pvrdma_dev** %5, align 8
  %15 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %16 = call %struct.pvrdma_cq* @to_vcq(%struct.ib_cq* %15)
  store %struct.pvrdma_cq* %16, %struct.pvrdma_cq** %6, align 8
  %17 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %6, align 8
  %18 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @PVRDMA_UAR_CQ_ARM_SOL, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @PVRDMA_UAR_CQ_ARM, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %6, align 8
  %34 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %33, i32 0, i32 0
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @pvrdma_write_uar_cq(%struct.pvrdma_dev* %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @IB_CQ_REPORT_MISSED_EVENTS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %29
  %45 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %6, align 8
  %46 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %6, align 8
  %50 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pvrdma_idx_ring_has_data(i32* %48, i32 %52, i32* %10)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @PVRDMA_INVALID_IDX, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %44
  %61 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %60, %44
  br label %67

67:                                               ; preds = %66, %29
  %68 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %6, align 8
  %69 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local %struct.pvrdma_cq* @to_vcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pvrdma_write_uar_cq(%struct.pvrdma_dev*, i32) #1

declare dso_local i32 @pvrdma_idx_ring_has_data(i32*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
