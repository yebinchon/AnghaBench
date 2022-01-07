; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_idma64.c_idma64_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device* }
%struct.idma64_chip = type { i64, %struct.device*, %struct.device*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @idma64_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idma64_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.idma64_chip*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.idma64_chip* @devm_kzalloc(%struct.device* %14, i32 32, i32 %15)
  store %struct.idma64_chip* %16, %struct.idma64_chip** %4, align 8
  %17 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %18 = icmp ne %struct.idma64_chip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %80

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = call i64 @platform_get_irq(%struct.platform_device* %23, i32 0)
  %25 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %26 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %28 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %33 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %2, align 4
  br label %80

36:                                               ; preds = %22
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 0)
  store %struct.resource* %39, %struct.resource** %7, align 8
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load %struct.resource*, %struct.resource** %7, align 8
  %42 = call i32 @devm_ioremap_resource(%struct.device* %40, %struct.resource* %41)
  %43 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %44 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %46 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %36
  %51 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %52 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %2, align 4
  br label %80

55:                                               ; preds = %36
  %56 = load %struct.device*, %struct.device** %6, align 8
  %57 = call i32 @DMA_BIT_MASK(i32 64)
  %58 = call i32 @dma_coerce_mask_and_coherent(%struct.device* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %80

63:                                               ; preds = %55
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %66 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %65, i32 0, i32 2
  store %struct.device* %64, %struct.device** %66, align 8
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %69 = getelementptr inbounds %struct.idma64_chip, %struct.idma64_chip* %68, i32 0, i32 1
  store %struct.device* %67, %struct.device** %69, align 8
  %70 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %71 = call i32 @idma64_probe(%struct.idma64_chip* %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %80

76:                                               ; preds = %63
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = load %struct.idma64_chip*, %struct.idma64_chip** %4, align 8
  %79 = call i32 @platform_set_drvdata(%struct.platform_device* %77, %struct.idma64_chip* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %76, %74, %61, %50, %31, %19
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.idma64_chip* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dma_coerce_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @idma64_probe(%struct.idma64_chip*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.idma64_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
