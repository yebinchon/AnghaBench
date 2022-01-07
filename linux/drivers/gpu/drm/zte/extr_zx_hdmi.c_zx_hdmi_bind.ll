; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_hdmi.c_zx_hdmi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.drm_device = type { i32 }
%struct.resource = type { i32 }
%struct.zx_hdmi = type { i8*, %struct.device*, i8*, i8*, i8*, %struct.drm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to remap hdmi region: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"osc_cec\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to get cec_clk: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"osc_clk\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to get osc_clk: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"xclk\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to get xclk: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to register ddc: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"failed to register audio: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"failed to register hdmi: %d\0A\00", align 1
@zx_hdmi_irq_handler = common dso_local global i32 0, align 4
@zx_hdmi_irq_thread = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"failed to request threaded irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @zx_hdmi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_hdmi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.zx_hdmi*, align 8
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
  %20 = call %struct.zx_hdmi* @devm_kzalloc(%struct.device* %18, i32 48, i32 %19)
  store %struct.zx_hdmi* %20, %struct.zx_hdmi** %11, align 8
  %21 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %22 = icmp ne %struct.zx_hdmi* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %177

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %29 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %28, i32 0, i32 1
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %31 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %32 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %31, i32 0, i32 5
  store %struct.drm_device* %30, %struct.drm_device** %32, align 8
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %35 = call i32 @dev_set_drvdata(%struct.device* %33, %struct.zx_hdmi* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %37 = load i32, i32* @IORESOURCE_MEM, align 4
  %38 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 0)
  store %struct.resource* %38, %struct.resource** %10, align 8
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.resource*, %struct.resource** %10, align 8
  %41 = call i8* @devm_ioremap_resource(%struct.device* %39, %struct.resource* %40)
  %42 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %43 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %45 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @IS_ERR(i8* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %26
  %50 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %51 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %50, i32 0, i32 4
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @PTR_ERR(i8* %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @DRM_DEV_ERROR(%struct.device* %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %4, align 4
  br label %177

58:                                               ; preds = %26
  %59 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %60 = call i32 @platform_get_irq(%struct.platform_device* %59, i32 0)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  br label %177

65:                                               ; preds = %58
  %66 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %67 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %66, i32 0, i32 1
  %68 = load %struct.device*, %struct.device** %67, align 8
  %69 = call i8* @devm_clk_get(%struct.device* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %71 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %73 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @IS_ERR(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %79 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @PTR_ERR(i8* %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.device*, %struct.device** %5, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @DRM_DEV_ERROR(%struct.device* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %13, align 4
  store i32 %85, i32* %4, align 4
  br label %177

86:                                               ; preds = %65
  %87 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %88 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %87, i32 0, i32 1
  %89 = load %struct.device*, %struct.device** %88, align 8
  %90 = call i8* @devm_clk_get(%struct.device* %89, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %92 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %94 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @IS_ERR(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %86
  %99 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %100 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @PTR_ERR(i8* %101)
  store i32 %102, i32* %13, align 4
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @DRM_DEV_ERROR(%struct.device* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %4, align 4
  br label %177

107:                                              ; preds = %86
  %108 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %109 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %108, i32 0, i32 1
  %110 = load %struct.device*, %struct.device** %109, align 8
  %111 = call i8* @devm_clk_get(%struct.device* %110, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %112 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %113 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %115 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %107
  %120 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %121 = getelementptr inbounds %struct.zx_hdmi, %struct.zx_hdmi* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @PTR_ERR(i8* %122)
  store i32 %123, i32* %13, align 4
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @DRM_DEV_ERROR(%struct.device* %124, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %4, align 4
  br label %177

128:                                              ; preds = %107
  %129 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %130 = call i32 @zx_hdmi_ddc_register(%struct.zx_hdmi* %129)
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @DRM_DEV_ERROR(%struct.device* %134, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %4, align 4
  br label %177

138:                                              ; preds = %128
  %139 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %140 = call i32 @zx_hdmi_audio_register(%struct.zx_hdmi* %139)
  store i32 %140, i32* %13, align 4
  %141 = load i32, i32* %13, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.device*, %struct.device** %5, align 8
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @DRM_DEV_ERROR(%struct.device* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %4, align 4
  br label %177

148:                                              ; preds = %138
  %149 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %150 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %151 = call i32 @zx_hdmi_register(%struct.drm_device* %149, %struct.zx_hdmi* %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %148
  %155 = load %struct.device*, %struct.device** %5, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @DRM_DEV_ERROR(%struct.device* %155, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %4, align 4
  br label %177

159:                                              ; preds = %148
  %160 = load %struct.device*, %struct.device** %5, align 8
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @zx_hdmi_irq_handler, align 4
  %163 = load i32, i32* @zx_hdmi_irq_thread, align 4
  %164 = load i32, i32* @IRQF_SHARED, align 4
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = call i32 @dev_name(%struct.device* %165)
  %167 = load %struct.zx_hdmi*, %struct.zx_hdmi** %11, align 8
  %168 = call i32 @devm_request_threaded_irq(%struct.device* %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %166, %struct.zx_hdmi* %167)
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %159
  %172 = load %struct.device*, %struct.device** %5, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @DRM_DEV_ERROR(%struct.device* %172, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* %13, align 4
  store i32 %175, i32* %4, align 4
  br label %177

176:                                              ; preds = %159
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %176, %171, %154, %143, %133, %119, %98, %77, %63, %49, %23
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.zx_hdmi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.zx_hdmi*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @zx_hdmi_ddc_register(%struct.zx_hdmi*) #1

declare dso_local i32 @zx_hdmi_audio_register(%struct.zx_hdmi*) #1

declare dso_local i32 @zx_hdmi_register(%struct.drm_device*, %struct.zx_hdmi*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32, i32, i32, i32, %struct.zx_hdmi*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
