; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_platform_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_drv.c_rockchip_drm_platform_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { %struct.device_node* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"iommus\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"no iommu attached for %pOF, using non-iommu buffers\0A\00", align 1
@is_support_iommu = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"missing 'ports' property\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"No available vop found for display-subsystem.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rockchip_drm_platform_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_drm_platform_of_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_node*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %58, %17
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.device_node* %21, %struct.device_node** %5, align 8
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %61

25:                                               ; preds = %18
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = getelementptr inbounds %struct.device_node, %struct.device_node* %26, i32 0, i32 0
  %28 = load %struct.device_node*, %struct.device_node** %27, align 8
  %29 = call i32 @of_device_is_available(%struct.device_node* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  br label %58

34:                                               ; preds = %25
  %35 = load %struct.device_node*, %struct.device_node** %5, align 8
  %36 = getelementptr inbounds %struct.device_node, %struct.device_node* %35, i32 0, i32 0
  %37 = load %struct.device_node*, %struct.device_node** %36, align 8
  %38 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %38, %struct.device_node** %8, align 8
  %39 = load %struct.device_node*, %struct.device_node** %8, align 8
  %40 = icmp ne %struct.device_node* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = getelementptr inbounds %struct.device_node, %struct.device_node* %42, i32 0, i32 0
  %44 = load %struct.device_node*, %struct.device_node** %43, align 8
  %45 = call i32 @of_device_is_available(%struct.device_node* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = load %struct.device_node*, %struct.device_node** %5, align 8
  %50 = getelementptr inbounds %struct.device_node, %struct.device_node* %49, i32 0, i32 0
  %51 = load %struct.device_node*, %struct.device_node** %50, align 8
  %52 = call i32 @DRM_DEV_DEBUG(%struct.device* %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %51)
  store i32 0, i32* @is_support_iommu, align 4
  br label %53

53:                                               ; preds = %47, %41
  store i32 1, i32* %6, align 4
  %54 = load %struct.device_node*, %struct.device_node** %8, align 8
  %55 = call i32 @of_node_put(%struct.device_node* %54)
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = call i32 @of_node_put(%struct.device_node* %56)
  br label %58

58:                                               ; preds = %53, %31
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %18

61:                                               ; preds = %24
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = call i32 @DRM_DEV_ERROR(%struct.device* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %78

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = call i32 @DRM_DEV_ERROR(%struct.device* %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %78

77:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %72, %64, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_device_is_available(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @DRM_DEV_DEBUG(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
