; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_gsi.c_get_tx_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_gsi.c_get_tx_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.mlx5_ib_gsi_qp = type { i32, %struct.ib_qp**, %struct.ib_qp* }
%struct.ib_ud_wr = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_qp* (%struct.mlx5_ib_gsi_qp*, %struct.ib_ud_wr*)* @get_tx_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_qp* @get_tx_qp(%struct.mlx5_ib_gsi_qp* %0, %struct.ib_ud_wr* %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.mlx5_ib_gsi_qp*, align 8
  %5 = alloca %struct.ib_ud_wr*, align 8
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_ib_gsi_qp* %0, %struct.mlx5_ib_gsi_qp** %4, align 8
  store %struct.ib_ud_wr* %1, %struct.ib_ud_wr** %5, align 8
  %8 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %8, i32 0, i32 2
  %10 = load %struct.ib_qp*, %struct.ib_qp** %9, align 8
  %11 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlx5_ib_dev* @to_mdev(i32 %12)
  store %struct.mlx5_ib_dev* %13, %struct.mlx5_ib_dev** %6, align 8
  %14 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %5, align 8
  %15 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %18 = call i32 @mlx5_ib_deth_sqpn_cap(%struct.mlx5_ib_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %21, i32 0, i32 2
  %23 = load %struct.ib_qp*, %struct.ib_qp** %22, align 8
  store %struct.ib_qp* %23, %struct.ib_qp** %3, align 8
  br label %39

24:                                               ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store %struct.ib_qp* null, %struct.ib_qp** %3, align 8
  br label %39

31:                                               ; preds = %24
  %32 = load %struct.mlx5_ib_gsi_qp*, %struct.mlx5_ib_gsi_qp** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_gsi_qp, %struct.mlx5_ib_gsi_qp* %32, i32 0, i32 1
  %34 = load %struct.ib_qp**, %struct.ib_qp*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ib_qp*, %struct.ib_qp** %34, i64 %36
  %38 = load %struct.ib_qp*, %struct.ib_qp** %37, align 8
  store %struct.ib_qp* %38, %struct.ib_qp** %3, align 8
  br label %39

39:                                               ; preds = %31, %30, %20
  %40 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  ret %struct.ib_qp* %40
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_ib_deth_sqpn_cap(%struct.mlx5_ib_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
