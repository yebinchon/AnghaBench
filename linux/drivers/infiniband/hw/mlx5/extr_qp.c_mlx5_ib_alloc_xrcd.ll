; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_alloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_alloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_xrcd = type { %struct.ib_xrcd, i32 }

@xrc = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_xrcd* @mlx5_ib_alloc_xrcd(%struct.ib_device* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_xrcd*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.ib_udata*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_xrcd*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %5, align 8
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = call %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device* %9)
  store %struct.mlx5_ib_dev* %10, %struct.mlx5_ib_dev** %6, align 8
  %11 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @xrc, align 4
  %15 = call i32 @MLX5_CAP_GEN(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOSYS, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.ib_xrcd* @ERR_PTR(i32 %19)
  store %struct.ib_xrcd* %20, %struct.ib_xrcd** %3, align 8
  br label %48

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mlx5_ib_xrcd* @kmalloc(i32 8, i32 %22)
  store %struct.mlx5_ib_xrcd* %23, %struct.mlx5_ib_xrcd** %7, align 8
  %24 = load %struct.mlx5_ib_xrcd*, %struct.mlx5_ib_xrcd** %7, align 8
  %25 = icmp ne %struct.mlx5_ib_xrcd* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ib_xrcd* @ERR_PTR(i32 %28)
  store %struct.ib_xrcd* %29, %struct.ib_xrcd** %3, align 8
  br label %48

30:                                               ; preds = %21
  %31 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx5_ib_xrcd*, %struct.mlx5_ib_xrcd** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_xrcd, %struct.mlx5_ib_xrcd* %34, i32 0, i32 1
  %36 = call i32 @mlx5_cmd_xrcd_alloc(i32 %33, i32* %35, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.mlx5_ib_xrcd*, %struct.mlx5_ib_xrcd** %7, align 8
  %41 = call i32 @kfree(%struct.mlx5_ib_xrcd* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = call %struct.ib_xrcd* @ERR_PTR(i32 %43)
  store %struct.ib_xrcd* %44, %struct.ib_xrcd** %3, align 8
  br label %48

45:                                               ; preds = %30
  %46 = load %struct.mlx5_ib_xrcd*, %struct.mlx5_ib_xrcd** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_xrcd, %struct.mlx5_ib_xrcd* %46, i32 0, i32 0
  store %struct.ib_xrcd* %47, %struct.ib_xrcd** %3, align 8
  br label %48

48:                                               ; preds = %45, %39, %26, %17
  %49 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  ret %struct.ib_xrcd* %49
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(%struct.ib_device*) #1

declare dso_local i32 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local %struct.ib_xrcd* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_ib_xrcd* @kmalloc(i32, i32) #1

declare dso_local i32 @mlx5_cmd_xrcd_alloc(i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_xrcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
