; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_dsi_dma_workaround_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dsi.c_dsi_dma_workaround_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_dsi = type { i32, i64, i64*, i64, %struct.dma_chan* }
%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i32, i32, i32)* }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)* }

@.str = private unnamed_addr constant [37 x i8] c"Failed to set up DMA register write\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to submit DMA: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to wait for DMA: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc4_dsi*, i64, i64)* @dsi_dma_workaround_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_dma_workaround_write(%struct.vc4_dsi* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vc4_dsi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.dma_async_tx_descriptor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vc4_dsi* %0, %struct.vc4_dsi** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.vc4_dsi*, %struct.vc4_dsi** %4, align 8
  %12 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %11, i32 0, i32 4
  %13 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  store %struct.dma_chan* %13, %struct.dma_chan** %7, align 8
  %14 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %15 = icmp ne %struct.dma_chan* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.vc4_dsi*, %struct.vc4_dsi** %4, align 8
  %19 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i64 %17, i64 %22)
  br label %70

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.vc4_dsi*, %struct.vc4_dsi** %4, align 8
  %27 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  store i64 %25, i64* %28, align 8
  %29 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %30 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i32, i32, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i32, i32, i32)** %32, align 8
  %34 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %35 = load %struct.vc4_dsi*, %struct.vc4_dsi** %4, align 8
  %36 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.vc4_dsi*, %struct.vc4_dsi** %4, align 8
  %41 = getelementptr inbounds %struct.vc4_dsi, %struct.vc4_dsi* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.dma_async_tx_descriptor* %33(%struct.dma_chan* %34, i64 %39, i32 %42, i32 4, i32 0)
  store %struct.dma_async_tx_descriptor* %43, %struct.dma_async_tx_descriptor** %8, align 8
  %44 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %45 = icmp ne %struct.dma_async_tx_descriptor* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %24
  %47 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %70

48:                                               ; preds = %24
  %49 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %50 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %49, i32 0, i32 0
  %51 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %50, align 8
  %52 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %8, align 8
  %53 = call i32 %51(%struct.dma_async_tx_descriptor* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @dma_submit_error(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %70

61:                                               ; preds = %48
  %62 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dma_sync_wait(%struct.dma_chan* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %16, %46, %58, %67, %61
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_sync_wait(%struct.dma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
