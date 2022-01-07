; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_map_klm_mr_sg_pi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_ib_map_klm_mr_sg_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.mlx5_ib_mr = type { i32, i32, %struct.TYPE_2__, i32, i32, i64, i32, i64, i64, i64, %struct.mlx5_ib_mr* }
%struct.TYPE_2__ = type { i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*)* @mlx5_ib_map_klm_mr_sg_pi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_map_klm_mr_sg_pi(%struct.ib_mr* %0, %struct.scatterlist* %1, i32 %2, i32* %3, %struct.scatterlist* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.ib_mr*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.mlx5_ib_mr*, align 8
  %16 = alloca %struct.mlx5_ib_mr*, align 8
  %17 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %18 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %19 = call %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr* %18)
  store %struct.mlx5_ib_mr* %19, %struct.mlx5_ib_mr** %15, align 8
  %20 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %15, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %20, i32 0, i32 10
  %22 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %21, align 8
  store %struct.mlx5_ib_mr* %22, %struct.mlx5_ib_mr** %16, align 8
  %23 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %23, i32 0, i32 9
  store i64 0, i64* %24, align 8
  %25 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %25, i32 0, i32 8
  store i64 0, i64* %26, align 8
  %27 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %28 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %27, i32 0, i32 7
  store i64 0, i64* %28, align 8
  %29 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %30 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %39 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %37, %40
  %42 = load i32, i32* @DMA_TO_DEVICE, align 4
  %43 = call i32 @ib_dma_sync_single_for_cpu(i32 %31, i32 %34, i32 %41, i32 %42)
  %44 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %45 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @mlx5_ib_sg_to_klms(%struct.mlx5_ib_mr* %44, %struct.scatterlist* %45, i32 %46, i32* %47, %struct.scatterlist* %48, i32 %49, i32* %50)
  store i32 %51, i32* %17, align 4
  %52 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %53 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %56 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %59 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %62 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @ib_dma_sync_single_for_device(i32 %54, i32 %57, i32 %64, i32 %65)
  %67 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %68 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %67, i32 0, i32 5
  store i64 0, i64* %68, align 8
  %69 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %73 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %76 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %16, align 8
  %78 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ib_mr*, %struct.ib_mr** %8, align 8
  %82 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %17, align 4
  ret i32 %83
}

declare dso_local %struct.mlx5_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_ib_sg_to_klms(%struct.mlx5_ib_mr*, %struct.scatterlist*, i32, i32*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
