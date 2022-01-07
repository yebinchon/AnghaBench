; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_mlx5_ib_poll_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_mlx5_ib_poll_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_wc = type { i32 }
%struct.mlx5_ib_cq = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_ib_qp = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i64 }

@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_poll_cq(%struct.ib_cq* %0, i32 %1, %struct.ib_wc* %2) #0 {
  %4 = alloca %struct.ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_wc*, align 8
  %7 = alloca %struct.mlx5_ib_cq*, align 8
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %6, align 8
  %14 = load %struct.ib_cq*, %struct.ib_cq** %4, align 8
  %15 = call %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq* %14)
  store %struct.mlx5_ib_cq* %15, %struct.mlx5_ib_cq** %7, align 8
  store %struct.mlx5_ib_qp* null, %struct.mlx5_ib_qp** %8, align 8
  %16 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mlx5_ib_dev* @to_mdev(i32 %19)
  store %struct.mlx5_ib_dev* %20, %struct.mlx5_ib_dev** %9, align 8
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %21, i32 0, i32 0
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %22, align 8
  store %struct.mlx5_core_dev* %23, %struct.mlx5_core_dev** %10, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %29 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %3
  %34 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %34, i32 0, i32 2
  %36 = call i32 @list_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %33
  %43 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %46 = call i32 @poll_soft_wc(%struct.mlx5_ib_cq* %43, i32 %44, %struct.ib_wc* %45, i32 1)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %42, %33
  %48 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %49, %50
  %52 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %52, i64 %54
  %56 = call i32 @mlx5_ib_poll_sw_comp(%struct.mlx5_ib_cq* %48, i32 %51, %struct.ib_wc* %55, i32* %13)
  br label %102

57:                                               ; preds = %3
  %58 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %58, i32 0, i32 2
  %60 = call i32 @list_empty(i32* %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %70 = call i32 @poll_soft_wc(%struct.mlx5_ib_cq* %67, i32 %68, %struct.ib_wc* %69, i32 0)
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %66, %57
  store i32 0, i32* %13, align 4
  br label %72

72:                                               ; preds = %91, %71
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %74, %75
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %80 = load %struct.ib_wc*, %struct.ib_wc** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %80, i64 %82
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %83, i64 %85
  %87 = call i64 @mlx5_poll_one(%struct.mlx5_ib_cq* %79, %struct.mlx5_ib_qp** %8, %struct.ib_wc* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %94

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %13, align 4
  br label %72

94:                                               ; preds = %89, %72
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %99 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %98, i32 0, i32 1
  %100 = call i32 @mlx5_cq_set_ci(i32* %99)
  br label %101

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %101, %47
  %103 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %7, align 8
  %104 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %103, i32 0, i32 0
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %107, %108
  ret i32 %109
}

declare dso_local %struct.mlx5_ib_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @poll_soft_wc(%struct.mlx5_ib_cq*, i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @mlx5_ib_poll_sw_comp(%struct.mlx5_ib_cq*, i32, %struct.ib_wc*, i32*) #1

declare dso_local i64 @mlx5_poll_one(%struct.mlx5_ib_cq*, %struct.mlx5_ib_qp**, %struct.ib_wc*) #1

declare dso_local i32 @mlx5_cq_set_ci(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
