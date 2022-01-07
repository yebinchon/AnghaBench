; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_finish_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_qp.c_finish_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i8*, %struct.TYPE_9__*, i64, i64*, i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8*, i8* }

@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, %struct.mlx5_wqe_ctrl_seg*, i8*, i32, i8*, i32, i32, i32, i32, i32)* @finish_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_wqe(%struct.mlx5_ib_qp* %0, %struct.mlx5_wqe_ctrl_seg* %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.mlx5_ib_qp*, align 8
  %12 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %11, align 8
  store %struct.mlx5_wqe_ctrl_seg* %1, %struct.mlx5_wqe_ctrl_seg** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %22 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %20, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %21, align 4
  %30 = shl i32 %29, 24
  %31 = or i32 %28, %30
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %12, align 8
  %34 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = shl i32 %41, 8
  %43 = or i32 %35, %42
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %12, align 8
  %46 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %19, align 4
  %48 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %12, align 8
  %49 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %10
  %58 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %12, align 8
  %59 = call i32 @wq_sig(%struct.mlx5_wqe_ctrl_seg* %58)
  %60 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %12, align 8
  %61 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %10
  %63 = load i32, i32* %17, align 4
  %64 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %16, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %63, i32* %70, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %73 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  store i32 %71, i32* %79, align 4
  %80 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %81 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %88 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 5
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %16, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  store i64 %86, i64* %93, align 8
  %94 = load i32, i32* %14, align 4
  %95 = mul nsw i32 %94, 16
  %96 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %97 = call i64 @DIV_ROUND_UP(i32 %95, i32 %96)
  %98 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %99 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %97
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  %105 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %106 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %110 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i32 %108, i32* %116, align 4
  %117 = load i8*, i8** %13, align 8
  %118 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %119 = call i8* @PTR_ALIGN(i8* %117, i32 %118)
  store i8* %119, i8** %13, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = icmp eq i8* %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %62
  %127 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %128 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %127, i32 0, i32 1
  %129 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %134 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  %138 = and i32 %132, %137
  %139 = call i8* @get_sq_edge(%struct.TYPE_10__* %128, i32 %138)
  br label %142

140:                                              ; preds = %62
  %141 = load i8*, i8** %15, align 8
  br label %142

142:                                              ; preds = %140, %126
  %143 = phi i8* [ %139, %126 ], [ %141, %140 ]
  %144 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %11, align 8
  %145 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 2
  store i8* %143, i8** %146, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wq_sig(%struct.mlx5_wqe_ctrl_seg*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i8* @get_sq_edge(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
