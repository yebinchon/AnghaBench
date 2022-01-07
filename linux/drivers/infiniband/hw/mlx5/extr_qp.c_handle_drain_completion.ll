; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_handle_drain_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_handle_drain_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, i32, i32 }
%struct.mlx5_ib_drain_cqe = type { i32 }
%struct.mlx5_ib_dev = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i64 }
%struct.mlx5_ib_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32*)* }

@IB_POLL_DIRECT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.mlx5_ib_drain_cqe*, %struct.mlx5_ib_dev*)* @handle_drain_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_drain_completion(%struct.ib_cq* %0, %struct.mlx5_ib_drain_cqe* %1, %struct.mlx5_ib_dev* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca %struct.mlx5_ib_drain_cqe*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5_ib_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store %struct.mlx5_ib_drain_cqe* %1, %struct.mlx5_ib_drain_cqe** %5, align 8
  store %struct.mlx5_ib_dev* %2, %struct.mlx5_ib_dev** %6, align 8
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %11, i32 0, i32 1
  %13 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  store %struct.mlx5_core_dev* %13, %struct.mlx5_core_dev** %7, align 8
  %14 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %15 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IB_POLL_DIRECT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %27, %19
  %21 = load %struct.mlx5_ib_drain_cqe*, %struct.mlx5_ib_drain_cqe** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_drain_cqe, %struct.mlx5_ib_drain_cqe* %21, i32 0, i32 0
  %23 = load i32, i32* @HZ, align 4
  %24 = sdiv i32 %23, 10
  %25 = call i64 @wait_for_completion_timeout(i32* %22, i32 %24)
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %29 = call i32 @ib_process_cq_direct(%struct.ib_cq* %28, i32 -1)
  br label %20

30:                                               ; preds = %20
  br label %91

31:                                               ; preds = %3
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %87

37:                                               ; preds = %31
  %38 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %39 = call %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq* %38)
  store %struct.mlx5_ib_cq* %39, %struct.mlx5_ib_cq** %8, align 8
  store i32 0, i32* %9, align 4
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @spin_lock_irqsave(i32* %41, i64 %42)
  %44 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %37
  %50 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %8, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %54

53:                                               ; preds = %37
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %63 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %76 [
    i32 129, label %65
    i32 128, label %72
  ]

65:                                               ; preds = %61
  %66 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %67 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %66, i32 0, i32 2
  %68 = call i32 @irq_poll_disable(i32* %67)
  %69 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %70 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %69, i32 0, i32 2
  %71 = call i32 @irq_poll_enable(i32* %70)
  br label %78

72:                                               ; preds = %61
  %73 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %74 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %73, i32 0, i32 1
  %75 = call i32 @cancel_work_sync(i32* %74)
  br label %78

76:                                               ; preds = %61
  %77 = call i32 @WARN_ON_ONCE(i32 1)
  br label %78

78:                                               ; preds = %76, %72, %65
  br label %79

79:                                               ; preds = %78, %54
  %80 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %8, align 8
  %81 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_2__*, i32*)*, i32 (%struct.TYPE_2__*, i32*)** %82, align 8
  %84 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %8, align 8
  %85 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %84, i32 0, i32 0
  %86 = call i32 %83(%struct.TYPE_2__* %85, i32* null)
  br label %87

87:                                               ; preds = %79, %31
  %88 = load %struct.mlx5_ib_drain_cqe*, %struct.mlx5_ib_drain_cqe** %5, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_drain_cqe, %struct.mlx5_ib_drain_cqe* %88, i32 0, i32 0
  %90 = call i32 @wait_for_completion(i32* %89)
  br label %91

91:                                               ; preds = %87, %30
  ret void
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ib_process_cq_direct(%struct.ib_cq*, i32) #1

declare dso_local %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @irq_poll_disable(i32*) #1

declare dso_local i32 @irq_poll_enable(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
