; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_ib_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_mlx4_ib_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_qp = type { i32 }
%struct.ib_event = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.ib_qp* }
%struct.ib_qp = type { i32, i32 (%struct.ib_event.0*, i32)*, i32 }
%struct.ib_event.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, %struct.ib_qp }

@IB_EVENT_PATH_MIG = common dso_local global i32 0, align 4
@IB_EVENT_COMM_EST = common dso_local global i32 0, align 4
@IB_EVENT_SQ_DRAINED = common dso_local global i32 0, align 4
@IB_EVENT_QP_LAST_WQE_REACHED = common dso_local global i32 0, align 4
@IB_EVENT_QP_FATAL = common dso_local global i32 0, align 4
@IB_EVENT_PATH_MIG_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_REQ_ERR = common dso_local global i32 0, align 4
@IB_EVENT_QP_ACCESS_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unexpected event type %d on QP %06x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_qp*, i32)* @mlx4_ib_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_ib_qp_event(%struct.mlx4_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_event, align 8
  %6 = alloca %struct.ib_qp*, align 8
  store %struct.mlx4_qp* %0, %struct.mlx4_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx4_qp*, %struct.mlx4_qp** %3, align 8
  %8 = call %struct.TYPE_4__* @to_mibqp(%struct.mlx4_qp* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  store %struct.ib_qp* %9, %struct.ib_qp** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 134
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.mlx4_qp*, %struct.mlx4_qp** %3, align 8
  %14 = call %struct.TYPE_4__* @to_mibqp(%struct.mlx4_qp* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mlx4_qp*, %struct.mlx4_qp** %3, align 8
  %18 = call %struct.TYPE_4__* @to_mibqp(%struct.mlx4_qp* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store i32 %16, i32* %19, align 4
  br label %20

20:                                               ; preds = %12, %2
  %21 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 1
  %23 = load i32 (%struct.ib_event.0*, i32)*, i32 (%struct.ib_event.0*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.ib_event.0*, i32)* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %20
  %26 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %27 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %31 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.ib_qp* %30, %struct.ib_qp** %32, align 8
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %58 [
    i32 134, label %34
    i32 135, label %37
    i32 132, label %40
    i32 131, label %43
    i32 129, label %46
    i32 133, label %49
    i32 128, label %52
    i32 130, label %55
  ]

34:                                               ; preds = %25
  %35 = load i32, i32* @IB_EVENT_PATH_MIG, align 4
  %36 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  br label %64

37:                                               ; preds = %25
  %38 = load i32, i32* @IB_EVENT_COMM_EST, align 4
  %39 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  br label %64

40:                                               ; preds = %25
  %41 = load i32, i32* @IB_EVENT_SQ_DRAINED, align 4
  %42 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  br label %64

43:                                               ; preds = %25
  %44 = load i32, i32* @IB_EVENT_QP_LAST_WQE_REACHED, align 4
  %45 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  br label %64

46:                                               ; preds = %25
  %47 = load i32, i32* @IB_EVENT_QP_FATAL, align 4
  %48 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  br label %64

49:                                               ; preds = %25
  %50 = load i32, i32* @IB_EVENT_PATH_MIG_ERR, align 4
  %51 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  br label %64

52:                                               ; preds = %25
  %53 = load i32, i32* @IB_EVENT_QP_REQ_ERR, align 4
  %54 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  br label %64

55:                                               ; preds = %25
  %56 = load i32, i32* @IB_EVENT_QP_ACCESS_ERR, align 4
  %57 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %5, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  br label %64

58:                                               ; preds = %25
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.mlx4_qp*, %struct.mlx4_qp** %3, align 8
  %61 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62)
  br label %73

64:                                               ; preds = %55, %52, %49, %46, %43, %40, %37, %34
  %65 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %66 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %65, i32 0, i32 1
  %67 = load i32 (%struct.ib_event.0*, i32)*, i32 (%struct.ib_event.0*, i32)** %66, align 8
  %68 = bitcast %struct.ib_event* %5 to %struct.ib_event.0*
  %69 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %70 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %67(%struct.ib_event.0* %68, i32 %71)
  br label %73

73:                                               ; preds = %58, %64, %20
  ret void
}

declare dso_local %struct.TYPE_4__* @to_mibqp(%struct.mlx4_qp*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
