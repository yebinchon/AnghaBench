; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c___begin_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c___begin_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32 }
%struct.ib_send_wr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_SOLICITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, i8**, %struct.mlx5_wqe_ctrl_seg**, %struct.ib_send_wr*, i32*, i32*, i8**, i32, i32, i32)* @__begin_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__begin_wqe(%struct.mlx5_ib_qp* %0, i8** %1, %struct.mlx5_wqe_ctrl_seg** %2, %struct.ib_send_wr* %3, i32* %4, i32* %5, i8** %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_ib_qp*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.mlx5_wqe_ctrl_seg**, align 8
  %15 = alloca %struct.ib_send_wr*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %12, align 8
  store i8** %1, i8*** %13, align 8
  store %struct.mlx5_wqe_ctrl_seg** %2, %struct.mlx5_wqe_ctrl_seg*** %14, align 8
  store %struct.ib_send_wr* %3, %struct.ib_send_wr** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i8** %6, i8*** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %22 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %22, i32 0, i32 1
  %24 = load i32, i32* %19, align 4
  %25 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mlx5_wq_overflow(%struct.TYPE_4__* %23, i32 %24, i32 %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %10
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %98

35:                                               ; preds = %10
  %36 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %39, %44
  %46 = load i32*, i32** %16, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32*, i32** %16, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @mlx5_frag_buf_get_wqe(i32* %49, i32 %51)
  %53 = load i8**, i8*** %13, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i8**, i8*** %13, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to %struct.mlx5_wqe_ctrl_seg*
  %57 = load %struct.mlx5_wqe_ctrl_seg**, %struct.mlx5_wqe_ctrl_seg*** %14, align 8
  store %struct.mlx5_wqe_ctrl_seg* %56, %struct.mlx5_wqe_ctrl_seg** %57, align 8
  %58 = load i8**, i8*** %13, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr i8, i8* %59, i64 8
  %61 = bitcast i8* %60 to i64*
  store i64 0, i64* %61, align 8
  %62 = load %struct.ib_send_wr*, %struct.ib_send_wr** %15, align 8
  %63 = call i32 @send_ieth(%struct.ib_send_wr* %62)
  %64 = load %struct.mlx5_wqe_ctrl_seg**, %struct.mlx5_wqe_ctrl_seg*** %14, align 8
  %65 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %64, align 8
  %66 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %35
  %73 = load i32, i32* @MLX5_WQE_CTRL_CQ_UPDATE, align 4
  br label %75

74:                                               ; preds = %35
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i32 [ %73, %72 ], [ 0, %74 ]
  %77 = or i32 %69, %76
  %78 = load i32, i32* %21, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @MLX5_WQE_CTRL_SOLICITED, align 4
  br label %83

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = or i32 %77, %84
  %86 = load %struct.mlx5_wqe_ctrl_seg**, %struct.mlx5_wqe_ctrl_seg*** %14, align 8
  %87 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %86, align 8
  %88 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load i8**, i8*** %13, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr i8, i8* %90, i64 8
  store i8* %91, i8** %89, align 8
  %92 = load i32*, i32** %17, align 8
  store i32 0, i32* %92, align 4
  %93 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %12, align 8
  %94 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = load i8**, i8*** %18, align 8
  store i8* %96, i8** %97, align 8
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %83, %32
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_wq_overflow(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @mlx5_frag_buf_get_wqe(i32*, i32) #1

declare dso_local i32 @send_ieth(%struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
