; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_mode_setplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_mode_setplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_set_plane = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.drm_plane = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_framebuffer = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown plane ID %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Unknown framebuffer ID %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown crtc ID %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_setplane(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_set_plane*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_mode_set_plane*
  store %struct.drm_mode_set_plane* %14, %struct.drm_mode_set_plane** %8, align 8
  store %struct.drm_crtc* null, %struct.drm_crtc** %10, align 8
  store %struct.drm_framebuffer* null, %struct.drm_framebuffer** %11, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load i32, i32* @DRIVER_MODESET, align 4
  %17 = call i32 @drm_core_check_feature(%struct.drm_device* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %114

22:                                               ; preds = %3
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %25 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %26 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.drm_plane* @drm_plane_find(%struct.drm_device* %23, %struct.drm_file* %24, i64 %27)
  store %struct.drm_plane* %28, %struct.drm_plane** %9, align 8
  %29 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %30 = icmp ne %struct.drm_plane* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %33 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %32, i32 0, i32 10
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %114

38:                                               ; preds = %22
  %39 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %40 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %39, i32 0, i32 9
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %78

43:                                               ; preds = %38
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %46 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %47 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.drm_framebuffer* @drm_framebuffer_lookup(%struct.drm_device* %44, %struct.drm_file* %45, i64 %48)
  store %struct.drm_framebuffer* %49, %struct.drm_framebuffer** %11, align 8
  %50 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %51 = icmp ne %struct.drm_framebuffer* %50, null
  br i1 %51, label %59, label %52

52:                                               ; preds = %43
  %53 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %54 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %53, i32 0, i32 9
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %114

59:                                               ; preds = %43
  %60 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %61 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %62 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %63 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %62, i32 0, i32 8
  %64 = load i64, i64* %63, align 8
  %65 = call %struct.drm_crtc* @drm_crtc_find(%struct.drm_device* %60, %struct.drm_file* %61, i64 %64)
  store %struct.drm_crtc* %65, %struct.drm_crtc** %10, align 8
  %66 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %67 = icmp ne %struct.drm_crtc* %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %59
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %70 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %69)
  %71 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %72 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @ENOENT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %114

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77, %38
  %79 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %81 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %82 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %83 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %86 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %89 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %92 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %95 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %98 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %101 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.drm_mode_set_plane*, %struct.drm_mode_set_plane** %8, align 8
  %104 = getelementptr inbounds %struct.drm_mode_set_plane, %struct.drm_mode_set_plane* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @setplane_internal(%struct.drm_plane* %79, %struct.drm_crtc* %80, %struct.drm_framebuffer* %81, i32 %84, i32 %87, i32 %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %108 = icmp ne %struct.drm_framebuffer* %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %78
  %110 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %111 = call i32 @drm_framebuffer_put(%struct.drm_framebuffer* %110)
  br label %112

112:                                              ; preds = %109, %78
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %68, %52, %31, %19
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_plane* @drm_plane_find(%struct.drm_device*, %struct.drm_file*, i64) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64) #1

declare dso_local %struct.drm_framebuffer* @drm_framebuffer_lookup(%struct.drm_device*, %struct.drm_file*, i64) #1

declare dso_local %struct.drm_crtc* @drm_crtc_find(%struct.drm_device*, %struct.drm_file*, i64) #1

declare dso_local i32 @drm_framebuffer_put(%struct.drm_framebuffer*) #1

declare dso_local i32 @setplane_internal(%struct.drm_plane*, %struct.drm_crtc*, %struct.drm_framebuffer*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
