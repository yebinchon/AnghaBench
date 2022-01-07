; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_dealloc_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_dealloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32 }
%struct.mlx5_ib_dev = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_ib_mw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@CONFIG_INFINIBAND_ON_DEMAND_PAGING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_dealloc_mw(%struct.ib_mw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_mw*, align 8
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_mw*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_mw* %0, %struct.ib_mw** %3, align 8
  %7 = load %struct.ib_mw*, %struct.ib_mw** %3, align 8
  %8 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mlx5_ib_dev* @to_mdev(i32 %9)
  store %struct.mlx5_ib_dev* %10, %struct.mlx5_ib_dev** %4, align 8
  %11 = load %struct.ib_mw*, %struct.ib_mw** %3, align 8
  %12 = call %struct.mlx5_ib_mw* @to_mmw(%struct.ib_mw* %11)
  store %struct.mlx5_ib_mw* %12, %struct.mlx5_ib_mw** %5, align 8
  %13 = load i32, i32* @CONFIG_INFINIBAND_ON_DEMAND_PAGING, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %1
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.mlx5_ib_mw*, %struct.mlx5_ib_mw** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_mw, %struct.mlx5_ib_mw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlx5_base_mkey(i32 %25)
  %27 = call i32 @xa_erase_irq(i32* %21, i32 %26)
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %28, i32 0, i32 1
  %30 = call i32 @synchronize_srcu(i32* %29)
  br label %31

31:                                               ; preds = %16, %1
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load %struct.mlx5_ib_mw*, %struct.mlx5_ib_mw** %5, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_mw, %struct.mlx5_ib_mw* %35, i32 0, i32 0
  %37 = call i32 @mlx5_core_destroy_mkey(%struct.TYPE_5__* %34, %struct.TYPE_6__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %31
  %43 = load %struct.mlx5_ib_mw*, %struct.mlx5_ib_mw** %5, align 8
  %44 = call i32 @kfree(%struct.mlx5_ib_mw* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_mw* @to_mmw(%struct.ib_mw*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @xa_erase_irq(i32*, i32) #1

declare dso_local i32 @mlx5_base_mkey(i32) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i32 @mlx5_core_destroy_mkey(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
