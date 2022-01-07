; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_free_priv_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_mlx5_free_priv_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_mr = type { i32, i32, i32*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ib_device* }
%struct.ib_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_mr*)* @mlx5_free_priv_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_free_priv_descs(%struct.mlx5_ib_mr* %0) #0 {
  %2 = alloca %struct.mlx5_ib_mr*, align 8
  %3 = alloca %struct.ib_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_ib_mr* %0, %struct.mlx5_ib_mr** %2, align 8
  %5 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.ib_device*, %struct.ib_device** %12, align 8
  store %struct.ib_device* %13, %struct.ib_device** %3, align 8
  %14 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %2, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ib_device*, %struct.ib_device** %3, align 8
  %22 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_unmap_single(i32 %24, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @kfree(i32 %33)
  %35 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
