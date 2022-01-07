; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_vop_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.vop_data = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.vop = type { i32, i32, %struct.drm_device*, i32, %struct.vop_data*, i32, i32, i32, i8*, i32, i32, %struct.device* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@win = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cannot find irq for vop\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot initial vop dev - err %d\0A\00", align 1
@vop_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@VOP_FEATURE_INTERNAL_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @vop_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.vop_data*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.vop*, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.platform_device* @to_platform_device(%struct.device* %15)
  store %struct.platform_device* %16, %struct.platform_device** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.drm_device*
  store %struct.drm_device* %18, %struct.drm_device** %10, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.vop_data* @of_device_get_match_data(%struct.device* %19)
  store %struct.vop_data* %20, %struct.vop_data** %9, align 8
  %21 = load %struct.vop_data*, %struct.vop_data** %9, align 8
  %22 = icmp ne %struct.vop_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %189

26:                                               ; preds = %3
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.vop*, %struct.vop** %11, align 8
  %29 = load i32, i32* @win, align 4
  %30 = load %struct.vop_data*, %struct.vop_data** %9, align 8
  %31 = getelementptr inbounds %struct.vop_data, %struct.vop_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @struct_size(%struct.vop* %28, i32 %29, i32 %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kzalloc(%struct.device* %27, i32 %33, i32 %34)
  %36 = bitcast i8* %35 to %struct.vop*
  store %struct.vop* %36, %struct.vop** %11, align 8
  %37 = load %struct.vop*, %struct.vop** %11, align 8
  %38 = icmp ne %struct.vop* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %189

42:                                               ; preds = %26
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.vop*, %struct.vop** %11, align 8
  %45 = getelementptr inbounds %struct.vop, %struct.vop* %44, i32 0, i32 11
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.vop_data*, %struct.vop_data** %9, align 8
  %47 = load %struct.vop*, %struct.vop** %11, align 8
  %48 = getelementptr inbounds %struct.vop, %struct.vop* %47, i32 0, i32 4
  store %struct.vop_data* %46, %struct.vop_data** %48, align 8
  %49 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %50 = load %struct.vop*, %struct.vop** %11, align 8
  %51 = getelementptr inbounds %struct.vop, %struct.vop* %50, i32 0, i32 2
  store %struct.drm_device* %49, %struct.drm_device** %51, align 8
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.vop*, %struct.vop** %11, align 8
  %54 = call i32 @dev_set_drvdata(%struct.device* %52, %struct.vop* %53)
  %55 = load %struct.vop*, %struct.vop** %11, align 8
  %56 = call i32 @vop_win_init(%struct.vop* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %58 = load i32, i32* @IORESOURCE_MEM, align 4
  %59 = call %struct.resource* @platform_get_resource(%struct.platform_device* %57, i32 %58, i32 0)
  store %struct.resource* %59, %struct.resource** %12, align 8
  %60 = load %struct.resource*, %struct.resource** %12, align 8
  %61 = call i32 @resource_size(%struct.resource* %60)
  %62 = load %struct.vop*, %struct.vop** %11, align 8
  %63 = getelementptr inbounds %struct.vop, %struct.vop* %62, i32 0, i32 9
  store i32 %61, i32* %63, align 8
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load %struct.resource*, %struct.resource** %12, align 8
  %66 = call i32 @devm_ioremap_resource(%struct.device* %64, %struct.resource* %65)
  %67 = load %struct.vop*, %struct.vop** %11, align 8
  %68 = getelementptr inbounds %struct.vop, %struct.vop* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vop*, %struct.vop** %11, align 8
  %70 = getelementptr inbounds %struct.vop, %struct.vop* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @IS_ERR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %42
  %75 = load %struct.vop*, %struct.vop** %11, align 8
  %76 = getelementptr inbounds %struct.vop, %struct.vop* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @PTR_ERR(i32 %77)
  store i32 %78, i32* %4, align 4
  br label %189

79:                                               ; preds = %42
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = load %struct.vop*, %struct.vop** %11, align 8
  %82 = getelementptr inbounds %struct.vop, %struct.vop* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @devm_kzalloc(%struct.device* %80, i32 %83, i32 %84)
  %86 = load %struct.vop*, %struct.vop** %11, align 8
  %87 = getelementptr inbounds %struct.vop, %struct.vop* %86, i32 0, i32 8
  store i8* %85, i8** %87, align 8
  %88 = load %struct.vop*, %struct.vop** %11, align 8
  %89 = getelementptr inbounds %struct.vop, %struct.vop* %88, i32 0, i32 8
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %189

95:                                               ; preds = %79
  %96 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %97 = call i32 @platform_get_irq(%struct.platform_device* %96, i32 0)
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = bitcast %struct.device* %101 to i32*
  %103 = call i32 (i32*, i8*, ...) @DRM_DEV_ERROR(i32* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %4, align 4
  br label %189

105:                                              ; preds = %95
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.vop*, %struct.vop** %11, align 8
  %108 = getelementptr inbounds %struct.vop, %struct.vop* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.vop*, %struct.vop** %11, align 8
  %110 = getelementptr inbounds %struct.vop, %struct.vop* %109, i32 0, i32 7
  %111 = call i32 @spin_lock_init(i32* %110)
  %112 = load %struct.vop*, %struct.vop** %11, align 8
  %113 = getelementptr inbounds %struct.vop, %struct.vop* %112, i32 0, i32 6
  %114 = call i32 @spin_lock_init(i32* %113)
  %115 = load %struct.vop*, %struct.vop** %11, align 8
  %116 = getelementptr inbounds %struct.vop, %struct.vop* %115, i32 0, i32 5
  %117 = call i32 @mutex_init(i32* %116)
  %118 = load %struct.vop*, %struct.vop** %11, align 8
  %119 = call i32 @vop_create_crtc(%struct.vop* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %105
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %4, align 4
  br label %189

124:                                              ; preds = %105
  %125 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %126 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %125, i32 0, i32 0
  %127 = call i32 @pm_runtime_enable(i32* %126)
  %128 = load %struct.vop*, %struct.vop** %11, align 8
  %129 = call i32 @vop_initial(%struct.vop* %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load i32, i32* %13, align 4
  %136 = call i32 (i32*, i8*, ...) @DRM_DEV_ERROR(i32* %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %135)
  br label %182

137:                                              ; preds = %124
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = load %struct.vop*, %struct.vop** %11, align 8
  %140 = getelementptr inbounds %struct.vop, %struct.vop* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @vop_isr, align 4
  %143 = load i32, i32* @IRQF_SHARED, align 4
  %144 = load %struct.device*, %struct.device** %5, align 8
  %145 = call i32 @dev_name(%struct.device* %144)
  %146 = load %struct.vop*, %struct.vop** %11, align 8
  %147 = call i32 @devm_request_irq(%struct.device* %138, i32 %141, i32 %142, i32 %143, i32 %145, %struct.vop* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %137
  br label %182

151:                                              ; preds = %137
  %152 = load %struct.vop*, %struct.vop** %11, align 8
  %153 = getelementptr inbounds %struct.vop, %struct.vop* %152, i32 0, i32 4
  %154 = load %struct.vop_data*, %struct.vop_data** %153, align 8
  %155 = getelementptr inbounds %struct.vop_data, %struct.vop_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @VOP_FEATURE_INTERNAL_RGB, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %181

160:                                              ; preds = %151
  %161 = load %struct.device*, %struct.device** %5, align 8
  %162 = load %struct.vop*, %struct.vop** %11, align 8
  %163 = getelementptr inbounds %struct.vop, %struct.vop* %162, i32 0, i32 3
  %164 = load %struct.vop*, %struct.vop** %11, align 8
  %165 = getelementptr inbounds %struct.vop, %struct.vop* %164, i32 0, i32 2
  %166 = load %struct.drm_device*, %struct.drm_device** %165, align 8
  %167 = call i32 @rockchip_rgb_init(%struct.device* %161, i32* %163, %struct.drm_device* %166)
  %168 = load %struct.vop*, %struct.vop** %11, align 8
  %169 = getelementptr inbounds %struct.vop, %struct.vop* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.vop*, %struct.vop** %11, align 8
  %171 = getelementptr inbounds %struct.vop, %struct.vop* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @IS_ERR(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %160
  %176 = load %struct.vop*, %struct.vop** %11, align 8
  %177 = getelementptr inbounds %struct.vop, %struct.vop* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @PTR_ERR(i32 %178)
  store i32 %179, i32* %13, align 4
  br label %182

180:                                              ; preds = %160
  br label %181

181:                                              ; preds = %180, %151
  store i32 0, i32* %4, align 4
  br label %189

182:                                              ; preds = %175, %150, %132
  %183 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %184 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %183, i32 0, i32 0
  %185 = call i32 @pm_runtime_disable(i32* %184)
  %186 = load %struct.vop*, %struct.vop** %11, align 8
  %187 = call i32 @vop_destroy_crtc(%struct.vop* %186)
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %182, %181, %122, %100, %92, %74, %39, %23
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.vop_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.vop*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.vop*) #1

declare dso_local i32 @vop_win_init(%struct.vop*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*, ...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @vop_create_crtc(%struct.vop*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @vop_initial(%struct.vop*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.vop*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @rockchip_rgb_init(%struct.device*, i32*, %struct.drm_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @vop_destroy_crtc(%struct.vop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
