; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_put_native_port_mdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_put_native_port_mdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.mlx5_ib_port*, i32, i32 }
%struct.mlx5_ib_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlx5_ib_multiport_info* }
%struct.mlx5_ib_multiport_info = type { i32, i64, i32, i64 }

@IB_LINK_LAYER_ETHERNET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_ib_put_native_port_mdev(%struct.mlx5_ib_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_multiport_info*, align 8
  %7 = alloca %struct.mlx5_ib_port*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @mlx5_ib_port_link_layer(i32* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @mlx5_core_mp_enabled(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IB_LINK_LAYER_ETHERNET, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %2
  br label %68

22:                                               ; preds = %17
  %23 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %23, i32 0, i32 0
  %25 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %25, i64 %28
  store %struct.mlx5_ib_port* %29, %struct.mlx5_ib_port** %7, align 8
  %30 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @spin_lock(i32* %32)
  %34 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %34, i32 0, i32 0
  %36 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %36, i64 %39
  %41 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %42, align 8
  store %struct.mlx5_ib_multiport_info* %43, %struct.mlx5_ib_multiport_info** %6, align 8
  %44 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %22
  br label %63

49:                                               ; preds = %22
  %50 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %51, align 8
  %54 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %6, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.mlx5_ib_multiport_info*, %struct.mlx5_ib_multiport_info** %6, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_multiport_info, %struct.mlx5_ib_multiport_info* %59, i32 0, i32 0
  %61 = call i32 @complete(i32* %60)
  br label %62

62:                                               ; preds = %58, %49
  br label %63

63:                                               ; preds = %62, %48
  %64 = load %struct.mlx5_ib_port*, %struct.mlx5_ib_port** %7, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_port, %struct.mlx5_ib_port* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  br label %68

68:                                               ; preds = %63, %21
  ret void
}

declare dso_local i32 @mlx5_ib_port_link_layer(i32*, i32) #1

declare dso_local i32 @mlx5_core_mp_enabled(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
