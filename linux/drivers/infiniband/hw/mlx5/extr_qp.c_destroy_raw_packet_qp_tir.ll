; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_raw_packet_qp_tir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_raw_packet_qp_tir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_rq = type { i32 }
%struct.ib_pd = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC = common dso_local global i32 0, align 4
@MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32, %struct.ib_pd*)* @destroy_raw_packet_qp_tir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_raw_packet_qp_tir(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_rq* %1, i32 %2, %struct.ib_pd* %3) #0 {
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca %struct.mlx5_ib_rq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_pd*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store %struct.mlx5_ib_rq* %1, %struct.mlx5_ib_rq** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_pd* %3, %struct.ib_pd** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC, align 4
  %11 = load i32, i32* @MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %17 = call i32 @mlx5_ib_disable_lb(%struct.mlx5_ib_dev* %16, i32 0, i32 1)
  br label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %26 = call %struct.TYPE_2__* @to_mpd(%struct.ib_pd* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlx5_cmd_destroy_tir(i32 %21, i32 %24, i32 %28)
  ret void
}

declare dso_local i32 @mlx5_ib_disable_lb(%struct.mlx5_ib_dev*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_destroy_tir(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @to_mpd(%struct.ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
