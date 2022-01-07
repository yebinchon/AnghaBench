; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_dp_device = type { i32*, i32*, i32*, i32*, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"rockchip,grf\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to get rockchip,grf property\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"grf\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get grf clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to get pclk property\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"dp\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"failed to get dp reset control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_dp_device*)* @rockchip_dp_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dp_of_probe(%struct.rockchip_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_dp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.rockchip_dp_device* %0, %struct.rockchip_dp_device** %3, align 8
  %6 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %6, i32 0, i32 4
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i32* @syscon_regmap_lookup_by_phandle(%struct.device_node* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %15 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %14, i32 0, i32 3
  store i32* %13, i32** %15, align 8
  %16 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %17 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @IS_ERR(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @DRM_DEV_ERROR(%struct.device* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %25 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @PTR_ERR(i32* %26)
  store i32 %27, i32* %2, align 4
  br label %106

28:                                               ; preds = %1
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i8* @devm_clk_get(%struct.device* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %33 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %35 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @PTR_ERR(i32* %36)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %43 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %70

44:                                               ; preds = %28
  %45 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %46 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @PTR_ERR(i32* %47)
  %49 = load i32, i32* @EPROBE_DEFER, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %106

55:                                               ; preds = %44
  %56 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %57 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @IS_ERR(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @DRM_DEV_ERROR(%struct.device* %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %65 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @PTR_ERR(i32* %66)
  store i32 %67, i32* %2, align 4
  br label %106

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  br label %70

70:                                               ; preds = %69, %41
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i8* @devm_clk_get(%struct.device* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %75 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %77 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @IS_ERR(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = call i32 @DRM_DEV_ERROR(%struct.device* %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %84 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %85 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @PTR_ERR(i32* %86)
  store i32 %87, i32* %2, align 4
  br label %106

88:                                               ; preds = %70
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32* @devm_reset_control_get(%struct.device* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %91 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %92 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %91, i32 0, i32 0
  store i32* %90, i32** %92, align 8
  %93 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %94 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i64 @IS_ERR(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %88
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = call i32 @DRM_DEV_ERROR(%struct.device* %99, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %101 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %3, align 8
  %102 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @PTR_ERR(i32* %103)
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %88
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %98, %81, %61, %52, %21
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32* @devm_reset_control_get(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
