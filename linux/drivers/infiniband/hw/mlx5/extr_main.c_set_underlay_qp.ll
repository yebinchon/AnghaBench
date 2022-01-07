; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_set_underlay_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_set_underlay_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_flow_spec = type { i32, i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@ft_field_support = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@bth_dst_qp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_flow_spec*, i32)* @set_underlay_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_underlay_qp(%struct.mlx5_ib_dev* %0, %struct.mlx5_flow_spec* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_flow_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_flow_spec* %1, %struct.mlx5_flow_spec** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @fte_match_param, align 4
  %10 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @misc_parameters, align 4
  %14 = call i8* @MLX5_ADDR_OF(i32 %9, i32 %12, i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i32, i32* @fte_match_param, align 4
  %16 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @misc_parameters, align 4
  %20 = call i8* @MLX5_ADDR_OF(i32 %15, i32 %18, i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ft_field_support, i32 0, i32 0), align 4
  %28 = call i64 @MLX5_CAP_FLOWTABLE_NIC_RX(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i32, i32* @fte_match_set_misc, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @bth_dst_qp, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @MLX5_SET(i32 %31, i8* %32, i32 %33, i32 %34)
  %36 = load i32, i32* @fte_match_set_misc, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @bth_dst_qp, align 4
  %39 = call i32 @MLX5_SET(i32 %36, i8* %37, i32 %38, i32 16777215)
  br label %40

40:                                               ; preds = %30, %23, %3
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i64 @MLX5_CAP_FLOWTABLE_NIC_RX(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
