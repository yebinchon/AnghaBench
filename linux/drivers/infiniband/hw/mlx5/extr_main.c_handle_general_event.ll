; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_handle_general_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_handle_general_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_eqe = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ib_event = type { i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_eqe*, %struct.ib_event*)* @handle_general_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_general_event(%struct.mlx5_ib_dev* %0, %struct.mlx5_eqe* %1, %struct.ib_event* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_eqe*, align 8
  %6 = alloca %struct.ib_event*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_eqe* %1, %struct.mlx5_eqe** %5, align 8
  store %struct.ib_event* %2, %struct.ib_event** %6, align 8
  %8 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = ashr i32 %12, 4
  %14 = and i32 %13, 15
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %31 [
    i32 128, label %18
  ]

18:                                               ; preds = %3
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @mlx5_ib_port_link_layer(i32* %20, i32 %21)
  %23 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = call i32 @schedule_work(i32* %28)
  br label %30

30:                                               ; preds = %25, %18
  br label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @mlx5_ib_port_link_layer(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
