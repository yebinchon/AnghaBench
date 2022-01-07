; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_alloc_cmq_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_alloc_cmq_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }
%struct.hns_roce_v2_cmq_ring = type { i32, i32*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_v2_cmq_ring*)* @hns_roce_alloc_cmq_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_alloc_cmq_desc(%struct.hns_roce_dev* %0, %struct.hns_roce_v2_cmq_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_v2_cmq_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_v2_cmq_ring* %1, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %7 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %8 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kzalloc(i32 %13, i32 %14)
  %16 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %17 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %19 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %2
  %26 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %27 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %30 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %34 = call i64 @dma_map_single(i32 %28, i32* %31, i32 %32, i32 %33)
  %35 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %36 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %35, i32 0, i32 2
  store i64 %34, i64* %36, align 8
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %38 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %41 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @dma_mapping_error(i32 %39, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %25
  %46 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %47 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %49 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @kfree(i32* %50)
  %52 = load %struct.hns_roce_v2_cmq_ring*, %struct.hns_roce_v2_cmq_ring** %5, align 8
  %53 = getelementptr inbounds %struct.hns_roce_v2_cmq_ring, %struct.hns_roce_v2_cmq_ring* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %45, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i64 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
