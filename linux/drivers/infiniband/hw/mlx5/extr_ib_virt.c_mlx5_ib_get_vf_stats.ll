; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_virt.c_mlx5_ib_get_vf_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_ib_virt.c_mlx5_ib_get_vf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.ifla_vf_stats = type { i8*, i8*, i8*, i8*, i8* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_core_dev* }

@query_vport_counter_out = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@received_ib_unicast = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@transmitted_ib_unicast = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@received_ib_multicast = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_get_vf_stats(%struct.ib_device* %0, i32 %1, i32 %2, %struct.ifla_vf_stats* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifla_vf_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_core_dev*, align 8
  %12 = alloca %struct.mlx5_ib_dev*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ifla_vf_stats* %3, %struct.ifla_vf_stats** %9, align 8
  %15 = load i32, i32* @query_vport_counter_out, align 4
  %16 = call i32 @MLX5_ST_SZ_BYTES(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %18 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %17)
  store %struct.mlx5_ib_dev* %18, %struct.mlx5_ib_dev** %12, align 8
  %19 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %12, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %19, i32 0, i32 0
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %11, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @kzalloc(i32 %22, i32 %23)
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %75

30:                                               ; preds = %4
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %13, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mlx5_core_query_vport_counter(%struct.mlx5_core_dev* %31, i32 1, i32 %32, i32 %33, i8* %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %71

40:                                               ; preds = %30
  %41 = load i32, i32* @query_vport_counter_out, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @received_ib_unicast, i32 0, i32 1), align 4
  %44 = call i8* @MLX5_GET64_PR(i32 %41, i8* %42, i32 %43)
  %45 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %46 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @query_vport_counter_out, align 4
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @transmitted_ib_unicast, i32 0, i32 1), align 4
  %50 = call i8* @MLX5_GET64_PR(i32 %47, i8* %48, i32 %49)
  %51 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %52 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @query_vport_counter_out, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @received_ib_unicast, i32 0, i32 0), align 4
  %56 = call i8* @MLX5_GET64_PR(i32 %53, i8* %54, i32 %55)
  %57 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %58 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @query_vport_counter_out, align 4
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @transmitted_ib_unicast, i32 0, i32 0), align 4
  %62 = call i8* @MLX5_GET64_PR(i32 %59, i8* %60, i32 %61)
  %63 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %64 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @query_vport_counter_out, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @received_ib_multicast, i32 0, i32 0), align 4
  %68 = call i8* @MLX5_GET64_PR(i32 %65, i8* %66, i32 %67)
  %69 = load %struct.ifla_vf_stats*, %struct.ifla_vf_stats** %9, align 8
  %70 = getelementptr inbounds %struct.ifla_vf_stats, %struct.ifla_vf_stats* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %40, %39
  %72 = load i8*, i8** %13, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = load i32, i32* %14, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %27
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx5_core_query_vport_counter(%struct.mlx5_core_dev*, i32, i32, i32, i8*, i32) #1

declare dso_local i8* @MLX5_GET64_PR(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
