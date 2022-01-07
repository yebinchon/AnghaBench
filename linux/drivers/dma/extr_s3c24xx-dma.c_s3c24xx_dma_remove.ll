; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_s3c24xx-dma.c_s3c24xx_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s3c24xx_dma_platdata = type { i32 }
%struct.s3c24xx_dma_engine = type { %struct.s3c24xx_dma_phy*, i32, i32 }
%struct.s3c24xx_dma_phy = type { i32, i64 }
%struct.soc_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @s3c24xx_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.s3c24xx_dma_platdata*, align 8
  %4 = alloca %struct.s3c24xx_dma_engine*, align 8
  %5 = alloca %struct.soc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.s3c24xx_dma_phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.s3c24xx_dma_platdata* @dev_get_platdata(i32* %9)
  store %struct.s3c24xx_dma_platdata* %10, %struct.s3c24xx_dma_platdata** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = call %struct.s3c24xx_dma_engine* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.s3c24xx_dma_engine* %12, %struct.s3c24xx_dma_engine** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = call %struct.soc_data* @s3c24xx_dma_get_soc_data(%struct.platform_device* %13)
  store %struct.soc_data* %14, %struct.soc_data** %5, align 8
  %15 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %15, i32 0, i32 2
  %17 = call i32 @dma_async_device_unregister(i32* %16)
  %18 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %18, i32 0, i32 1
  %20 = call i32 @dma_async_device_unregister(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %23 = call i32 @s3c24xx_dma_free_irq(%struct.platform_device* %21, %struct.s3c24xx_dma_engine* %22)
  %24 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %25 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %24, i32 0, i32 2
  %26 = call i32 @s3c24xx_dma_free_virtual_channels(i32* %25)
  %27 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %28 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %27, i32 0, i32 1
  %29 = call i32 @s3c24xx_dma_free_virtual_channels(i32* %28)
  %30 = load %struct.soc_data*, %struct.soc_data** %5, align 8
  %31 = getelementptr inbounds %struct.soc_data, %struct.soc_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %58, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.s3c24xx_dma_platdata*, %struct.s3c24xx_dma_platdata** %3, align 8
  %38 = getelementptr inbounds %struct.s3c24xx_dma_platdata, %struct.s3c24xx_dma_platdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35
  %42 = load %struct.s3c24xx_dma_engine*, %struct.s3c24xx_dma_engine** %4, align 8
  %43 = getelementptr inbounds %struct.s3c24xx_dma_engine, %struct.s3c24xx_dma_engine* %42, i32 0, i32 0
  %44 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %44, i64 %46
  store %struct.s3c24xx_dma_phy* %47, %struct.s3c24xx_dma_phy** %7, align 8
  %48 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %7, align 8
  %49 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %41
  %53 = load %struct.s3c24xx_dma_phy*, %struct.s3c24xx_dma_phy** %7, align 8
  %54 = getelementptr inbounds %struct.s3c24xx_dma_phy, %struct.s3c24xx_dma_phy* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @clk_unprepare(i32 %55)
  br label %57

57:                                               ; preds = %52, %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %35

61:                                               ; preds = %35
  br label %62

62:                                               ; preds = %61, %1
  ret i32 0
}

declare dso_local %struct.s3c24xx_dma_platdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.s3c24xx_dma_engine* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.soc_data* @s3c24xx_dma_get_soc_data(%struct.platform_device*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @s3c24xx_dma_free_irq(%struct.platform_device*, %struct.s3c24xx_dma_engine*) #1

declare dso_local i32 @s3c24xx_dma_free_virtual_channels(i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
