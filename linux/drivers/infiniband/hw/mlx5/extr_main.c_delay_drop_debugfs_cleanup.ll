; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_delay_drop_debugfs_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_delay_drop_debugfs_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*)* @delay_drop_debugfs_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delay_drop_debugfs_cleanup(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %3 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @debugfs_remove_recursive(i32 %15)
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i32 @kfree(%struct.TYPE_4__* %20)
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %24, align 8
  br label %25

25:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
