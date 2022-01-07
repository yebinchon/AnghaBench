; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_flow.c_mlx5_ib_flow_action_create_packet_reformat_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_flow.c_mlx5_ib_flow_action_create_packet_reformat_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_flow_action = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_ib_dev*, i32, i32 }

@MLX5_IB_FLOW_ACTION_PACKET_REFORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_flow_action*, i32, i32, i8*, i64)* @mlx5_ib_flow_action_create_packet_reformat_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_flow_action_create_packet_reformat_ctx(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_flow_action* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.mlx5_ib_flow_action*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %8, align 8
  store %struct.mlx5_ib_flow_action* %1, %struct.mlx5_ib_flow_action** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @mlx5_ib_ft_type_to_namespace(i32 %17, i32* %14)
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %16, align 4
  store i32 %22, i32* %7, align 4
  br label %64

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @mlx5_ib_dv_to_prm_packet_reforamt_type(i32 %24, i32* %15)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %16, align 4
  store i32 %29, i32* %7, align 4
  br label %64

30:                                               ; preds = %23
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i64, i64* %13, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @mlx5_packet_reformat_alloc(i32 %33, i32 %34, i64 %35, i8* %36, i32 %37)
  %39 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %9, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  %42 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %9, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %30
  %49 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %9, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %7, align 4
  br label %64

55:                                               ; preds = %30
  %56 = load i32, i32* @MLX5_IB_FLOW_ACTION_PACKET_REFORMAT, align 4
  %57 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %9, align 8
  %58 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %61 = load %struct.mlx5_ib_flow_action*, %struct.mlx5_ib_flow_action** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_flow_action, %struct.mlx5_ib_flow_action* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store %struct.mlx5_ib_dev* %60, %struct.mlx5_ib_dev** %63, align 8
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %55, %48, %28, %21
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @mlx5_ib_ft_type_to_namespace(i32, i32*) #1

declare dso_local i32 @mlx5_ib_dv_to_prm_packet_reforamt_type(i32, i32*) #1

declare dso_local i32 @mlx5_packet_reformat_alloc(i32, i32, i64, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
