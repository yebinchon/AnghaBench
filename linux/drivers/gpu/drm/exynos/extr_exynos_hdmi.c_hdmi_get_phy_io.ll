; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_get_phy_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_get_phy_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"samsung,exynos4212-hdmiphy\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to find hdmiphy node in device tree\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to ioremap hdmi phy\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Failed to get hdmi phy i2c client\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_context*)* @hdmi_get_phy_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_get_phy_io(%struct.hdmi_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %3, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* %7)
  store %struct.device_node* %8, %struct.device_node** %5, align 8
  %9 = load %struct.device_node*, %struct.device_node** %5, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %1
  %12 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %13 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.device_node* @of_parse_phandle(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %22 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @DRM_DEV_ERROR(%struct.TYPE_4__* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %71

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27, %1
  %29 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %30 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.device_node*, %struct.device_node** %5, align 8
  %37 = call i32 @of_iomap(%struct.device_node* %36, i32 0)
  %38 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %39 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %41 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %35
  %45 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %46 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @DRM_DEV_ERROR(%struct.TYPE_4__* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %67

51:                                               ; preds = %35
  br label %66

52:                                               ; preds = %28
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call i32 @of_find_i2c_device_by_node(%struct.device_node* %53)
  %55 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %56 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %58 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = call i32 @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i32, i32* @EPROBE_DEFER, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %67

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %61, %44
  %68 = load %struct.device_node*, %struct.device_node** %5, align 8
  %69 = call i32 @of_node_put(%struct.device_node* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @of_find_i2c_device_by_node(%struct.device_node*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
