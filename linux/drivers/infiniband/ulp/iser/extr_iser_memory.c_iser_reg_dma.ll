; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_reg_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.iser_data_buf = type { %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.iser_mem_reg = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@IB_PD_UNSAFE_GLOBAL_RKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Single DMA entry: lkey=0x%x, rkey=0x%x, addr=0x%llx, length=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_device*, %struct.iser_data_buf*, %struct.iser_mem_reg*)* @iser_reg_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_reg_dma(%struct.iser_device* %0, %struct.iser_data_buf* %1, %struct.iser_mem_reg* %2) #0 {
  %4 = alloca %struct.iser_device*, align 8
  %5 = alloca %struct.iser_data_buf*, align 8
  %6 = alloca %struct.iser_mem_reg*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  store %struct.iser_device* %0, %struct.iser_device** %4, align 8
  store %struct.iser_data_buf* %1, %struct.iser_data_buf** %5, align 8
  store %struct.iser_mem_reg* %2, %struct.iser_mem_reg** %6, align 8
  %8 = load %struct.iser_data_buf*, %struct.iser_data_buf** %5, align 8
  %9 = getelementptr inbounds %struct.iser_data_buf, %struct.iser_data_buf* %8, i32 0, i32 0
  %10 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %10, %struct.scatterlist** %7, align 8
  %11 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %12 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %17 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %20 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IB_PD_UNSAFE_GLOBAL_RKEY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %3
  %28 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %29 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %34 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %33, i32 0, i32 1
  store i64 %32, i64* %34, align 8
  br label %38

35:                                               ; preds = %3
  %36 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %37 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %35, %27
  %39 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i64 0
  %41 = call i32 @sg_dma_address(%struct.scatterlist* %40)
  %42 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %43 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %46 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %45, i64 0
  %47 = call i32 @sg_dma_len(%struct.scatterlist* %46)
  %48 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %49 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %52 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %56 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %59 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %6, align 8
  %63 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @iser_dbg(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57, i32 %61, i32 %65)
  ret i32 0
}

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @iser_dbg(i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
