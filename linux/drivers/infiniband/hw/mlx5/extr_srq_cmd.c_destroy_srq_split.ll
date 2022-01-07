; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_destroy_srq_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_srq_cmd.c_destroy_srq_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_core_srq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*)* @destroy_srq_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @destroy_srq_split(%struct.mlx5_ib_dev* %0, %struct.mlx5_core_srq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_core_srq*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_core_srq* %1, %struct.mlx5_core_srq** %5, align 8
  %6 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %14 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %15 = call i32 @destroy_srq_cmd(%struct.mlx5_ib_dev* %13, %struct.mlx5_core_srq* %14)
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_core_srq, %struct.mlx5_core_srq* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %29 [
    i32 128, label %21
    i32 129, label %25
  ]

21:                                               ; preds = %16
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %23 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %24 = call i32 @destroy_xrc_srq_cmd(%struct.mlx5_ib_dev* %22, %struct.mlx5_core_srq* %23)
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %16
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %27 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %28 = call i32 @destroy_xrq_cmd(%struct.mlx5_ib_dev* %26, %struct.mlx5_core_srq* %27)
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %31 = load %struct.mlx5_core_srq*, %struct.mlx5_core_srq** %5, align 8
  %32 = call i32 @destroy_rmp_cmd(%struct.mlx5_ib_dev* %30, %struct.mlx5_core_srq* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %25, %21, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @destroy_srq_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*) #1

declare dso_local i32 @destroy_xrc_srq_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*) #1

declare dso_local i32 @destroy_xrq_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*) #1

declare dso_local i32 @destroy_rmp_cmd(%struct.mlx5_ib_dev*, %struct.mlx5_core_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
