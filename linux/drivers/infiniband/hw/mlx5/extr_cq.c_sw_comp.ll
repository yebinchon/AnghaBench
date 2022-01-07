; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_sw_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_cq.c_sw_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, %struct.mlx5_ib_wq, %struct.mlx5_ib_wq }
%struct.mlx5_ib_wq = type { i32, i32, i32, i32* }
%struct.ib_wc = type { i32*, i32, i32, i32 }

@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@MLX5_CQE_SYNDROME_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, i32, %struct.ib_wc*, i32*, i32)* @sw_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sw_comp(%struct.mlx5_ib_qp* %0, i32 %1, %struct.ib_wc* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_ib_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_wc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_ib_wq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ib_wc* %2, %struct.ib_wc** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %18, i32 0, i32 2
  br label %23

20:                                               ; preds = %5
  %21 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %21, i32 0, i32 1
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi %struct.mlx5_ib_wq* [ %19, %17 ], [ %22, %20 ]
  store %struct.mlx5_ib_wq* %24, %struct.mlx5_ib_wq** %11, align 8
  %25 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %11, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %11, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %89

37:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %83, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ false, %38 ], [ %45, %42 ]
  br i1 %47, label %48, label %86

48:                                               ; preds = %46
  %49 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %11, align 8
  %50 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %11, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %11, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %54, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %51, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %64 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %66 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %67 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @MLX5_CQE_SYNDROME_WR_FLUSH_ERR, align 4
  %69 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %70 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %11, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %78 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %77, i32 0, i32 0
  %79 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %80 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %79, i32 0, i32 0
  store i32* %78, i32** %80, align 8
  %81 = load %struct.ib_wc*, %struct.ib_wc** %8, align 8
  %82 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %81, i32 1
  store %struct.ib_wc* %82, %struct.ib_wc** %8, align 8
  br label %83

83:                                               ; preds = %48
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %38

86:                                               ; preds = %46
  %87 = load i32, i32* %13, align 4
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
