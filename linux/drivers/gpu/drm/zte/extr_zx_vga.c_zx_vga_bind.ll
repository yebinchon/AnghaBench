; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_vga.c_zx_vga_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.resource = type { i32 }
%struct.zx_vga = type { i32, i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"i2c_wclk\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get i2c_wclk: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to init power control: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to register ddc: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to register vga: %d\0A\00", align 1
@zx_vga_irq_handler = common dso_local global i32 0, align 4
@zx_vga_irq_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"failed to request threaded irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @zx_vga_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_vga_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.zx_vga*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.platform_device* @to_platform_device(%struct.device* %14)
  store %struct.platform_device* %15, %struct.platform_device** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.drm_device*
  store %struct.drm_device* %17, %struct.drm_device** %9, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.zx_vga* @devm_kzalloc(%struct.device* %18, i32 24, i32 %19)
  store %struct.zx_vga* %20, %struct.zx_vga** %11, align 8
  %21 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %22 = icmp ne %struct.zx_vga* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %140

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %29 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %28, i32 0, i32 3
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %32 = call i32 @dev_set_drvdata(%struct.device* %30, %struct.zx_vga* %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %10, align 8
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.resource*, %struct.resource** %10, align 8
  %38 = call i32 @devm_ioremap_resource(%struct.device* %36, %struct.resource* %37)
  %39 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %40 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %42 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @IS_ERR(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %26
  %47 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %48 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %4, align 4
  br label %140

51:                                               ; preds = %26
  %52 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %53 = call i32 @platform_get_irq(%struct.platform_device* %52, i32 0)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %4, align 4
  br label %140

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = call i32 @devm_clk_get(%struct.device* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %62 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %64 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @IS_ERR(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  %69 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %70 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @PTR_ERR(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @DRM_DEV_ERROR(%struct.device* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %140

77:                                               ; preds = %58
  %78 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %79 = call i32 @zx_vga_pwrctrl_init(%struct.zx_vga* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @DRM_DEV_ERROR(%struct.device* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %4, align 4
  br label %140

87:                                               ; preds = %77
  %88 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %89 = call i32 @zx_vga_ddc_register(%struct.zx_vga* %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %87
  %93 = load %struct.device*, %struct.device** %5, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @DRM_DEV_ERROR(%struct.device* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %4, align 4
  br label %140

97:                                               ; preds = %87
  %98 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %99 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %100 = call i32 @zx_vga_register(%struct.drm_device* %98, %struct.zx_vga* %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.device*, %struct.device** %5, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @DRM_DEV_ERROR(%struct.device* %104, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %4, align 4
  br label %140

108:                                              ; preds = %97
  %109 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %110 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %109, i32 0, i32 1
  %111 = call i32 @init_completion(i32* %110)
  %112 = load %struct.device*, %struct.device** %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @zx_vga_irq_handler, align 4
  %115 = load i32, i32* @zx_vga_irq_thread, align 4
  %116 = load i32, i32* @IRQF_SHARED, align 4
  %117 = load %struct.device*, %struct.device** %5, align 8
  %118 = call i32 @dev_name(%struct.device* %117)
  %119 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %120 = call i32 @devm_request_threaded_irq(%struct.device* %112, i32 %113, i32 %114, i32 %115, i32 %116, i32 %118, %struct.zx_vga* %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %108
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @DRM_DEV_ERROR(%struct.device* %124, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %4, align 4
  br label %140

128:                                              ; preds = %108
  %129 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %130 = getelementptr inbounds %struct.zx_vga, %struct.zx_vga* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @clk_prepare_enable(i32 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* %13, align 4
  store i32 %136, i32* %4, align 4
  br label %140

137:                                              ; preds = %128
  %138 = load %struct.zx_vga*, %struct.zx_vga** %11, align 8
  %139 = call i32 @zx_vga_hw_init(%struct.zx_vga* %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %137, %135, %123, %103, %92, %82, %68, %56, %46, %23
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.zx_vga* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.zx_vga*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @zx_vga_pwrctrl_init(%struct.zx_vga*) #1

declare dso_local i32 @zx_vga_ddc_register(%struct.zx_vga*) #1

declare dso_local i32 @zx_vga_register(%struct.drm_device*, %struct.zx_vga*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.zx_vga*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @zx_vga_hw_init(%struct.zx_vga*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
