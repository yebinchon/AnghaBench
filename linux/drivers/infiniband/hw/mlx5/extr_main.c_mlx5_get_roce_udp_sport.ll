; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_get_roce_udp_sport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_get_roce_udp_sport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_gid_attr = type { i64 }

@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i64 0, align 8
@r_roce_min_src_udp_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_get_roce_udp_sport(%struct.mlx5_ib_dev* %0, %struct.ib_gid_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.ib_gid_attr*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store %struct.ib_gid_attr* %1, %struct.ib_gid_attr** %5, align 8
  %6 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %5, align 8
  %7 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @r_roce_min_src_udp_port, align 4
  %17 = call i32 @MLX5_CAP_ROCE(i32 %15, i32 %16)
  %18 = call i32 @cpu_to_be16(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @MLX5_CAP_ROCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
