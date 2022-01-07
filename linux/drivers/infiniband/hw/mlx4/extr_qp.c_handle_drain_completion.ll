; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_handle_drain_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_handle_drain_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32, i32, i32 }
%struct.mlx4_ib_drain_cqe = type { i32 }
%struct.mlx4_ib_dev = type { i32, %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mlx4_ib_cq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*)* }

@IB_POLL_DIRECT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.mlx4_ib_drain_cqe*, %struct.mlx4_ib_dev*)* @handle_drain_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_drain_completion(%struct.ib_cq* %0, %struct.mlx4_ib_drain_cqe* %1, %struct.mlx4_ib_dev* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca %struct.mlx4_ib_drain_cqe*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca %struct.mlx4_ib_cq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store %struct.mlx4_ib_drain_cqe* %1, %struct.mlx4_ib_drain_cqe** %5, align 8
  store %struct.mlx4_ib_dev* %2, %struct.mlx4_ib_dev** %6, align 8
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %11, i32 0, i32 1
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %12, align 8
  store %struct.mlx4_dev* %13, %struct.mlx4_dev** %7, align 8
  %14 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %15 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IB_POLL_DIRECT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %27, %19
  %21 = load %struct.mlx4_ib_drain_cqe*, %struct.mlx4_ib_drain_cqe** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_drain_cqe, %struct.mlx4_ib_drain_cqe* %21, i32 0, i32 0
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
  br label %93

31:                                               ; preds = %3
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %31
  %40 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %41 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %40)
  store %struct.mlx4_ib_cq* %41, %struct.mlx4_ib_cq** %8, align 8
  store i32 0, i32* %9, align 4
  %42 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %39
  %52 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %56

55:                                               ; preds = %39
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %51
  %57 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %65 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %78 [
    i32 129, label %67
    i32 128, label %74
  ]

67:                                               ; preds = %63
  %68 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %69 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %68, i32 0, i32 2
  %70 = call i32 @irq_poll_disable(i32* %69)
  %71 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %72 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %71, i32 0, i32 2
  %73 = call i32 @irq_poll_enable(i32* %72)
  br label %80

74:                                               ; preds = %63
  %75 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %76 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %75, i32 0, i32 1
  %77 = call i32 @cancel_work_sync(i32* %76)
  br label %80

78:                                               ; preds = %63
  %79 = call i32 @WARN_ON_ONCE(i32 1)
  br label %80

80:                                               ; preds = %78, %74, %67
  br label %81

81:                                               ; preds = %80, %56
  %82 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %83 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %84, align 8
  %86 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %8, align 8
  %87 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %86, i32 0, i32 0
  %88 = call i32 %85(%struct.TYPE_4__* %87)
  br label %89

89:                                               ; preds = %81, %31
  %90 = load %struct.mlx4_ib_drain_cqe*, %struct.mlx4_ib_drain_cqe** %5, align 8
  %91 = getelementptr inbounds %struct.mlx4_ib_drain_cqe, %struct.mlx4_ib_drain_cqe* %90, i32 0, i32 0
  %92 = call i32 @wait_for_completion(i32* %91)
  br label %93

93:                                               ; preds = %89, %30
  ret void
}

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ib_process_cq_direct(%struct.ib_cq*, i32) #1

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

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
