; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_raw_packet_qp_tis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_raw_packet_qp_tis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_sq = type { i32 }
%struct.ib_pd = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*, %struct.ib_pd*)* @destroy_raw_packet_qp_tis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_raw_packet_qp_tis(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_sq* %1, %struct.ib_pd* %2) #0 {
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_ib_sq*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.mlx5_ib_sq* %1, %struct.mlx5_ib_sq** %5, align 8
  store %struct.ib_pd* %2, %struct.ib_pd** %6, align 8
  %7 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %14 = call %struct.TYPE_2__* @to_mpd(%struct.ib_pd* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mlx5_cmd_destroy_tis(i32 %9, i32 %12, i32 %16)
  ret void
}

declare dso_local i32 @mlx5_cmd_destroy_tis(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @to_mpd(%struct.ib_pd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
