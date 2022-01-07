; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-platform.c_sp_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ccp/extr_sp-platform.c_sp_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64 }
%struct.sp_device = type { i32, i32, i32, %struct.sp_platform* }
%struct.sp_platform = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"missing driver data\0A\00", align 1
@DEV_DMA_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"DMA is not supported\00", align 1
@DEV_DMA_COHERENT = common dso_local global i32 0, align 4
@CACHE_WB_NO_ALLOC = common dso_local global i32 0, align 4
@CACHE_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"dma_set_mask_and_coherent failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sp_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sp_device*, align 8
  %5 = alloca %struct.sp_platform*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.sp_device* @sp_alloc_struct(%struct.device* %13)
  store %struct.sp_device* %14, %struct.sp_device** %4, align 8
  %15 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %16 = icmp ne %struct.sp_device* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %124

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sp_platform* @devm_kzalloc(%struct.device* %19, i32 4, i32 %20)
  store %struct.sp_platform* %21, %struct.sp_platform** %5, align 8
  %22 = load %struct.sp_platform*, %struct.sp_platform** %5, align 8
  %23 = icmp ne %struct.sp_platform* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %124

25:                                               ; preds = %18
  %26 = load %struct.sp_platform*, %struct.sp_platform** %5, align 8
  %27 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %28 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %27, i32 0, i32 3
  store %struct.sp_platform* %26, %struct.sp_platform** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = call i32 @sp_get_of_version(%struct.platform_device* %35)
  br label %40

37:                                               ; preds = %25
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = call i32 @sp_get_acpi_version(%struct.platform_device* %38)
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i32 [ %36, %34 ], [ %39, %37 ]
  %42 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %43 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %45 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %124

53:                                               ; preds = %40
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %54, i32 0)
  %56 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %57 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %59 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %65 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %8, align 4
  br label %124

68:                                               ; preds = %53
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = call i32 @device_get_dma_attr(%struct.device* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @DEV_DMA_NOT_SUPPORTED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.device*, %struct.device** %6, align 8
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %124

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @DEV_DMA_COHERENT, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.sp_platform*, %struct.sp_platform** %5, align 8
  %83 = getelementptr inbounds %struct.sp_platform, %struct.sp_platform* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.sp_platform*, %struct.sp_platform** %5, align 8
  %85 = getelementptr inbounds %struct.sp_platform, %struct.sp_platform* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = load i32, i32* @CACHE_WB_NO_ALLOC, align 4
  %90 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %91 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %96

92:                                               ; preds = %77
  %93 = load i32, i32* @CACHE_NONE, align 4
  %94 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %95 = getelementptr inbounds %struct.sp_device, %struct.sp_device* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %92, %88
  %97 = load %struct.device*, %struct.device** %6, align 8
  %98 = call i32 @DMA_BIT_MASK(i32 48)
  %99 = call i32 @dma_set_mask_and_coherent(%struct.device* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load %struct.device*, %struct.device** %6, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %103, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  br label %124

106:                                              ; preds = %96
  %107 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %108 = call i32 @sp_get_irqs(%struct.sp_device* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %124

112:                                              ; preds = %106
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %115 = call i32 @dev_set_drvdata(%struct.device* %113, %struct.sp_device* %114)
  %116 = load %struct.sp_device*, %struct.sp_device** %4, align 8
  %117 = call i32 @sp_init(%struct.sp_device* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %124

121:                                              ; preds = %112
  %122 = load %struct.device*, %struct.device** %6, align 8
  %123 = call i32 @dev_notice(%struct.device* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %128

124:                                              ; preds = %120, %111, %102, %74, %63, %48, %24, %17
  %125 = load %struct.device*, %struct.device** %6, align 8
  %126 = call i32 @dev_notice(%struct.device* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.sp_device* @sp_alloc_struct(%struct.device*) #1

declare dso_local %struct.sp_platform* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @sp_get_of_version(%struct.platform_device*) #1

declare dso_local i32 @sp_get_acpi_version(%struct.platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @device_get_dma_attr(%struct.device*) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @sp_get_irqs(%struct.sp_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.sp_device*) #1

declare dso_local i32 @sp_init(%struct.sp_device*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
