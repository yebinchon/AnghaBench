; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_init_delay_drop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_init_delay_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.mlx5_ib_dev*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IB_RAW_PACKET_CAP_DELAY_DROP = common dso_local global i32 0, align 4
@MLX5_MAX_DELAY_DROP_TIMEOUT_MS = common dso_local global i32 0, align 4
@delay_drop_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to init delay drop debugfs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*)* @init_delay_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_delay_drop(%struct.mlx5_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx5_ib_dev*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %2, align 8
  %3 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IB_RAW_PACKET_CAP_DELAY_DROP, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 6
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %18 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  store %struct.mlx5_ib_dev* %17, %struct.mlx5_ib_dev** %20, align 8
  %21 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* @MLX5_MAX_DELAY_DROP_TIMEOUT_MS, align 4
  %25 = mul nsw i32 %24, 1000
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* @delay_drop_handler, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = call i32 @atomic_set(i32* %40, i32 0)
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %43 = call i64 @delay_drop_debugfs_init(%struct.mlx5_ib_dev* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %12
  %46 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %2, align 8
  %47 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %11, %45, %12
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @delay_drop_debugfs_init(%struct.mlx5_ib_dev*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
