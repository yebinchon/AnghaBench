; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_fbdev.c_rockchip_drm_fbdev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_fbdev.c_rockchip_drm_fbdev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__, %struct.rockchip_drm_private* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rockchip_drm_private = type { %struct.drm_fb_helper }
%struct.drm_fb_helper = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@rockchip_drm_fb_helper_funcs = common dso_local global i32 0, align 4
@ROCKCHIP_MAX_CONNECTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to initialize drm fb helper - %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to add connectors - %d.\0A\00", align 1
@PREFERRED_BPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to set initial hw config - %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rockchip_drm_fbdev_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.rockchip_drm_private*, align 8
  %5 = alloca %struct.drm_fb_helper*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 2
  %9 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %8, align 8
  store %struct.rockchip_drm_private* %9, %struct.rockchip_drm_private** %4, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %71

24:                                               ; preds = %15
  %25 = load %struct.rockchip_drm_private*, %struct.rockchip_drm_private** %4, align 8
  %26 = getelementptr inbounds %struct.rockchip_drm_private, %struct.rockchip_drm_private* %25, i32 0, i32 0
  store %struct.drm_fb_helper* %26, %struct.drm_fb_helper** %5, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %29 = call i32 @drm_fb_helper_prepare(%struct.drm_device* %27, %struct.drm_fb_helper* %28, i32* @rockchip_drm_fb_helper_funcs)
  %30 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %31 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %32 = load i32, i32* @ROCKCHIP_MAX_CONNECTOR, align 4
  %33 = call i32 @drm_fb_helper_init(%struct.drm_device* %30, %struct.drm_fb_helper* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @DRM_DEV_ERROR(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %71

43:                                               ; preds = %24
  %44 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %45 = call i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @DRM_DEV_ERROR(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %67

54:                                               ; preds = %43
  %55 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %56 = load i32, i32* @PREFERRED_BPP, align 4
  %57 = call i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %62 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @DRM_DEV_ERROR(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %67

66:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %71

67:                                               ; preds = %60, %48
  %68 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %5, align 8
  %69 = call i32 @drm_fb_helper_fini(%struct.drm_fb_helper* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %66, %36, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @drm_fb_helper_prepare(%struct.drm_device*, %struct.drm_fb_helper*, i32*) #1

declare dso_local i32 @drm_fb_helper_init(%struct.drm_device*, %struct.drm_fb_helper*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @drm_fb_helper_single_add_all_connectors(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper*, i32) #1

declare dso_local i32 @drm_fb_helper_fini(%struct.drm_fb_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
