; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_dev = type { i32, i32, %struct.device*, %struct.platform_device* }

@hns_roce_dev = common dso_local global i32 0, align 4
@ib_dev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Not usable DMA addressing mode\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Get Configuration failed!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"RoCE engine init failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hns_roce_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %6, align 8
  %9 = load i32, i32* @hns_roce_dev, align 4
  %10 = load i32, i32* @ib_dev, align 4
  %11 = call %struct.hns_roce_dev* @ib_alloc_device(i32 %9, i32 %10)
  store %struct.hns_roce_dev* %11, %struct.hns_roce_dev** %5, align 8
  %12 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %13 = icmp ne %struct.hns_roce_dev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %80

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @kzalloc(i32 4, i32 %18)
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %23 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %75

29:                                               ; preds = %17
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %32 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %31, i32 0, i32 3
  store %struct.platform_device* %30, %struct.platform_device** %32, align 8
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %35 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %34, i32 0, i32 2
  store %struct.device* %33, %struct.device** %35, align 8
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.hns_roce_dev* %37)
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @DMA_BIT_MASK(i64 64)
  %41 = call i64 @dma_set_mask_and_coherent(%struct.device* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %29
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = call i32 @DMA_BIT_MASK(i64 32)
  %46 = call i64 @dma_set_mask_and_coherent(%struct.device* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %70

53:                                               ; preds = %43, %29
  %54 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %55 = call i32 @hns_roce_get_cfg(%struct.hns_roce_dev* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %70

61:                                               ; preds = %53
  %62 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %63 = call i32 @hns_roce_init(%struct.hns_roce_dev* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %70

69:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %80

70:                                               ; preds = %66, %58, %48
  %71 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %72 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @kfree(i32 %73)
  br label %75

75:                                               ; preds = %70, %26
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %77 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %76, i32 0, i32 0
  %78 = call i32 @ib_dealloc_device(i32* %77)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %75, %69, %14
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.hns_roce_dev* @ib_alloc_device(i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hns_roce_dev*) #1

declare dso_local i64 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_get_cfg(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_init(%struct.hns_roce_dev*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
