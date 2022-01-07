; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_init_node_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_init_node_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_smp = type { i64, i32 }

@MLX4_MAD_IFC_IGNORE_KEYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NODE_DESC = common dso_local global i32 0, align 4
@MLX4_MAD_IFC_NET_VIEW = common dso_local global i32 0, align 4
@IB_DEVICE_NODE_DESC_MAX = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NODE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*)* @init_node_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_node_data(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca %struct.mlx4_ib_dev*, align 8
  %3 = alloca %struct.ib_smp*, align 8
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %2, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %3, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %4, align 8
  %7 = load i32, i32* @MLX4_MAD_IFC_IGNORE_KEYS, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ib_smp* @kzalloc(i32 16, i32 %10)
  store %struct.ib_smp* %11, %struct.ib_smp** %3, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ib_smp* @kmalloc(i32 16, i32 %12)
  store %struct.ib_smp* %13, %struct.ib_smp** %4, align 8
  %14 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %15 = icmp ne %struct.ib_smp* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %18 = icmp ne %struct.ib_smp* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %1
  br label %84

20:                                               ; preds = %16
  %21 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %22 = call i32 @init_query_mad(%struct.ib_smp* %21)
  %23 = load i32, i32* @IB_SMP_ATTR_NODE_DESC, align 4
  %24 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %25 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %27 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i64 @mlx4_is_master(%struct.TYPE_4__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load i32, i32* @MLX4_MAD_IFC_NET_VIEW, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %20
  %36 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %39 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %40 = call i32 @mlx4_MAD_IFC(%struct.mlx4_ib_dev* %36, i32 %37, i32 1, i32* null, i32* null, %struct.ib_smp* %38, %struct.ib_smp* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %84

44:                                               ; preds = %35
  %45 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %50 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @IB_DEVICE_NODE_DESC_MAX, align 4
  %53 = call i32 @memcpy(i32* %48, i64 %51, i32 %52)
  %54 = load i32, i32* @IB_SMP_ATTR_NODE_INFO, align 4
  %55 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %56 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %60 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %61 = call i32 @mlx4_MAD_IFC(%struct.mlx4_ib_dev* %57, i32 %58, i32 1, i32* null, i32* null, %struct.ib_smp* %59, %struct.ib_smp* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %44
  br label %84

65:                                               ; preds = %44
  %66 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %67 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 32
  %70 = inttoptr i64 %69 to i32*
  %71 = call i32 @be32_to_cpup(i32* %70)
  %72 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %2, align 8
  %77 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %80 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 12
  %83 = call i32 @memcpy(i32* %78, i64 %82, i32 8)
  br label %84

84:                                               ; preds = %65, %64, %43, %19
  %85 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %86 = call i32 @kfree(%struct.ib_smp* %85)
  %87 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %88 = call i32 @kfree(%struct.ib_smp* %87)
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i64 @mlx4_is_master(%struct.TYPE_4__*) #1

declare dso_local i32 @mlx4_MAD_IFC(%struct.mlx4_ib_dev*, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
