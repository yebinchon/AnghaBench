; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_get_native_port_mdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_get_native_port_mdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_ib_dev = type { %struct.mlx5_ib_port*, %struct.mlx5_core_dev*, i32 }
%struct.mlx5_ib_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlx5_ib_multiport_info* }
%struct.mlx5_ib_multiport_info = type { i32, i32, %struct.mlx5_core_dev*, i32 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_core_dev* @mlx5_ib_get_native_port_mdev(%struct.mlx5_ib_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca %struct.mlx5_ib_multiport_info*, align 8
  %11 = alloca %struct.mlx5_ib_port*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @mlx5_ib_port_link_layer(i32* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  store %struct.mlx5_core_dev* null, %struct.mlx5_core_dev** %9, align 8
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 1
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %17, align 8
  %19 = call i32 @mlx5_core_mp_enabled(%struct.mlx5_core_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21, %3
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %32, i32 0, i32 1
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %33, align 8
  store %struct.mlx5_core_dev* %34, %struct.mlx5_core_dev** %4, align 8
  br label %93

35:                                               ; preds = %21
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32*, i32** %7, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %41, i32 0, i32 0
  %43 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %43, i64 %46
  store %struct.mlx5_ib_port* %47, %struct.mlx5_ib_port** %11, align 8
  %48 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %11, align 8
  %49 = icmp ne %struct.mlx5_ib_port* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  store %struct.mlx5_core_dev* null, %struct.mlx5_core_dev** %4, align 8
  br label %93

51:                                               ; preds = %40
  %52 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %11, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %57 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %56, i32 0, i32 0
  %58 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %58, i64 %61
  %63 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %64, align 8
  store %struct.mlx5_ib_multiport_info* %65, %struct.mlx5_ib_multiport_info** %10, align 8
  %66 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %10, align 8
  %67 = icmp ne %struct.mlx5_ib_multiport_info* %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %51
  %69 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %10, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %68
  %74 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %10, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %74, i32 0, i32 2
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %75, align 8
  store %struct.mlx5_core_dev* %76, %struct.mlx5_core_dev** %9, align 8
  %77 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %10, align 8
  %78 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %10, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %81, %73
  br label %87

87:                                               ; preds = %86, %68, %51
  %88 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %11, align 8
  %89 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  store %struct.mlx5_core_dev* %92, %struct.mlx5_core_dev** %4, align 8
  br label %93

93:                                               ; preds = %87, %50, %31
  %94 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  ret %struct.mlx5_core_dev* %94
}

declare dso_local i32 @mlx5_ib_port_link_layer(i32*, i32) #1

declare dso_local i32 @mlx5_core_mp_enabled(%struct.mlx5_core_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
