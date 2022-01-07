; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_mlx5_ib_devx_init_event_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_mlx5_ib_devx_init_event_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, %struct.mlx5_devx_event_table }
%struct.mlx5_devx_event_table = type { i32, i32, i32 }

@devx_event_notifier = common dso_local global i32 0, align 4
@NOTIFY_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_ib_devx_init_event_table(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  %3 = alloca %struct.mlx5_devx_event_table*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %4 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %4, i32 0, i32 1
  store %struct.mlx5_devx_event_table* %5, %struct.mlx5_devx_event_table** %3, align 8
  %6 = load %struct.mlx5_devx_event_table*, %struct.mlx5_devx_event_table** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_devx_event_table, %struct.mlx5_devx_event_table* %6, i32 0, i32 2
  %8 = call i32 @xa_init(i32* %7)
  %9 = load %struct.mlx5_devx_event_table*, %struct.mlx5_devx_event_table** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_devx_event_table, %struct.mlx5_devx_event_table* %9, i32 0, i32 1
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.mlx5_devx_event_table*, %struct.mlx5_devx_event_table** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_devx_event_table, %struct.mlx5_devx_event_table* %12, i32 0, i32 0
  %14 = load i32, i32* @devx_event_notifier, align 4
  %15 = load i32, i32* @NOTIFY_ANY, align 4
  %16 = call i32 @MLX5_NB_INIT(i32* %13, i32 %14, i32 %15)
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx5_devx_event_table*, %struct.mlx5_devx_event_table** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_devx_event_table, %struct.mlx5_devx_event_table* %20, i32 0, i32 0
  %22 = call i32 @mlx5_eq_notifier_register(i32 %19, i32* %21)
  ret void
}

declare dso_local i32 @xa_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @MLX5_NB_INIT(i32*, i32, i32) #1

declare dso_local i32 @mlx5_eq_notifier_register(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
