; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_hdlcd_drv.c_hdlcd_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.hdlcd_drm_private* }
%struct.hdlcd_drm_private = type { i32, i32*, i32, i32, i32, i32, i32* }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"pxlclk\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to map control registers area\0A\00", align 1
@HDLCD_REG_VERSION = common dso_local global i32 0, align 4
@HDLCD_PRODUCT_MASK = common dso_local global i32 0, align 4
@HDLCD_PRODUCT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unknown product id: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"found ARM HDLCD version r%dp%d\0A\00", align 1
@HDLCD_VERSION_MAJOR_MASK = common dso_local global i32 0, align 4
@HDLCD_VERSION_MINOR_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to create crtc\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i64)* @hdlcd_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlcd_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hdlcd_drm_private*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 1
  %13 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %12, align 8
  store %struct.hdlcd_drm_private* %13, %struct.hdlcd_drm_private** %6, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.platform_device* @to_platform_device(i32 %16)
  store %struct.platform_device* %17, %struct.platform_device** %7, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32* @devm_clk_get(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %23 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %22, i32 0, i32 6
  store i32* %21, i32** %23, align 8
  %24 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %25 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %24, i32 0, i32 6
  %26 = load i32*, i32** %25, align 8
  %27 = call i64 @IS_ERR(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %31 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @PTR_ERR(i32* %32)
  store i32 %33, i32* %3, align 4
  br label %131

34:                                               ; preds = %2
  %35 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %36 = load i32, i32* @IORESOURCE_MEM, align 4
  %37 = call %struct.resource* @platform_get_resource(%struct.platform_device* %35, i32 %36, i32 0)
  store %struct.resource* %37, %struct.resource** %8, align 8
  %38 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = call i32* @devm_ioremap_resource(i32 %40, %struct.resource* %41)
  %43 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %44 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %46 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %34
  %51 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %53 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @PTR_ERR(i32* %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %57 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %3, align 4
  br label %131

59:                                               ; preds = %34
  %60 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %61 = load i32, i32* @HDLCD_REG_VERSION, align 4
  %62 = call i32 @hdlcd_read(%struct.hdlcd_drm_private* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @HDLCD_PRODUCT_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @HDLCD_PRODUCT_ID, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %131

73:                                               ; preds = %59
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @HDLCD_VERSION_MAJOR_MASK, align 4
  %76 = and i32 %74, %75
  %77 = ashr i32 %76, 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @HDLCD_VERSION_MINOR_MASK, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %83 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @of_reserved_mem_device_init(i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %73
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %3, align 4
  br label %131

95:                                               ; preds = %88, %73
  %96 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %97 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @DMA_BIT_MASK(i32 32)
  %100 = call i32 @dma_set_mask_and_coherent(i32 %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %125

104:                                              ; preds = %95
  %105 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %106 = call i32 @hdlcd_setup_crtc(%struct.drm_device* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %125

111:                                              ; preds = %104
  %112 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %113 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %114 = call i32 @platform_get_irq(%struct.platform_device* %113, i32 0)
  %115 = call i32 @drm_irq_install(%struct.drm_device* %112, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %121

120:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %131

121:                                              ; preds = %118
  %122 = load %struct.hdlcd_drm_private*, %struct.hdlcd_drm_private** %6, align 8
  %123 = getelementptr inbounds %struct.hdlcd_drm_private, %struct.hdlcd_drm_private* %122, i32 0, i32 0
  %124 = call i32 @drm_crtc_cleanup(i32* %123)
  br label %125

125:                                              ; preds = %121, %109, %103
  %126 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %127 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @of_reserved_mem_device_release(i32 %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %125, %120, %93, %68, %50, %29
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(i32, %struct.resource*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @hdlcd_read(%struct.hdlcd_drm_private*, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i32) #1

declare dso_local i32 @of_reserved_mem_device_init(i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @hdlcd_setup_crtc(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @drm_crtc_cleanup(i32*) #1

declare dso_local i32 @of_reserved_mem_device_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
