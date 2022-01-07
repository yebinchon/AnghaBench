; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_drm_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_drm_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.rockchip_dp_device = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"vop %s output to dp\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"LIT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"BIG\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to enable grfclk %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Could not write to GRF: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_atomic_state*)* @rockchip_dp_drm_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_dp_drm_encoder_enable(%struct.drm_encoder* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_atomic_state*, align 8
  %5 = alloca %struct.rockchip_dp_device*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %4, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = call %struct.rockchip_dp_device* @to_dp(%struct.drm_encoder* %10)
  store %struct.rockchip_dp_device* %11, %struct.rockchip_dp_device** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %14 = call %struct.drm_crtc* @rockchip_dp_drm_get_new_crtc(%struct.drm_encoder* %12, %struct.drm_atomic_state* %13)
  store %struct.drm_crtc* %14, %struct.drm_crtc** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %16 = icmp ne %struct.drm_crtc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %101

18:                                               ; preds = %2
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %4, align 8
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %21 = call %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(%struct.drm_atomic_state* %19, %struct.drm_crtc* %20)
  store %struct.drm_crtc_state* %21, %struct.drm_crtc_state** %7, align 8
  %22 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %23 = icmp ne %struct.drm_crtc_state* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %26 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %101

30:                                               ; preds = %24, %18
  %31 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %32 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %37 = call i32 @drm_of_encoder_active_endpoint_id(i32 %35, %struct.drm_encoder* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %101

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %46 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  br label %56

50:                                               ; preds = %41
  %51 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %52 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %58 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @DRM_DEV_DEBUG(%struct.TYPE_5__* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %66 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @clk_prepare_enable(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %73 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @DRM_DEV_ERROR(%struct.TYPE_5__* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  br label %101

77:                                               ; preds = %56
  %78 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %79 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %82 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @regmap_write(i32 %80, i32 %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %77
  %91 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %92 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @DRM_DEV_ERROR(%struct.TYPE_5__* %93, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %77
  %97 = load %struct.rockchip_dp_device*, %struct.rockchip_dp_device** %5, align 8
  %98 = getelementptr inbounds %struct.rockchip_dp_device, %struct.rockchip_dp_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @clk_disable_unprepare(i32 %99)
  br label %101

101:                                              ; preds = %96, %71, %40, %29, %17
  ret void
}

declare dso_local %struct.rockchip_dp_device* @to_dp(%struct.drm_encoder*) #1

declare dso_local %struct.drm_crtc* @rockchip_dp_drm_get_new_crtc(%struct.drm_encoder*, %struct.drm_atomic_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @drm_of_encoder_active_endpoint_id(i32, %struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEV_DEBUG(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
