; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rockchip_dp_device = type { %struct.TYPE_5__, i32, %struct.TYPE_6__, %struct.drm_device*, %struct.rockchip_dp_chip_data* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.drm_device = type { i32 }
%struct.rockchip_dp_chip_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to create drm encoder\0A\00", align 1
@rockchip_dp_poweron_start = common dso_local global i32 0, align 4
@rockchip_dp_powerdown = common dso_local global i32 0, align 4
@rockchip_dp_get_modes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @rockchip_dp_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dp_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rockchip_dp_device*, align 8
  %9 = alloca %struct.rockchip_dp_chip_data*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.rockchip_dp_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.rockchip_dp_device* %13, %struct.rockchip_dp_device** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.drm_device*
  store %struct.drm_device* %15, %struct.drm_device** %10, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.rockchip_dp_chip_data* @of_device_get_match_data(%struct.device* %16)
  store %struct.rockchip_dp_chip_data* %17, %struct.rockchip_dp_chip_data** %9, align 8
  %18 = load %struct.rockchip_dp_chip_data*, %struct.rockchip_dp_chip_data** %9, align 8
  %19 = icmp ne %struct.rockchip_dp_chip_data* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %94

23:                                               ; preds = %3
  %24 = load %struct.rockchip_dp_chip_data*, %struct.rockchip_dp_chip_data** %9, align 8
  %25 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %26 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %25, i32 0, i32 4
  store %struct.rockchip_dp_chip_data* %24, %struct.rockchip_dp_chip_data** %26, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %28 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %29 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %28, i32 0, i32 3
  store %struct.drm_device* %27, %struct.drm_device** %29, align 8
  %30 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %31 = call i32 @rockchip_dp_drm_create_encoder(%struct.rockchip_dp_device* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %23
  %35 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %94

37:                                               ; preds = %23
  %38 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %39 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %38, i32 0, i32 0
  %40 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %41 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %42, align 8
  %43 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %44 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %43, i32 0, i32 4
  %45 = load %struct.rockchip_dp_chip_data*, %struct.rockchip_dp_chip_data** %44, align 8
  %46 = getelementptr inbounds %struct.rockchip_dp_chip_data, %struct.rockchip_dp_chip_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %49 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* @rockchip_dp_poweron_start, align 4
  %52 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %53 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load i32, i32* @rockchip_dp_powerdown, align 4
  %56 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %57 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* @rockchip_dp_get_modes, align 4
  %60 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %61 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %65 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %64, i32 0, i32 3
  %66 = load %struct.drm_device*, %struct.drm_device** %65, align 8
  %67 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %68 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %67, i32 0, i32 2
  %69 = call i32 @analogix_dp_bind(%struct.device* %63, %struct.drm_device* %66, %struct.TYPE_6__* %68)
  %70 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %71 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %73 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @IS_ERR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %37
  %78 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %79 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @PTR_ERR(i32 %80)
  store i32 %81, i32* %11, align 4
  br label %83

82:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %94

83:                                               ; preds = %77
  %84 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %85 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %88, align 8
  %90 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %8, align 8
  %91 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %90, i32 0, i32 0
  %92 = call i32 %89(%struct.TYPE_5__* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %83, %82, %34, %20
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local %struct.rockchip_dp_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.rockchip_dp_chip_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @rockchip_dp_drm_create_encoder(%struct.rockchip_dp_device*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @analogix_dp_bind(%struct.device*, %struct.drm_device*, %struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
