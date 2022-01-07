; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_alloc_transport_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_alloc_transport_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@log_max_transport_domain = common dso_local global i32 0, align 4
@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@disable_local_lb_uc = common dso_local global i32 0, align 4
@disable_local_lb_mc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32*, i32)* @mlx5_ib_alloc_transport_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_alloc_transport_domain(%struct.mlx5_ib_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @log_max_transport_domain, align 4
  %13 = call i64 @MLX5_CAP_GEN(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @mlx5_cmd_alloc_transport_domain(i32 %19, i32* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %16
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @port_type, align 4
  %32 = call i64 @MLX5_CAP_GEN(i32 %30, i32 %31)
  %33 = load i64, i64* @MLX5_CAP_PORT_TYPE_ETH, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %49, label %35

35:                                               ; preds = %27
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @disable_local_lb_uc, align 4
  %40 = call i64 @MLX5_CAP_GEN(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @disable_local_lb_mc, align 4
  %47 = call i64 @MLX5_CAP_GEN(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42, %27
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %54

51:                                               ; preds = %42, %35
  %52 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %53 = call i32 @mlx5_ib_enable_lb(%struct.mlx5_ib_dev* %52, i32 1, i32 0)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %51, %49, %25, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_cmd_alloc_transport_domain(i32, i32*, i32) #1

declare dso_local i32 @mlx5_ib_enable_lb(%struct.mlx5_ib_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
