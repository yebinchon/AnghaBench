; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_check_dm_type_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_check_dm_type_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }

@memic = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@sw_owner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32)* @check_dm_type_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_dm_type_support(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %47 [
    i32 129, label %7
    i32 128, label %18
    i32 130, label %18
  ]

7:                                                ; preds = %2
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @memic, align 4
  %12 = call i32 @MLX5_CAP_DEV_MEM(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %7
  br label %47

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %20 = call i32 @capable(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @CAP_NET_RAW, align 4
  %24 = call i32 @capable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %22
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @sw_owner, align 4
  %34 = call i32 @MLX5_CAP_FLOWTABLE_NIC_RX(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @sw_owner, align 4
  %41 = call i32 @MLX5_CAP_FLOWTABLE_NIC_TX(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %36, %29
  br label %47

47:                                               ; preds = %2, %46, %17
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %43, %26, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @MLX5_CAP_DEV_MEM(i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE_NIC_RX(i32, i32) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE_NIC_TX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
