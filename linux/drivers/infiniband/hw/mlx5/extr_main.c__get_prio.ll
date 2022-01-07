; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c__get_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c__get_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_namespace = type { i32 }
%struct.mlx5_ib_flow_prio = type { i64, %struct.mlx5_flow_table* }
%struct.mlx5_flow_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_flow_prio* (%struct.mlx5_flow_namespace*, %struct.mlx5_ib_flow_prio*, i32, i32, i32, i32)* @_get_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_flow_prio* @_get_prio(%struct.mlx5_flow_namespace* %0, %struct.mlx5_ib_flow_prio* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %8 = alloca %struct.mlx5_flow_namespace*, align 8
  %9 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_flow_table*, align 8
  store %struct.mlx5_flow_namespace* %0, %struct.mlx5_flow_namespace** %8, align 8
  store %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_ib_flow_prio** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.mlx5_flow_namespace*, %struct.mlx5_flow_namespace** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call %struct.mlx5_flow_table* @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace* %15, i32 %16, i32 %17, i32 %18, i32 0, i32 %19)
  store %struct.mlx5_flow_table* %20, %struct.mlx5_flow_table** %14, align 8
  %21 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %22 = call i64 @IS_ERR(%struct.mlx5_flow_table* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %26 = call %struct.mlx5_ib_flow_prio* @ERR_CAST(%struct.mlx5_flow_table* %25)
  store %struct.mlx5_ib_flow_prio* %26, %struct.mlx5_ib_flow_prio** %7, align 8
  br label %34

27:                                               ; preds = %6
  %28 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %14, align 8
  %29 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %9, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %29, i32 0, i32 1
  store %struct.mlx5_flow_table* %28, %struct.mlx5_flow_table** %30, align 8
  %31 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %9, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %9, align 8
  store %struct.mlx5_ib_flow_prio* %33, %struct.mlx5_ib_flow_prio** %7, align 8
  br label %34

34:                                               ; preds = %27, %24
  %35 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %7, align 8
  ret %struct.mlx5_ib_flow_prio* %35
}

declare dso_local %struct.mlx5_flow_table* @mlx5_create_auto_grouped_flow_table(%struct.mlx5_flow_namespace*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_table*) #1

declare dso_local %struct.mlx5_ib_flow_prio* @ERR_CAST(%struct.mlx5_flow_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
