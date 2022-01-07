; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_dealloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_dealloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"failed to dealloc xrcdn 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_dealloc_xrcd(%struct.ib_xrcd* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_xrcd*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ib_xrcd* %0, %struct.ib_xrcd** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %8 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %9 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mlx5_ib_dev* @to_mdev(i32 %10)
  store %struct.mlx5_ib_dev* %11, %struct.mlx5_ib_dev** %5, align 8
  %12 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %13 = call %struct.TYPE_2__* @to_mxrcd(%struct.ib_xrcd* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @mlx5_cmd_xrcd_dealloc(i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %2
  %28 = load %struct.ib_xrcd*, %struct.ib_xrcd** %3, align 8
  %29 = call i32 @kfree(%struct.ib_xrcd* %28)
  ret i32 0
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.TYPE_2__* @to_mxrcd(%struct.ib_xrcd*) #1

declare dso_local i32 @mlx5_cmd_xrcd_dealloc(i32, i32, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ib_xrcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
