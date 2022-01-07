; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_crtc_get_sequence_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_crtc_get_sequence_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64, %struct.drm_vblank_crtc*, i32 }
%struct.drm_vblank_crtc = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_crtc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc_get_sequence = type { i32, i32, i32, i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"crtc %d failed to acquire vblank counter, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_crtc_get_sequence_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_vblank_crtc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_crtc_get_sequence*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_crtc_get_sequence*
  store %struct.drm_crtc_get_sequence* %16, %struct.drm_crtc_get_sequence** %11, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = load i32, i32* @DRIVER_MODESET, align 4
  %19 = call i32 @drm_core_check_feature(%struct.drm_device* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %120

24:                                               ; preds = %3
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %120

32:                                               ; preds = %24
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %35 = load %struct.drm_crtc_get_sequence*, %struct.drm_crtc_get_sequence** %11, align 8
  %36 = getelementptr inbounds %struct.drm_crtc_get_sequence, %struct.drm_crtc_get_sequence* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.drm_crtc* @drm_crtc_find(%struct.drm_device* %33, %struct.drm_file* %34, i32 %37)
  store %struct.drm_crtc* %38, %struct.drm_crtc** %8, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %40 = icmp ne %struct.drm_crtc* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %120

44:                                               ; preds = %32
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %46 = call i32 @drm_crtc_index(%struct.drm_crtc* %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %48 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %47, i32 0, i32 1
  %49 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %49, i64 %51
  store %struct.drm_vblank_crtc* %52, %struct.drm_vblank_crtc** %9, align 8
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %9, align 8
  %59 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @READ_ONCE(i32 %60)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %57, %44
  %64 = phi i1 [ false, %44 ], [ %62, %57 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %70 = call i32 @drm_crtc_vblank_get(%struct.drm_crtc* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %14, align 4
  store i32 %77, i32* %4, align 4
  br label %120

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78, %63
  %80 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %81 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %80, i32 0, i32 0
  %82 = call i32 @drm_modeset_lock(i32* %81, i32* null)
  %83 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %84 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = icmp ne %struct.TYPE_2__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %89 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.drm_crtc_get_sequence*, %struct.drm_crtc_get_sequence** %11, align 8
  %94 = getelementptr inbounds %struct.drm_crtc_get_sequence, %struct.drm_crtc_get_sequence* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %101

95:                                               ; preds = %79
  %96 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %97 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.drm_crtc_get_sequence*, %struct.drm_crtc_get_sequence** %11, align 8
  %100 = getelementptr inbounds %struct.drm_crtc_get_sequence, %struct.drm_crtc_get_sequence* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %95, %87
  %102 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %103 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %102, i32 0, i32 0
  %104 = call i32 @drm_modeset_unlock(i32* %103)
  %105 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @drm_vblank_count_and_time(%struct.drm_device* %105, i32 %106, i32* %12)
  %108 = load %struct.drm_crtc_get_sequence*, %struct.drm_crtc_get_sequence** %11, align 8
  %109 = getelementptr inbounds %struct.drm_crtc_get_sequence, %struct.drm_crtc_get_sequence* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @ktime_to_ns(i32 %110)
  %112 = load %struct.drm_crtc_get_sequence*, %struct.drm_crtc_get_sequence** %11, align 8
  %113 = getelementptr inbounds %struct.drm_crtc_get_sequence, %struct.drm_crtc_get_sequence* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %101
  %117 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %118 = call i32 @drm_crtc_vblank_put(%struct.drm_crtc* %117)
  br label %119

119:                                              ; preds = %116, %101
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %73, %41, %29, %21
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_crtc* @drm_crtc_find(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @drm_crtc_vblank_get(%struct.drm_crtc*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32*) #1

declare dso_local i32 @drm_modeset_unlock(i32*) #1

declare dso_local i32 @drm_vblank_count_and_time(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @drm_crtc_vblank_put(%struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
