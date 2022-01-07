; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_query_ext_port_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mad.c_mlx5_query_ext_port_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_smp = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MLX5_ATTR_EXTENDED_PORT_INFO = common dso_local global i32 0, align 4
@MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_ext_port_caps(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_smp*, align 8
  %6 = alloca %struct.ib_smp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.ib_smp* null, %struct.ib_smp** %5, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %6, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ib_smp* @kzalloc(i32 12, i32 %11)
  store %struct.ib_smp* %12, %struct.ib_smp** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ib_smp* @kmalloc(i32 12, i32 %13)
  store %struct.ib_smp* %14, %struct.ib_smp** %6, align 8
  %15 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %16 = icmp ne %struct.ib_smp* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %19 = icmp ne %struct.ib_smp* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %2
  br label %59

21:                                               ; preds = %17
  %22 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %23 = call i32 @init_query_mad(%struct.ib_smp* %22)
  %24 = load i32, i32* @MLX5_ATTR_EXTENDED_PORT_INFO, align 4
  %25 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %26 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @cpu_to_be32(i32 %27)
  %29 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %30 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %32 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %33 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %34 = call i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev* %31, i32 1, i32 1, i32 1, i32* null, i32* null, %struct.ib_smp* %32, %struct.ib_smp* %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %36 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be16_to_cpu(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @MLX_EXT_PORT_CAP_FLAG_EXTENDED_PORT_INFO, align 4
  br label %47

46:                                               ; preds = %41, %21
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 %48, i32* %58, align 4
  br label %59

59:                                               ; preds = %47, %20
  %60 = load %struct.ib_smp*, %struct.ib_smp** %5, align 8
  %61 = call i32 @kfree(%struct.ib_smp* %60)
  %62 = load %struct.ib_smp*, %struct.ib_smp** %6, align 8
  %63 = call i32 @kfree(%struct.ib_smp* %62)
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
