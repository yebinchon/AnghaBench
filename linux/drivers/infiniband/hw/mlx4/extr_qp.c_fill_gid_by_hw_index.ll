; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_fill_gid_by_hw_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_fill_gid_by_hw_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.mlx4_ib_iboe }
%struct.mlx4_ib_iboe = type { i32, %struct.mlx4_port_gid_table* }
%struct.mlx4_port_gid_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%union.ib_gid = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i32, i32, %union.ib_gid*, i32*)* @fill_gid_by_hw_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_gid_by_hw_index(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, %union.ib_gid* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_ib_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ib_gid*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx4_ib_iboe*, align 8
  %13 = alloca %struct.mlx4_port_gid_table*, align 8
  %14 = alloca i64, align 8
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ib_gid* %3, %union.ib_gid** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %15, i32 0, i32 0
  store %struct.mlx4_ib_iboe* %16, %struct.mlx4_ib_iboe** %12, align 8
  %17 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %12, align 8
  %18 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %17, i32 0, i32 1
  %19 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %19, i64 %22
  store %struct.mlx4_port_gid_table* %23, %struct.mlx4_port_gid_table** %13, align 8
  %24 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %12, align 8
  %25 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %24, i32 0, i32 0
  %26 = load i64, i64* %14, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %29 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %13, align 8
  %30 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @memcpy(%union.ib_gid* %28, i32* %35, i32 4)
  %37 = load %struct.mlx4_port_gid_table*, %struct.mlx4_port_gid_table** %13, align 8
  %38 = getelementptr inbounds %struct.mlx4_port_gid_table, %struct.mlx4_port_gid_table* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.mlx4_ib_iboe*, %struct.mlx4_ib_iboe** %12, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_iboe, %struct.mlx4_ib_iboe* %46, i32 0, i32 0
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load %union.ib_gid*, %union.ib_gid** %10, align 8
  %51 = call i64 @rdma_is_zero_gid(%union.ib_gid* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %5
  %54 = load i32, i32* @ENOENT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %57

56:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(%union.ib_gid*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @rdma_is_zero_gid(%union.ib_gid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
