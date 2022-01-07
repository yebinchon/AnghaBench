; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gpu.c_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gpu = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.dma_fence*, i64 }
%struct.dma_fence = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@VIVS_HI_INTR_ACKNOWLEDGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"intr 0x%08x\0A\00", align 1
@VIVS_HI_INTR_ACKNOWLEDGE_AXI_BUS_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"AXI bus error\0A\00", align 1
@VIVS_HI_INTR_ACKNOWLEDGE_MMU_EXCEPTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"event %u\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.etnaviv_gpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dma_fence*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.etnaviv_gpu*
  store %struct.etnaviv_gpu* %11, %struct.etnaviv_gpu** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %14 = load i32, i32* @VIVS_HI_INTR_ACKNOWLEDGE, align 4
  %15 = call i32 @gpu_read(%struct.etnaviv_gpu* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %132

18:                                               ; preds = %2
  %19 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %20 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @pm_runtime_mark_last_busy(i32 %21)
  %23 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %24 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @VIVS_HI_INTR_ACKNOWLEDGE_AXI_BUS_ERROR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %18
  %33 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %34 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @VIVS_HI_INTR_ACKNOWLEDGE_AXI_BUS_ERROR, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %32, %18
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @VIVS_HI_INTR_ACKNOWLEDGE_MMU_EXCEPTION, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %48 = call i32 @dump_mmu_fault(%struct.etnaviv_gpu* %47)
  %49 = load i32, i32* @VIVS_HI_INTR_ACKNOWLEDGE_MMU_EXCEPTION, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %124, %101, %53
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ffs(i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %130

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 1, %61
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %67 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %72 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %58
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %83 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %85 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %88 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %87, i32 0, i32 3
  %89 = call i32 @queue_work(i32 %86, i32* %88)
  br label %90

90:                                               ; preds = %80, %58
  %91 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %92 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %91, i32 0, i32 2
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load %struct.dma_fence*, %struct.dma_fence** %97, align 8
  store %struct.dma_fence* %98, %struct.dma_fence** %9, align 8
  %99 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %100 = icmp ne %struct.dma_fence* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  br label %54

102:                                              ; preds = %90
  %103 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %104 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store %struct.dma_fence* null, %struct.dma_fence** %109, align 8
  %110 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %111 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %114 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @fence_after(i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %102
  %119 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %120 = getelementptr inbounds %struct.dma_fence, %struct.dma_fence* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %123 = getelementptr inbounds %struct.etnaviv_gpu, %struct.etnaviv_gpu* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %118, %102
  %125 = load %struct.dma_fence*, %struct.dma_fence** %9, align 8
  %126 = call i32 @dma_fence_signal(%struct.dma_fence* %125)
  %127 = load %struct.etnaviv_gpu*, %struct.etnaviv_gpu** %5, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @event_free(%struct.etnaviv_gpu* %127, i32 %128)
  br label %54

130:                                              ; preds = %54
  %131 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %130, %2
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @gpu_read(%struct.etnaviv_gpu*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dump_mmu_fault(%struct.etnaviv_gpu*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @fence_after(i32, i32) #1

declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #1

declare dso_local i32 @event_free(%struct.etnaviv_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
