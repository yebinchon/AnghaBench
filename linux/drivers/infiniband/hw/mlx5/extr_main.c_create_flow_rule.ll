; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_create_flow_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_create_flow_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_flow_handler = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_flow_prio = type { i32 }
%struct.ib_flow_attr = type { i32 }
%struct.mlx5_flow_destination = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_flow_handler* (%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_flow_destination*)* @create_flow_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_flow_handler* @create_flow_rule(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_flow_prio* %1, %struct.ib_flow_attr* %2, %struct.mlx5_flow_destination* %3) #0 {
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %7 = alloca %struct.ib_flow_attr*, align 8
  %8 = alloca %struct.mlx5_flow_destination*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_ib_flow_prio** %6, align 8
  store %struct.ib_flow_attr* %2, %struct.ib_flow_attr** %7, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %8, align 8
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %10 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %6, align 8
  %11 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %7, align 8
  %12 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %13 = call %struct.mlx5_ib_flow_handler* @_create_flow_rule(%struct.mlx5_ib_dev* %9, %struct.mlx5_ib_flow_prio* %10, %struct.ib_flow_attr* %11, %struct.mlx5_flow_destination* %12, i32 0, i32* null)
  ret %struct.mlx5_ib_flow_handler* %13
}

declare dso_local %struct.mlx5_ib_flow_handler* @_create_flow_rule(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_flow_destination*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
