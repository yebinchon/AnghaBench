; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_alloc_priv_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_alloc_priv_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_ib_mr = type { i32*, i32, i32 }

@MLX4_MR_PAGES_ALIGN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.mlx4_ib_mr*, i32)* @mlx4_alloc_priv_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_alloc_priv_pages(%struct.ib_device* %0, %struct.mlx4_ib_mr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.mlx4_ib_mr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.mlx4_ib_mr* %1, %struct.mlx4_ib_mr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @MLX4_MR_PAGES_ALIGN, align 4
  %14 = call i32 @roundup(i32 %12, i32 %13)
  %15 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i64 @get_zeroed_page(i32 %17)
  %19 = inttoptr i64 %18 to i32*
  %20 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %20, i32 0, i32 0
  store i32* %19, i32** %21, align 8
  %22 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %64

29:                                               ; preds = %3
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DMA_TO_DEVICE, align 4
  %41 = call i32 @dma_map_single(i32 %33, i32* %36, i32 %39, i32 %40)
  %42 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %43 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %45 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @dma_mapping_error(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %29
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %57

56:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %64

57:                                               ; preds = %53
  %58 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %6, align 8
  %59 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = ptrtoint i32* %60 to i64
  %62 = call i32 @free_page(i64 %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %56, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
