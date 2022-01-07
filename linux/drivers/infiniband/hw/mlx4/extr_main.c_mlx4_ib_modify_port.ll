; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_modify_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_modify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_modify = type { i32, i32 }
%struct.mlx4_ib_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.ib_port_attr = type { i32 }

@MLX4_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@IB_PORT_RESET_QKEY_CNTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i64, i32, %struct.ib_port_modify*)* @mlx4_ib_modify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_modify_port(%struct.ib_device* %0, i64 %1, i32 %2, %struct.ib_port_modify* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_port_modify*, align 8
  %10 = alloca %struct.mlx4_ib_dev*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ib_port_attr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_port_modify* %3, %struct.ib_port_modify** %9, align 8
  %15 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %16 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %15)
  store %struct.mlx4_ib_dev* %16, %struct.mlx4_ib_dev** %10, align 8
  %17 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %72

33:                                               ; preds = %4
  %34 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @ib_query_port(%struct.ib_device* %37, i64 %38, %struct.ib_port_attr* %12)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %66

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %47 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %51 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  store i32 %54, i32* %13, align 4
  %55 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %10, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @IB_PORT_RESET_QKEY_CNTR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @mlx4_ib_SET_PORT(%struct.mlx4_ib_dev* %55, i64 %56, i32 %63, i32 %64)
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %43, %42
  %67 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %68 = call %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device* %67)
  %69 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %66, %32
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i64, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx4_ib_SET_PORT(%struct.mlx4_ib_dev*, i64, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
