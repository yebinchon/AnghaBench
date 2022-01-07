; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_add_mc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_main.c_mlx4_ib_add_mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.mlx4_ib_qp = type { i32 }
%union.ib_gid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_add_mc(%struct.mlx4_ib_dev* %0, %struct.mlx4_ib_qp* %1, %union.ib_gid* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_ib_dev*, align 8
  %6 = alloca %struct.mlx4_ib_qp*, align 8
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %5, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %6, align 8
  store %union.ib_gid* %2, %union.ib_gid** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %11 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

15:                                               ; preds = %3
  %16 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.net_device**, %struct.net_device*** %22, align 8
  %24 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %6, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 %28
  %30 = load %struct.net_device*, %struct.net_device** %29, align 8
  store %struct.net_device* %30, %struct.net_device** %8, align 8
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = icmp ne %struct.net_device* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = call i32 @dev_hold(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %33, %15
  %37 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %5, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load %struct.net_device*, %struct.net_device** %8, align 8
  %42 = icmp ne %struct.net_device* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  store i32 1, i32* %9, align 4
  %44 = load %struct.net_device*, %struct.net_device** %8, align 8
  %45 = call i32 @dev_put(%struct.net_device* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %46, %14
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
