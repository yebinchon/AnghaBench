; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_copy_firmware_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_falcon.c_falcon_copy_firmware_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.falcon = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.firmware = type { i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to map firmware: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.falcon*, %struct.firmware*)* @falcon_copy_firmware_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_copy_firmware_image(%struct.falcon* %0, %struct.firmware* %1) #0 {
  %3 = alloca %struct.falcon*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.falcon* %0, %struct.falcon** %3, align 8
  store %struct.firmware* %1, %struct.firmware** %4, align 8
  %9 = load %struct.falcon*, %struct.falcon** %3, align 8
  %10 = getelementptr inbounds %struct.falcon, %struct.falcon* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %33, %2
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.firmware*, %struct.firmware** %4, align 8
  %16 = getelementptr inbounds %struct.firmware, %struct.firmware* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = udiv i64 %18, 4
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %13
  %22 = load %struct.firmware*, %struct.firmware** %4, align 8
  %23 = getelementptr inbounds %struct.firmware, %struct.firmware* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %21
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %13

36:                                               ; preds = %13
  %37 = load %struct.falcon*, %struct.falcon** %3, align 8
  %38 = getelementptr inbounds %struct.falcon, %struct.falcon* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.falcon*, %struct.falcon** %3, align 8
  %42 = getelementptr inbounds %struct.falcon, %struct.falcon* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DMA_TO_DEVICE, align 4
  %46 = call i32 @dma_map_single(i32 %39, i32* %40, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.falcon*, %struct.falcon** %3, align 8
  %48 = getelementptr inbounds %struct.falcon, %struct.falcon* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @dma_mapping_error(i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %36
  %55 = load %struct.falcon*, %struct.falcon** %3, align 8
  %56 = getelementptr inbounds %struct.falcon, %struct.falcon* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %81

60:                                               ; preds = %36
  %61 = load %struct.falcon*, %struct.falcon** %3, align 8
  %62 = getelementptr inbounds %struct.falcon, %struct.falcon* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.falcon*, %struct.falcon** %3, align 8
  %66 = getelementptr inbounds %struct.falcon, %struct.falcon* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DMA_TO_DEVICE, align 4
  %70 = call i32 @dma_sync_single_for_device(i32 %63, i32 %64, i32 %68, i32 %69)
  %71 = load %struct.falcon*, %struct.falcon** %3, align 8
  %72 = getelementptr inbounds %struct.falcon, %struct.falcon* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.falcon*, %struct.falcon** %3, align 8
  %76 = getelementptr inbounds %struct.falcon, %struct.falcon* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @DMA_TO_DEVICE, align 4
  %80 = call i32 @dma_unmap_single(i32 %73, i32 %74, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %60, %54
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
