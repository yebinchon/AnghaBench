; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_drv.c_arcpgu_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arc/extr_arcpgu_drv.c_arcpgu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__*, %struct.arcpgu_drm_private* }
%struct.TYPE_6__ = type { i32 }
%struct.arcpgu_drm_private = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pxlclk\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"arc_pgu ID: 0x%x\0A\00", align 1
@ARCPGU_REG_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"encoder-slave\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @arcpgu_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arcpgu_load(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.arcpgu_drm_private*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = call %struct.platform_device* @to_platform_device(%struct.TYPE_6__* %11)
  store %struct.platform_device* %12, %struct.platform_device** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.arcpgu_drm_private* @devm_kzalloc(i32* %14, i32 8, i32 %15)
  store %struct.arcpgu_drm_private* %16, %struct.arcpgu_drm_private** %5, align 8
  %17 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %18 = icmp eq %struct.arcpgu_drm_private* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %138

22:                                               ; preds = %1
  %23 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 1
  store %struct.arcpgu_drm_private* %23, %struct.arcpgu_drm_private** %25, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @devm_clk_get(%struct.TYPE_6__* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %31 = getelementptr inbounds %struct.arcpgu_drm_private, %struct.arcpgu_drm_private* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %33 = getelementptr inbounds %struct.arcpgu_drm_private, %struct.arcpgu_drm_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %39 = getelementptr inbounds %struct.arcpgu_drm_private, %struct.arcpgu_drm_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %2, align 4
  br label %138

42:                                               ; preds = %22
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = call i32 @arcpgu_setup_mode_config(%struct.drm_device* %43)
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = load i32, i32* @IORESOURCE_MEM, align 4
  %47 = call %struct.resource* @platform_get_resource(%struct.platform_device* %45, i32 %46, i32 0)
  store %struct.resource* %47, %struct.resource** %7, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = load %struct.resource*, %struct.resource** %7, align 8
  %51 = call i32 @devm_ioremap_resource(i32* %49, %struct.resource* %50)
  %52 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %53 = getelementptr inbounds %struct.arcpgu_drm_private, %struct.arcpgu_drm_private* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %55 = getelementptr inbounds %struct.arcpgu_drm_private, %struct.arcpgu_drm_private* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %42
  %60 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %61 = getelementptr inbounds %struct.arcpgu_drm_private, %struct.arcpgu_drm_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %2, align 4
  br label %138

64:                                               ; preds = %42
  %65 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %66 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load %struct.arcpgu_drm_private*, %struct.arcpgu_drm_private** %5, align 8
  %69 = load i32, i32* @ARCPGU_REG_ID, align 4
  %70 = call i32 @arc_pgu_read(%struct.arcpgu_drm_private* %68, i32 %69)
  %71 = call i32 @dev_info(%struct.TYPE_6__* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = call i32 @of_reserved_mem_device_init(%struct.TYPE_6__* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %64
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %138

85:                                               ; preds = %78, %64
  %86 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %87 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 @DMA_BIT_MASK(i32 32)
  %90 = call i64 @dma_set_mask_and_coherent(%struct.TYPE_6__* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %138

95:                                               ; preds = %85
  %96 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %97 = call i64 @arc_pgu_setup_crtc(%struct.drm_device* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %138

102:                                              ; preds = %95
  %103 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %104 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.device_node* @of_parse_phandle(i32 %107, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store %struct.device_node* %108, %struct.device_node** %6, align 8
  %109 = load %struct.device_node*, %struct.device_node** %6, align 8
  %110 = icmp ne %struct.device_node* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %113 = load %struct.device_node*, %struct.device_node** %6, align 8
  %114 = call i32 @arcpgu_drm_hdmi_init(%struct.drm_device* %112, %struct.device_node* %113)
  store i32 %114, i32* %8, align 4
  %115 = load %struct.device_node*, %struct.device_node** %6, align 8
  %116 = call i32 @of_node_put(%struct.device_node* %115)
  %117 = load i32, i32* %8, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %2, align 4
  br label %138

121:                                              ; preds = %111
  br label %130

122:                                              ; preds = %102
  %123 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %124 = call i32 @arcpgu_drm_sim_init(%struct.drm_device* %123, i32* null)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %2, align 4
  br label %138

129:                                              ; preds = %122
  br label %130

130:                                              ; preds = %129, %121
  %131 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %132 = call i32 @drm_mode_config_reset(%struct.drm_device* %131)
  %133 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %134 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %133)
  %135 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %136 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %137 = call i32 @platform_set_drvdata(%struct.platform_device* %135, %struct.drm_device* %136)
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %130, %127, %119, %99, %92, %83, %59, %37, %19
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.TYPE_6__*) #1

declare dso_local %struct.arcpgu_drm_private* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @arcpgu_setup_mode_config(%struct.drm_device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @arc_pgu_read(%struct.arcpgu_drm_private*, i32) #1

declare dso_local i32 @of_reserved_mem_device_init(%struct.TYPE_6__*) #1

declare dso_local i64 @dma_set_mask_and_coherent(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @arc_pgu_setup_crtc(%struct.drm_device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @arcpgu_drm_hdmi_init(%struct.drm_device*, %struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @arcpgu_drm_sim_init(%struct.drm_device*, i32*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
