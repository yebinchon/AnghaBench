; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_map_mr_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_map_mr_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.scatterlist = type { i32 }
%struct.mlx5_ib_mr = type { i32, i32, i64, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MLX5_MKC_ACCESS_MODE_KLMS = common dso_local global i64 0, align 8
@mlx5_set_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_ib_map_mr_sg(%struct.ib_mr* %0, %struct.scatterlist* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx5_ib_mr*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %12 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %11)
  store %struct.mlx5_ib_mr* %12, %struct.mlx5_ib_mr** %9, align 8
  %13 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %13, i32 0, i32 4
  store i64 0, i64* %14, align 8
  %15 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %16 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load i32, i32* @DMA_TO_DEVICE, align 4
  %29 = call i32 @ib_dma_sync_single_for_cpu(i32 %17, i32 %20, i32 %27, i32 %28)
  %30 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MLX5_MKC_ACCESS_MODE_KLMS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %37 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @mlx5_ib_sg_to_klms(%struct.mlx5_ib_mr* %36, %struct.scatterlist* %37, i32 %38, i32* %39, i32* null, i32 0, i32* null)
  store i32 %40, i32* %10, align 4
  br label %48

41:                                               ; preds = %4
  %42 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %43 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @mlx5_set_page, align 4
  %47 = call i32 @ib_sg_to_pages(%struct.ib_mr* %42, %struct.scatterlist* %43, i32 %44, i32* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %41, %35
  %49 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %50 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %9, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load i32, i32* @DMA_TO_DEVICE, align 4
  %63 = call i32 @ib_dma_sync_single_for_device(i32 %51, i32 %54, i32 %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_ib_sg_to_klms(%struct.mlx5_ib_mr*, %struct.scatterlist*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ib_sg_to_pages(%struct.ib_mr*, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
