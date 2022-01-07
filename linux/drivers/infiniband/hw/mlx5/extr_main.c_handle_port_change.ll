; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_handle_port_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_handle_port_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.mlx5_eqe = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ib_event = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ACTIVE = common dso_local global i32 0, align 4
@IB_EVENT_PORT_ERR = common dso_local global i32 0, align 4
@IB_EVENT_LID_CHANGE = common dso_local global i32 0, align 4
@IB_EVENT_PKEY_CHANGE = common dso_local global i32 0, align 4
@IB_EVENT_GID_CHANGE = common dso_local global i32 0, align 4
@IB_EVENT_CLIENT_REREGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_eqe*, %struct.ib_event*)* @handle_port_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_port_change(%struct.mlx5_ib_dev* %0, %struct.mlx5_eqe* %1, %struct.ib_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_eqe*, align 8
  %7 = alloca %struct.ib_event*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_eqe* %1, %struct.mlx5_eqe** %6, align 8
  store %struct.ib_event* %2, %struct.ib_event** %7, align 8
  %9 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %6, align 8
  %10 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 4
  %15 = and i32 %14, 15
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.ib_event*, %struct.ib_event** %7, align 8
  %18 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %6, align 8
  %21 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %72 [
    i32 134, label %23
    i32 132, label %23
    i32 130, label %23
    i32 129, label %46
    i32 128, label %50
    i32 131, label %64
    i32 133, label %68
  ]

23:                                               ; preds = %3, %3, %3
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @mlx5_ib_port_link_layer(i32* %25, i32 %26)
  %28 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %76

33:                                               ; preds = %23
  %34 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 134
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @IB_EVENT_PORT_ACTIVE, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @IB_EVENT_PORT_ERR, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.ib_event*, %struct.ib_event** %7, align 8
  %45 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %75

46:                                               ; preds = %3
  %47 = load i32, i32* @IB_EVENT_LID_CHANGE, align 4
  %48 = load %struct.ib_event*, %struct.ib_event** %7, align 8
  %49 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %75

50:                                               ; preds = %3
  %51 = load i32, i32* @IB_EVENT_PKEY_CHANGE, align 4
  %52 = load %struct.ib_event*, %struct.ib_event** %7, align 8
  %53 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = call i32 @schedule_work(i32* %62)
  br label %75

64:                                               ; preds = %3
  %65 = load i32, i32* @IB_EVENT_GID_CHANGE, align 4
  %66 = load %struct.ib_event*, %struct.ib_event** %7, align 8
  %67 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %75

68:                                               ; preds = %3
  %69 = load i32, i32* @IB_EVENT_CLIENT_REREGISTER, align 4
  %70 = load %struct.ib_event*, %struct.ib_event** %7, align 8
  %71 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %75

72:                                               ; preds = %3
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %76

75:                                               ; preds = %68, %64, %50, %46, %42
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %72, %30
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @mlx5_ib_port_link_layer(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
