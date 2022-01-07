; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_build_lso_seg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_build_lso_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_wqe_lso_seg = type { i32 }
%struct.ib_ud_wr = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_ib_qp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MLX4_IB_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@MLX4_IB_QP_LSO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_wqe_lso_seg*, %struct.ib_ud_wr*, %struct.mlx4_ib_qp*, i32*, i32*, i32*)* @build_lso_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_lso_seg(%struct.mlx4_wqe_lso_seg* %0, %struct.ib_ud_wr* %1, %struct.mlx4_ib_qp* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_wqe_lso_seg*, align 8
  %9 = alloca %struct.ib_ud_wr*, align 8
  %10 = alloca %struct.mlx4_ib_qp*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_wqe_lso_seg* %0, %struct.mlx4_wqe_lso_seg** %8, align 8
  store %struct.ib_ud_wr* %1, %struct.ib_ud_wr** %9, align 8
  store %struct.mlx4_ib_qp* %2, %struct.mlx4_ib_qp** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %9, align 8
  %16 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i32 @ALIGN(i32 %20, i32 16)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @MLX4_IB_CACHE_LINE_SIZE, align 4
  %24 = icmp ugt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %6
  %29 = call i32 @cpu_to_be32(i32 64)
  %30 = load i32*, i32** %13, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %6
  %32 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MLX4_IB_QP_LSO, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %31
  %39 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %9, align 8
  %40 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %10, align 8
  %44 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = lshr i32 %47, 4
  %49 = sub i32 %46, %48
  %50 = icmp ugt i32 %42, %49
  br label %51

51:                                               ; preds = %38, %31
  %52 = phi i1 [ false, %31 ], [ %50, %38 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %82

59:                                               ; preds = %51
  %60 = load %struct.mlx4_wqe_lso_seg*, %struct.mlx4_wqe_lso_seg** %8, align 8
  %61 = getelementptr inbounds %struct.mlx4_wqe_lso_seg, %struct.mlx4_wqe_lso_seg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %9, align 8
  %64 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %9, align 8
  %67 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @memcpy(i32 %62, i32 %65, i32 %68)
  %70 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %9, align 8
  %71 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 16
  %74 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %9, align 8
  %75 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %73, %76
  %78 = call i32 @cpu_to_be32(i32 %77)
  %79 = load i32*, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32*, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %59, %56
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
