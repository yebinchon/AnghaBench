; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_mlx5_cmd_arm_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_mlx5_cmd_arm_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_core_srq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_cmd_arm_srq(%struct.mlx5_ib_dev* %0, %struct.mlx5_core_srq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_core_srq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %18 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @arm_srq_cmd(%struct.mlx5_ib_dev* %17, %struct.mlx5_core_srq* %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %42

22:                                               ; preds = %4
  %23 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %24 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %37 [
    i32 128, label %27
    i32 129, label %32
  ]

27:                                               ; preds = %22
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %29 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @arm_xrc_srq_cmd(%struct.mlx5_ib_dev* %28, %struct.mlx5_core_srq* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %42

32:                                               ; preds = %22
  %33 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %34 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @arm_xrq_cmd(%struct.mlx5_ib_dev* %33, %struct.mlx5_core_srq* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %42

37:                                               ; preds = %22
  %38 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %39 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @arm_rmp_cmd(%struct.mlx5_ib_dev* %38, %struct.mlx5_core_srq* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %32, %27, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @arm_srq_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, i32, i32) #1

declare dso_local i32 @arm_xrc_srq_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, i32) #1

declare dso_local i32 @arm_xrq_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, i32) #1

declare dso_local i32 @arm_rmp_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
