; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_cq.c_mlx4_ib_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.mlx4_ib_cq = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_ib_qp = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.mlx4_ib_cq*, align 8
  %8 = alloca %struct.mlx4_ib_qp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_ib_dev*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %12 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %13 = call %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq* %12)
  store %struct.mlx4_ib_cq* %13, %struct.mlx4_ib_cq** %7, align 8
  store %struct.mlx4_ib_qp* null, %struct.mlx4_ib_qp** %8, align 8
  %14 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx4_ib_dev* @to_mdev(i32 %17)
  store %struct.mlx4_ib_dev* %18, %struct.mlx4_ib_dev** %11, align 8
  %19 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %19, i32 0, i32 0
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %11, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %37 = call i32 @mlx4_ib_poll_sw_comp(%struct.mlx4_ib_cq* %34, i32 %35, %struct.ib_wc* %36, i32* %10)
  br label %60

38:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %45 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %45, i64 %47
  %49 = call i64 @mlx4_ib_poll_one(%struct.mlx4_ib_cq* %44, %struct.mlx4_ib_qp** %8, %struct.ib_wc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %56

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %39

56:                                               ; preds = %51, %39
  %57 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %57, i32 0, i32 1
  %59 = call i32 @mlx4_cq_set_ci(i32* %58)
  br label %60

60:                                               ; preds = %56, %33
  %61 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %7, align 8
  %62 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %61, i32 0, i32 0
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local %struct.mlx4_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlx4_ib_poll_sw_comp(%struct.mlx4_ib_cq*, i32, %struct.ib_wc*, i32*) #1

declare dso_local i64 @mlx4_ib_poll_one(%struct.mlx4_ib_cq*, %struct.mlx4_ib_qp**, %struct.ib_wc*) #1

declare dso_local i32 @mlx4_cq_set_ci(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
