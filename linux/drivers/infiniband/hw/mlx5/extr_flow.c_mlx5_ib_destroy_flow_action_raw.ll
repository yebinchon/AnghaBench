; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_flow.c_mlx5_ib_destroy_flow_action_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_flow.c_mlx5_ib_destroy_flow_action_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_flow_action = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_ib_destroy_flow_action_raw(%struct.mlx5_ib_flow_action* %0) #0 {
  %2 = alloca %struct.mlx5_ib_flow_action*, align 8
  store %struct.mlx5_ib_flow_action* %0, %struct.mlx5_ib_flow_action** %2, align 8
  %3 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %32 [
    i32 129, label %7
    i32 128, label %19
    i32 130, label %31
  ]

7:                                                ; preds = %1
  %8 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @mlx5_modify_header_dealloc(i32 %13, i32 %17)
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %2, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mlx5_packet_reformat_dealloc(i32 %25, i32 %29)
  br label %33

31:                                               ; preds = %1
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %31, %19, %7
  ret void
}

declare dso_local i32 @mlx5_modify_header_dealloc(i32, i32) #1

declare dso_local i32 @mlx5_packet_reformat_dealloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
