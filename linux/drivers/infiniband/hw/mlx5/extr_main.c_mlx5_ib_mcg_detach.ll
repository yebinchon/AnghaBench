; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_mcg_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_mcg_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i64, i32 }
%union.ib_gid = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed detaching QPN 0x%x, MGID %pI6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %union.ib_gid*, i32)* @mlx5_ib_mcg_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_mcg_detach(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %11 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.mlx5_ib_dev* @to_mdev(i32 %12)
  store %struct.mlx5_ib_dev* %13, %struct.mlx5_ib_dev** %7, align 8
  %14 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %15 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %20 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.TYPE_2__* @to_mpd(i64 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %18
  %27 = phi i32 [ %24, %18 ], [ 0, %25 ]
  store i32 %27, i32* %9, align 4
  %28 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %32 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %33 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @mlx5_cmd_detach_mcg(i32 %30, %union.ib_gid* %31, i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %26
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %41 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %42 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %45 = bitcast %union.ib_gid* %44 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %39, %26
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.TYPE_2__* @to_mpd(i64) #1

declare dso_local i32 @mlx5_cmd_detach_mcg(i32, %union.ib_gid*, i32, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
