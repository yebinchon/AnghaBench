; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_modify_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_modify_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_port_modify = type { i32, i32 }
%struct.mlx5_ib_dev = type { i32, i32 }
%struct.ib_port_attr = type { i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i64 0, align 8
@ib_virt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %struct.ib_port_modify*)* @mlx5_ib_modify_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_modify_port(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ib_port_modify* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_port_modify*, align 8
  %10 = alloca %struct.mlx5_ib_dev*, align 8
  %11 = alloca %struct.ib_port_attr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ib_port_modify* %3, %struct.ib_port_modify** %9, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %18 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %17)
  store %struct.mlx5_ib_dev* %18, %struct.mlx5_ib_dev** %10, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @mlx5_ib_port_link_layer(%struct.ib_device* %19, i32 %20)
  %22 = load i64, i64* @IB_LINK_LAYER_INFINIBAND, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %92

28:                                               ; preds = %4
  %29 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %30 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ib_virt, align 4
  %33 = call i64 @MLX5_CAP_GEN(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %40 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %43 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  store i32 %45, i32* %14, align 4
  %46 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %47 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %51 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  store i32 %53, i32* %15, align 4
  %54 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @set_port_caps_atomic(%struct.mlx5_ib_dev* %54, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %92

59:                                               ; preds = %35, %28
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ib_query_port(%struct.ib_device* %63, i32 %64, %struct.ib_port_attr* %11)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %87

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.ib_port_attr, %struct.ib_port_attr* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %73 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %71, %74
  %76 = load %struct.ib_port_modify*, %struct.ib_port_modify** %9, align 8
  %77 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %75, %79
  store i32 %80, i32* %12, align 4
  %81 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %82 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 @mlx5_set_port_caps(i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %13, align 4
  br label %87

87:                                               ; preds = %69, %68
  %88 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %10, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %88, i32 0, i32 0
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %38, %27
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i64 @mlx5_ib_port_link_layer(%struct.ib_device*, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @set_port_caps_atomic(%struct.mlx5_ib_dev*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_query_port(%struct.ib_device*, i32, %struct.ib_port_attr*) #1

declare dso_local i32 @mlx5_set_port_caps(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
