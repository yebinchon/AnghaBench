; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.inno_hdmi = type { i32*, i32*, %struct.TYPE_7__, %struct.TYPE_8__, i32, %struct.device*, i32*, %struct.drm_device* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_8__*)* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to get HDMI pclk clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Cannot enable HDMI pclk clock: %d\0A\00", align 1
@HDMI_STATUS = common dso_local global i32 0, align 4
@m_MASK_INT_HOTPLUG = common dso_local global i32 0, align 4
@inno_hdmi_hardirq = common dso_local global i32 0, align 4
@inno_hdmi_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @inno_hdmi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.inno_hdmi*, align 8
  %11 = alloca %struct.resource*, align 8
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
  %20 = call %struct.inno_hdmi* @devm_kzalloc(%struct.device* %18, i32 64, i32 %19)
  store %struct.inno_hdmi* %20, %struct.inno_hdmi** %10, align 8
  %21 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %22 = icmp ne %struct.inno_hdmi* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %179

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %29 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %28, i32 0, i32 5
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %31 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %32 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %31, i32 0, i32 7
  store %struct.drm_device* %30, %struct.drm_device** %32, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %34 = load i32, i32* @IORESOURCE_MEM, align 4
  %35 = call %struct.resource* @platform_get_resource(%struct.platform_device* %33, i32 %34, i32 0)
  store %struct.resource* %35, %struct.resource** %11, align 8
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.resource*, %struct.resource** %11, align 8
  %38 = call i32* @devm_ioremap_resource(%struct.device* %36, %struct.resource* %37)
  %39 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %40 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %39, i32 0, i32 6
  store i32* %38, i32** %40, align 8
  %41 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %42 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %26
  %47 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %48 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %47, i32 0, i32 6
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  store i32 %50, i32* %4, align 4
  br label %179

51:                                               ; preds = %26
  %52 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %53 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %52, i32 0, i32 5
  %54 = load %struct.device*, %struct.device** %53, align 8
  %55 = call i32* @devm_clk_get(%struct.device* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %57 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %59 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @IS_ERR(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %51
  %64 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %65 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %64, i32 0, i32 5
  %66 = load %struct.device*, %struct.device** %65, align 8
  %67 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %69 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %4, align 4
  br label %179

72:                                               ; preds = %51
  %73 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %74 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @clk_prepare_enable(i32* %75)
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %81 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %80, i32 0, i32 5
  %82 = load %struct.device*, %struct.device** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 (%struct.device*, i8*, ...) @DRM_DEV_ERROR(%struct.device* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %4, align 4
  br label %179

86:                                               ; preds = %72
  %87 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %88 = call i32 @platform_get_irq(%struct.platform_device* %87, i32 0)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %13, align 4
  br label %173

93:                                               ; preds = %86
  %94 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %95 = call i32 @inno_hdmi_reset(%struct.inno_hdmi* %94)
  %96 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %97 = call i32* @inno_hdmi_i2c_adapter(%struct.inno_hdmi* %96)
  %98 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %99 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  %100 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %101 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @IS_ERR(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %93
  %106 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %107 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @PTR_ERR(i32* %108)
  store i32 %109, i32* %13, align 4
  %110 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %111 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %110, i32 0, i32 1
  store i32* null, i32** %111, align 8
  br label %173

112:                                              ; preds = %93
  %113 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %114 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @clk_get_rate(i32* %115)
  %117 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %118 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %117, i32 0, i32 4
  store i32 %116, i32* %118, align 8
  %119 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %120 = call i32 @inno_hdmi_i2c_init(%struct.inno_hdmi* %119)
  %121 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %122 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %123 = call i32 @inno_hdmi_register(%struct.drm_device* %121, %struct.inno_hdmi* %122)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  br label %168

127:                                              ; preds = %112
  %128 = load %struct.device*, %struct.device** %5, align 8
  %129 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %130 = call i32 @dev_set_drvdata(%struct.device* %128, %struct.inno_hdmi* %129)
  %131 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %132 = load i32, i32* @HDMI_STATUS, align 4
  %133 = load i32, i32* @m_MASK_INT_HOTPLUG, align 4
  %134 = call i32 @v_MASK_INT_HOTPLUG(i32 1)
  %135 = call i32 @hdmi_modb(%struct.inno_hdmi* %131, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.device*, %struct.device** %5, align 8
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @inno_hdmi_hardirq, align 4
  %139 = load i32, i32* @inno_hdmi_irq, align 4
  %140 = load i32, i32* @IRQF_SHARED, align 4
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = call i32 @dev_name(%struct.device* %141)
  %143 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %144 = call i32 @devm_request_threaded_irq(%struct.device* %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %142, %struct.inno_hdmi* %143)
  store i32 %144, i32* %13, align 4
  %145 = load i32, i32* %13, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %127
  br label %149

148:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %179

149:                                              ; preds = %147
  %150 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %151 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %154, align 8
  %156 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %157 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %156, i32 0, i32 3
  %158 = call i32 %155(%struct.TYPE_8__* %157)
  %159 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %160 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %163, align 8
  %165 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %166 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %165, i32 0, i32 2
  %167 = call i32 %164(%struct.TYPE_7__* %166)
  br label %168

168:                                              ; preds = %149, %126
  %169 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %170 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @i2c_put_adapter(i32* %171)
  br label %173

173:                                              ; preds = %168, %105, %91
  %174 = load %struct.inno_hdmi*, %struct.inno_hdmi** %10, align 8
  %175 = getelementptr inbounds %struct.inno_hdmi, %struct.inno_hdmi* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @clk_disable_unprepare(i32* %176)
  %178 = load i32, i32* %13, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %173, %148, %79, %63, %46, %23
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.inno_hdmi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @inno_hdmi_reset(%struct.inno_hdmi*) #1

declare dso_local i32* @inno_hdmi_i2c_adapter(%struct.inno_hdmi*) #1

declare dso_local i32 @clk_get_rate(i32*) #1

declare dso_local i32 @inno_hdmi_i2c_init(%struct.inno_hdmi*) #1

declare dso_local i32 @inno_hdmi_register(%struct.drm_device*, %struct.inno_hdmi*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.inno_hdmi*) #1

declare dso_local i32 @hdmi_modb(%struct.inno_hdmi*, i32, i32, i32) #1

declare dso_local i32 @v_MASK_INT_HOTPLUG(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.inno_hdmi*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @i2c_put_adapter(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
