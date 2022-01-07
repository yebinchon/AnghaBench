; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.cdn_dp_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Could not get vop id, %d\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"vop %s output to cdn-dp\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LIT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"BIG\00", align 1
@DP_SEL_VOP_LIT = common dso_local global i32 0, align 4
@GRF_SOC_CON9 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Failed to enable encoder %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Failed link train %d\0A\00", align 1
@CONTROL_VIDEO_IDLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to idle video %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Failed to config video %d\0A\00", align 1
@CONTROL_VIDEO_VALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"Failed to valid video %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @cdn_dp_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdn_dp_encoder_enable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.cdn_dp_device* @encoder_to_dp(%struct.drm_encoder* %6)
  store %struct.cdn_dp_device* %7, %struct.cdn_dp_device** %3, align 8
  %8 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %9 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %14 = call i32 @drm_of_encoder_active_endpoint_id(i32 %12, %struct.drm_encoder* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %19 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %120

23:                                               ; preds = %1
  %24 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %25 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %31 = call i32 @DRM_DEV_DEBUG_KMS(%struct.TYPE_3__* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load i32, i32* @DP_SEL_VOP_LIT, align 4
  %36 = load i32, i32* @DP_SEL_VOP_LIT, align 4
  %37 = shl i32 %36, 16
  %38 = or i32 %35, %37
  store i32 %38, i32* %5, align 4
  br label %42

39:                                               ; preds = %23
  %40 = load i32, i32* @DP_SEL_VOP_LIT, align 4
  %41 = shl i32 %40, 16
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %44 = load i32, i32* @GRF_SOC_CON9, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @cdn_dp_grf_write(%struct.cdn_dp_device* %43, i32 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %120

50:                                               ; preds = %42
  %51 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %52 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %55 = call i32 @cdn_dp_enable(%struct.cdn_dp_device* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %60 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %61, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  br label %116

64:                                               ; preds = %50
  %65 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %66 = call i32 @cdn_dp_check_link_status(%struct.cdn_dp_device* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %70 = call i32 @cdn_dp_train_link(%struct.cdn_dp_device* %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %75 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  br label %116

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79, %64
  %81 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %82 = load i32, i32* @CONTROL_VIDEO_IDLE, align 4
  %83 = call i32 @cdn_dp_set_video_status(%struct.cdn_dp_device* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %88 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  br label %116

92:                                               ; preds = %80
  %93 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %94 = call i32 @cdn_dp_config_video(%struct.cdn_dp_device* %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %99 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  br label %116

103:                                              ; preds = %92
  %104 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %105 = load i32, i32* @CONTROL_VIDEO_VALID, align 4
  %106 = call i32 @cdn_dp_set_video_status(%struct.cdn_dp_device* %104, i32 %105)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %111 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %110, i32 0, i32 1
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  br label %116

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %109, %97, %86, %73, %58
  %117 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %118 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  br label %120

120:                                              ; preds = %116, %49, %17
  ret void
}

declare dso_local %struct.cdn_dp_device* @encoder_to_dp(%struct.drm_encoder*) #1

declare dso_local i32 @drm_of_encoder_active_endpoint_id(i32, %struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i32 @cdn_dp_grf_write(%struct.cdn_dp_device*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cdn_dp_enable(%struct.cdn_dp_device*) #1

declare dso_local i32 @cdn_dp_check_link_status(%struct.cdn_dp_device*) #1

declare dso_local i32 @cdn_dp_train_link(%struct.cdn_dp_device*) #1

declare dso_local i32 @cdn_dp_set_video_status(%struct.cdn_dp_device*, i32) #1

declare dso_local i32 @cdn_dp_config_video(%struct.cdn_dp_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
