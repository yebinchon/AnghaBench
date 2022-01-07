; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_mlx5_cmd_query_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_mlx5_cmd_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_core_srq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_srq_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_cmd_query_srq(%struct.mlx5_ib_dev* %0, %struct.mlx5_core_srq* %1, %struct.mlx5_srq_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_core_srq*, align 8
  %7 = alloca %struct.mlx5_srq_attr*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %6, align 8
  store %struct.mlx5_srq_attr* %2, %struct.mlx5_srq_attr** %7, align 8
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %16 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %17 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %18 = call i32 @query_srq_cmd(%struct.mlx5_ib_dev* %15, %struct.mlx5_core_srq* %16, %struct.mlx5_srq_attr* %17)
  store i32 %18, i32* %4, align 4
  br label %39

19:                                               ; preds = %3
  %20 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %34 [
    i32 128, label %24
    i32 129, label %29
  ]

24:                                               ; preds = %19
  %25 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %26 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %27 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %28 = call i32 @query_xrc_srq_cmd(%struct.mlx5_ib_dev* %25, %struct.mlx5_core_srq* %26, %struct.mlx5_srq_attr* %27)
  store i32 %28, i32* %4, align 4
  br label %39

29:                                               ; preds = %19
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %31 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %32 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %33 = call i32 @query_xrq_cmd(%struct.mlx5_ib_dev* %30, %struct.mlx5_core_srq* %31, %struct.mlx5_srq_attr* %32)
  store i32 %33, i32* %4, align 4
  br label %39

34:                                               ; preds = %19
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %36 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %6, align 8
  %37 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %7, align 8
  %38 = call i32 @query_rmp_cmd(%struct.mlx5_ib_dev* %35, %struct.mlx5_core_srq* %36, %struct.mlx5_srq_attr* %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %29, %24, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @query_srq_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*) #1

declare dso_local i32 @query_xrc_srq_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*) #1

declare dso_local i32 @query_xrq_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*) #1

declare dso_local i32 @query_rmp_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*, %struct.mlx5_srq_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
