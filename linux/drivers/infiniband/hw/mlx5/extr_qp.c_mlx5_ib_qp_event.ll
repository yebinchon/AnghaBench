; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_qp = type { i32 }
%struct.ib_qp = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.ib_event.0 = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.ib_qp* }
%struct.TYPE_6__ = type { %struct.TYPE_4__, i32, %struct.ib_qp }
%struct.TYPE_4__ = type { i32 }

@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4
@IB_EVENT_COMM_EST = common dso_local global i32 0, align 4
@IB_EVENT_SQ_DRAINED = common dso_local global i32 0, align 4
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@IB_EVENT_PATH_MIG_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_REQ_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"mlx5_ib: Unexpected event type %d on QP %06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_qp*, i32)* @mlx5_ib_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_qp_event(%struct.mlx5_core_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_core_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_event.0, align 8
  store %struct.mlx5_core_qp* %0, %struct.mlx5_core_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %3, align 8
  %8 = call %struct.TYPE_6__* @to_mibqp(%struct.mlx5_core_qp* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  store %struct.ib_qp* %9, %struct.ib_qp** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 134
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %3, align 8
  %14 = call %struct.TYPE_6__* @to_mibqp(%struct.mlx5_core_qp* %13)
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %3, align 8
  %19 = call %struct.TYPE_6__* @to_mibqp(%struct.mlx5_core_qp* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  br label %21

21:                                               ; preds = %12, %2
  %22 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %23 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %22, i32 0, i32 1
  %24 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.ib_event*, i32)* %24, null
  br i1 %25, label %26, label %74

26:                                               ; preds = %21
  %27 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 2
  store i32 %29, i32* %30, align 8
  %31 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %32 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store %struct.ib_qp* %31, %struct.ib_qp** %33, align 8
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %59 [
    i32 134, label %35
    i32 135, label %38
    i32 132, label %41
    i32 131, label %44
    i32 129, label %47
    i32 133, label %50
    i32 128, label %53
    i32 130, label %56
  ]

35:                                               ; preds = %26
  %36 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %37 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  br label %65

38:                                               ; preds = %26
  %39 = load i32, i32* @IB_EVENT_COMM_EST, align 4
  %40 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  br label %65

41:                                               ; preds = %26
  %42 = load i32, i32* @IB_EVENT_SQ_DRAINED, align 4
  %43 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %42, i32* %43, align 8
  br label %65

44:                                               ; preds = %26
  %45 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %46 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  br label %65

47:                                               ; preds = %26
  %48 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %49 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  br label %65

50:                                               ; preds = %26
  %51 = load i32, i32* @IB_EVENT_PATH_MIG_ERR, align 4
  %52 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  br label %65

53:                                               ; preds = %26
  %54 = load i32, i32* @IB_EVENT_QP_REQ_ERR, align 4
  %55 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  br label %65

56:                                               ; preds = %26
  %57 = load i32, i32* @IB_EVENT_QP_ACCESS_ERR, align 4
  %58 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %6, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  br label %65

59:                                               ; preds = %26
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %3, align 8
  %62 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  br label %74

65:                                               ; preds = %56, %53, %50, %47, %44, %41, %38, %35
  %66 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %67 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %66, i32 0, i32 1
  %68 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %67, align 8
  %69 = bitcast %struct.ib_event.0* %6 to %struct.ib_event*
  %70 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %71 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 %68(%struct.ib_event* %69, i32 %72)
  br label %74

74:                                               ; preds = %59, %65, %21
  ret void
}

declare dso_local %struct.TYPE_6__* @to_mibqp(%struct.mlx5_core_qp*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
