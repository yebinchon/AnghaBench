; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_map_mr_sg_pi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_map_mr_sg_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.mlx5_ib_mr = type { i32, %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr*, i64, i64, i64, i64, i64 }

@IB_MR_TYPE_INTEGRITY = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_map_mr_sg_pi(%struct.ib_mr* %0, %struct.scatterlist* %1, i32 %2, i32* %3, %struct.scatterlist* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_mr*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mlx5_ib_mr*, align 8
  %17 = alloca %struct.mlx5_ib_mr*, align 8
  %18 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %20 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %19)
  store %struct.mlx5_ib_mr* %20, %struct.mlx5_ib_mr** %16, align 8
  store %struct.mlx5_ib_mr* null, %struct.mlx5_ib_mr** %17, align 8
  %21 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %22 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IB_MR_TYPE_INTEGRITY, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %28, i32 0, i32 8
  store i64 0, i64* %29, align 8
  %30 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @mlx5_ib_map_pa_mr_sg_pi(%struct.ib_mr* %38, %struct.scatterlist* %39, i32 %40, i32* %41, %struct.scatterlist* %42, i32 %43, i32* %44)
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %47, %48
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %7
  br label %94

52:                                               ; preds = %7
  %53 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %53, i32 0, i32 3
  %55 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %54, align 8
  store %struct.mlx5_ib_mr* %55, %struct.mlx5_ib_mr** %17, align 8
  %56 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %57 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = call i32 @mlx5_ib_map_mtt_mr_sg_pi(%struct.ib_mr* %56, %struct.scatterlist* %57, i32 %58, i32* %59, %struct.scatterlist* %60, i32 %61, i32* %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %65, %66
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %52
  br label %94

70:                                               ; preds = %52
  %71 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %71, i32 0, i32 2
  %73 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %72, align 8
  store %struct.mlx5_ib_mr* %73, %struct.mlx5_ib_mr** %17, align 8
  %74 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %75 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @mlx5_ib_map_klm_mr_sg_pi(%struct.ib_mr* %74, %struct.scatterlist* %75, i32 %76, i32* %77, %struct.scatterlist* %78, i32 %79, i32* %80)
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %83, %84
  %86 = icmp ne i32 %82, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %70
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %8, align 4
  br label %119

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93, %69, %51
  %95 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %96 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %17, align 8
  %98 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %99 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %98, i32 0, i32 1
  store %struct.mlx5_ib_mr* %97, %struct.mlx5_ib_mr** %99, align 8
  %100 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %17, align 8
  %101 = icmp ne %struct.mlx5_ib_mr* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %17, align 8
  %104 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %107 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 %105, i32* %109, align 4
  br label %118

110:                                              ; preds = %94
  %111 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %112 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ib_mr*, %struct.ib_mr** %9, align 8
  %115 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %102
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %118, %90
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mlx5_ib_map_pa_mr_sg_pi(%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @mlx5_ib_map_mtt_mr_sg_pi(%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @mlx5_ib_map_klm_mr_sg_pi(%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
