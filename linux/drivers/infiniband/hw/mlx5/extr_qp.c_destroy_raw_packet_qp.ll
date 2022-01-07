; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_raw_packet_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_destroy_raw_packet_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, %struct.mlx5_ib_raw_packet_qp }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_rq, %struct.mlx5_ib_sq }
%struct.mlx5_ib_rq = type { i32 }
%struct.mlx5_ib_sq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*)* @destroy_raw_packet_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_raw_packet_qp(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_qp*, align 8
  %5 = alloca %struct.mlx5_ib_raw_packet_qp*, align 8
  %6 = alloca %struct.mlx5_ib_sq*, align 8
  %7 = alloca %struct.mlx5_ib_rq*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %4, align 8
  %8 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %8, i32 0, i32 4
  store %struct.mlx5_ib_raw_packet_qp* %9, %struct.mlx5_ib_raw_packet_qp** %5, align 8
  %10 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %10, i32 0, i32 1
  store %struct.mlx5_ib_sq* %11, %struct.mlx5_ib_sq** %6, align 8
  %12 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %12, i32 0, i32 0
  store %struct.mlx5_ib_rq* %13, %struct.mlx5_ib_rq** %7, align 8
  %14 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %21 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %7, align 8
  %22 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @destroy_raw_packet_qp_tir(%struct.mlx5_ib_dev* %20, %struct.mlx5_ib_rq* %21, i32 %24, i32 %28)
  %30 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %31 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %7, align 8
  %32 = call i32 @destroy_raw_packet_qp_rq(%struct.mlx5_ib_dev* %30, %struct.mlx5_ib_rq* %31)
  br label %33

33:                                               ; preds = %19, %2
  %34 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %41 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %6, align 8
  %42 = call i32 @destroy_raw_packet_qp_sq(%struct.mlx5_ib_dev* %40, %struct.mlx5_ib_sq* %41)
  %43 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %44 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %6, align 8
  %45 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @destroy_raw_packet_qp_tis(%struct.mlx5_ib_dev* %43, %struct.mlx5_ib_sq* %44, i32 %48)
  br label %50

50:                                               ; preds = %39, %33
  ret void
}

declare dso_local i32 @destroy_raw_packet_qp_tir(%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32, i32) #1

declare dso_local i32 @destroy_raw_packet_qp_rq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*) #1

declare dso_local i32 @destroy_raw_packet_qp_sq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*) #1

declare dso_local i32 @destroy_raw_packet_qp_tis(%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
