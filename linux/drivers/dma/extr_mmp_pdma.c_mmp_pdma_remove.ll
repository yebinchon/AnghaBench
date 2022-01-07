; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mmp_pdma.c_mmp_pdma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mmp_pdma_device = type { i32, i32, %struct.mmp_pdma_device* }
%struct.mmp_pdma_phy = type { i32, i32, %struct.mmp_pdma_phy* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mmp_pdma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmp_pdma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mmp_pdma_device*, align 8
  %4 = alloca %struct.mmp_pdma_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.mmp_pdma_phy* @platform_get_drvdata(%struct.platform_device* %8)
  %10 = bitcast %struct.mmp_pdma_phy* %9 to %struct.mmp_pdma_device*
  store %struct.mmp_pdma_device* %10, %struct.mmp_pdma_device** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %3, align 8
  %14 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @platform_get_irq(%struct.platform_device* %18, i32 %19)
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %11

29:                                               ; preds = %11
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %3, align 8
  %32 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = call i32 @platform_get_irq(%struct.platform_device* %36, i32 0)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %3, align 8
  %42 = bitcast %struct.mmp_pdma_device* %41 to %struct.mmp_pdma_phy*
  %43 = call i32 @devm_free_irq(i32* %39, i32 %40, %struct.mmp_pdma_phy* %42)
  br label %71

44:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %67, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %3, align 8
  %48 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %70

51:                                               ; preds = %45
  %52 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %3, align 8
  %53 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %52, i32 0, i32 2
  %54 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %54, i64 %56
  %58 = bitcast %struct.mmp_pdma_device* %57 to %struct.mmp_pdma_phy*
  store %struct.mmp_pdma_phy* %58, %struct.mmp_pdma_phy** %4, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @platform_get_irq(%struct.platform_device* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.mmp_pdma_phy*, %struct.mmp_pdma_phy** %4, align 8
  %66 = call i32 @devm_free_irq(i32* %63, i32 %64, %struct.mmp_pdma_phy* %65)
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %45

70:                                               ; preds = %45
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.mmp_pdma_device*, %struct.mmp_pdma_device** %3, align 8
  %73 = getelementptr inbounds %struct.mmp_pdma_device, %struct.mmp_pdma_device* %72, i32 0, i32 1
  %74 = call i32 @dma_async_device_unregister(i32* %73)
  ret i32 0
}

declare dso_local %struct.mmp_pdma_phy* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.mmp_pdma_phy*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
