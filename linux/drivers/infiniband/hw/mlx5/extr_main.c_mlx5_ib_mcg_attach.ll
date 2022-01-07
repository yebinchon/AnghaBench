; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_mcg_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_main.c_mlx5_ib_mcg_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i64, i32 }
%union.ib_gid = type { i32 }
%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MLX5_IB_QP_UNDERLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Attaching a multi cast group to underlay QP is not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed attaching QPN 0x%x, MGID %pI6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %union.ib_gid*, i32)* @mlx5_ib_mcg_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_mcg_attach(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_ib_dev*, align 8
  %9 = alloca %struct.mlx5_ib_qp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.mlx5_ib_dev* @to_mdev(i32 %14)
  store %struct.mlx5_ib_dev* %15, %struct.mlx5_ib_dev** %8, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = call %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp* %16)
  store %struct.mlx5_ib_qp* %17, %struct.mlx5_ib_qp** %9, align 8
  %18 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %24 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call %struct.TYPE_2__* @to_mpd(i64 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  br label %30

29:                                               ; preds = %3
  br label %30

30:                                               ; preds = %29, %22
  %31 = phi i32 [ %28, %22 ], [ 0, %29 ]
  store i32 %31, i32* %11, align 4
  %32 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MLX5_IB_QP_UNDERLAY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %40 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %39, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %66

43:                                               ; preds = %30
  %44 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %45 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %48 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %49 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @mlx5_cmd_attach_mcg(i32 %46, %union.ib_gid* %47, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %43
  %56 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %8, align 8
  %57 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %58 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %61 = bitcast %union.ib_gid* %60 to i32*
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %55, %43
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %38
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx5_ib_qp* @to_mqp(%struct.ib_qp*) #1

declare dso_local %struct.TYPE_2__* @to_mpd(i64) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @mlx5_cmd_attach_mcg(i32, %union.ib_gid*, i32, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
