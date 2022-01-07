; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_begin_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_begin_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32 }
%struct.ib_send_wr = type { i32 }

@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, i8**, %struct.mlx5_wqe_ctrl_seg**, %struct.ib_send_wr*, i32*, i32*, i8**, i32)* @begin_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @begin_wqe(%struct.mlx5_ib_qp* %0, i8** %1, %struct.mlx5_wqe_ctrl_seg** %2, %struct.ib_send_wr* %3, i32* %4, i32* %5, i8** %6, i32 %7) #0 {
  %9 = alloca %struct.mlx5_ib_qp*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.mlx5_wqe_ctrl_seg**, align 8
  %12 = alloca %struct.ib_send_wr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %9, align 8
  store i8** %1, i8*** %10, align 8
  store %struct.mlx5_wqe_ctrl_seg** %2, %struct.mlx5_wqe_ctrl_seg*** %11, align 8
  store %struct.ib_send_wr* %3, %struct.ib_send_wr** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32 %7, i32* %16, align 4
  %17 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %18 = load i8**, i8*** %10, align 8
  %19 = load %struct.mlx5_wqe_ctrl_seg**, %struct.mlx5_wqe_ctrl_seg*** %11, align 8
  %20 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = load i8**, i8*** %15, align 8
  %24 = load i32, i32* %16, align 4
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %31 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @__begin_wqe(%struct.mlx5_ib_qp* %17, i8** %18, %struct.mlx5_wqe_ctrl_seg** %19, %struct.ib_send_wr* %20, i32* %21, i32* %22, i8** %23, i32 %24, i32 %29, i32 %34)
  ret i32 %35
}

declare dso_local i32 @__begin_wqe(%struct.mlx5_ib_qp*, i8**, %struct.mlx5_wqe_ctrl_seg**, %struct.ib_send_wr*, i32*, i32*, i8**, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
