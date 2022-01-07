; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_destroy_flow_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_destroy_flow_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow_action = type { i32 }
%struct.mlx5_ib_flow_action = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_flow_action*)* @mlx5_ib_destroy_flow_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_destroy_flow_action(%struct.ib_flow_action* %0) #0 {
  %2 = alloca %struct.ib_flow_action*, align 8
  %3 = alloca %struct.mlx5_ib_flow_action*, align 8
  store %struct.ib_flow_action* %0, %struct.ib_flow_action** %2, align 8
  %4 = load %struct.ib_flow_action*, %struct.ib_flow_action** %2, align 8
  %5 = call %struct.mlx5_ib_flow_action* @to_mflow_act(%struct.ib_flow_action* %4)
  store %struct.mlx5_ib_flow_action* %5, %struct.mlx5_ib_flow_action** %3, align 8
  %6 = load %struct.ib_flow_action*, %struct.ib_flow_action** %2, align 8
  %7 = getelementptr inbounds %struct.ib_flow_action, %struct.ib_flow_action* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %18 [
    i32 129, label %9
    i32 128, label %15
  ]

9:                                                ; preds = %1
  %10 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mlx5_accel_esp_destroy_xfrm(i32 %13)
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %3, align 8
  %17 = call i32 @mlx5_ib_destroy_flow_action_raw(%struct.mlx5_ib_flow_action* %16)
  br label %20

18:                                               ; preds = %1
  %19 = call i32 @WARN_ON(i32 1)
  br label %20

20:                                               ; preds = %18, %15, %9
  %21 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %3, align 8
  %22 = call i32 @kfree(%struct.mlx5_ib_flow_action* %21)
  ret i32 0
}

declare dso_local %struct.mlx5_ib_flow_action* @to_mflow_act(%struct.ib_flow_action*) #1

declare dso_local i32 @mlx5_accel_esp_destroy_xfrm(i32) #1

declare dso_local i32 @mlx5_ib_destroy_flow_action_raw(%struct.mlx5_ib_flow_action*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_flow_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
