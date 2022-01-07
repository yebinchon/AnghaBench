; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_destroy_dct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_mlx5_ib_destroy_dct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.mlx5_ib_qp*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@IB_QPS_RTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"failed to destroy DCT %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*)* @mlx5_ib_destroy_dct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_destroy_dct(%struct.mlx5_ib_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_ib_qp*, align 8
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %3, align 8
  %6 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %3, align 8
  %7 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.mlx5_ib_dev* @to_mdev(i32 %9)
  store %struct.mlx5_ib_dev* %10, %struct.mlx5_ib_dev** %4, align 8
  %11 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IB_QPS_RTR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @mlx5_core_destroy_dct(i32 %19, i32* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %40

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %35, align 8
  %37 = call i32 @kfree(%struct.mlx5_ib_qp* %36)
  %38 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %3, align 8
  %39 = call i32 @kfree(%struct.mlx5_ib_qp* %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %32, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_core_destroy_dct(i32, i32*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
