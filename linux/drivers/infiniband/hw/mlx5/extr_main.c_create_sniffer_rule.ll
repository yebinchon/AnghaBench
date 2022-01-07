; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_create_sniffer_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_create_sniffer_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow_attr = type { i32, i32 }
%struct.mlx5_ib_flow_handler = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_flow_prio = type { i32 }
%struct.mlx5_flow_destination = type { i32 }

@create_sniffer_rule.flow_attr = internal constant %struct.ib_flow_attr { i32 8, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_ib_flow_handler* (%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio*, %struct.mlx5_flow_destination*)* @create_sniffer_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_ib_flow_handler* @create_sniffer_rule(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_ib_flow_prio* %2, %struct.mlx5_flow_destination* %3) #0 {
  %5 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %8 = alloca %struct.mlx5_ib_flow_prio*, align 8
  %9 = alloca %struct.mlx5_flow_destination*, align 8
  %10 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %11 = alloca %struct.mlx5_ib_flow_handler*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_ib_flow_prio* %1, %struct.mlx5_ib_flow_prio** %7, align 8
  store %struct.mlx5_ib_flow_prio* %2, %struct.mlx5_ib_flow_prio** %8, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %9, align 8
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %14 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %7, align 8
  %15 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %9, align 8
  %16 = call %struct.mlx5_ib_flow_handler* @create_flow_rule(%struct.mlx5_ib_dev* %13, %struct.mlx5_ib_flow_prio* %14, %struct.ib_flow_attr* @create_sniffer_rule.flow_attr, %struct.mlx5_flow_destination* %15)
  store %struct.mlx5_ib_flow_handler* %16, %struct.mlx5_ib_flow_handler** %10, align 8
  %17 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %18 = call i64 @IS_ERR(%struct.mlx5_ib_flow_handler* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %22 = call i32 @PTR_ERR(%struct.mlx5_ib_flow_handler* %21)
  store i32 %22, i32* %12, align 4
  br label %52

23:                                               ; preds = %4
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %25 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %8, align 8
  %26 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %9, align 8
  %27 = call %struct.mlx5_ib_flow_handler* @create_flow_rule(%struct.mlx5_ib_dev* %24, %struct.mlx5_ib_flow_prio* %25, %struct.ib_flow_attr* @create_sniffer_rule.flow_attr, %struct.mlx5_flow_destination* %26)
  store %struct.mlx5_ib_flow_handler* %27, %struct.mlx5_ib_flow_handler** %11, align 8
  %28 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %29 = call i64 @IS_ERR(%struct.mlx5_ib_flow_handler* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %33 = call i32 @PTR_ERR(%struct.mlx5_ib_flow_handler* %32)
  store i32 %33, i32* %12, align 4
  br label %41

34:                                               ; preds = %23
  %35 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %11, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %35, i32 0, i32 1
  %37 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %37, i32 0, i32 1
  %39 = call i32 @list_add(i32* %36, i32* %38)
  %40 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  store %struct.mlx5_ib_flow_handler* %40, %struct.mlx5_ib_flow_handler** %5, align 8
  br label %55

41:                                               ; preds = %31
  %42 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_flow_handler, %struct.mlx5_ib_flow_handler* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @mlx5_del_flow_rules(i32 %44)
  %46 = load %struct.mlx5_ib_flow_prio*, %struct.mlx5_ib_flow_prio** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_flow_prio, %struct.mlx5_ib_flow_prio* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %10, align 8
  %51 = call i32 @kfree(%struct.mlx5_ib_flow_handler* %50)
  br label %52

52:                                               ; preds = %41, %20
  %53 = load i32, i32* %12, align 4
  %54 = call %struct.mlx5_ib_flow_handler* @ERR_PTR(i32 %53)
  store %struct.mlx5_ib_flow_handler* %54, %struct.mlx5_ib_flow_handler** %5, align 8
  br label %55

55:                                               ; preds = %52, %34
  %56 = load %struct.mlx5_ib_flow_handler*, %struct.mlx5_ib_flow_handler** %5, align 8
  ret %struct.mlx5_ib_flow_handler* %56
}

declare dso_local %struct.mlx5_ib_flow_handler* @create_flow_rule(%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_prio*, %struct.ib_flow_attr*, %struct.mlx5_flow_destination*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_ib_flow_handler*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_ib_flow_handler*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mlx5_del_flow_rules(i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_flow_handler*) #1

declare dso_local %struct.mlx5_ib_flow_handler* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
