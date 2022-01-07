; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_encoder.c_drm_mode_getencoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_encoder.c_drm_mode_getencoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_get_encoder = type { i32, i32, i32, i32, i64 }
%struct.drm_encoder = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_getencoder(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_get_encoder*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_crtc*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_mode_get_encoder*
  store %struct.drm_mode_get_encoder* %12, %struct.drm_mode_get_encoder** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @DRIVER_MODESET, align 4
  %15 = call i32 @drm_core_check_feature(%struct.drm_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %87

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %24 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call %struct.drm_encoder* @drm_encoder_find(%struct.drm_device* %21, %struct.drm_file* %22, i32 %25)
  store %struct.drm_encoder* %26, %struct.drm_encoder** %9, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %28 = icmp ne %struct.drm_encoder* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %87

32:                                               ; preds = %20
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @drm_modeset_lock(i32* %35, i32* null)
  %37 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %38 = call %struct.drm_crtc* @drm_encoder_get_crtc(%struct.drm_encoder* %37)
  store %struct.drm_crtc* %38, %struct.drm_crtc** %10, align 8
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %40 = icmp ne %struct.drm_crtc* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %32
  %42 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %43 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %44 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @drm_lease_held(%struct.drm_file* %42, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %10, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %55 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  br label %59

56:                                               ; preds = %41, %32
  %57 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %58 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %49
  %60 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %61 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @drm_modeset_unlock(i32* %62)
  %64 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %65 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %68 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %70 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %74 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %76 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %77 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @drm_lease_filter_crtcs(%struct.drm_file* %75, i32 %78)
  %80 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %81 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %83 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %86 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %59, %29, %17
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_encoder* @drm_encoder_find(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32*) #1

declare dso_local %struct.drm_crtc* @drm_encoder_get_crtc(%struct.drm_encoder*) #1

declare dso_local i64 @drm_lease_held(%struct.drm_file*, i64) #1

declare dso_local i32 @drm_modeset_unlock(i32*) #1

declare dso_local i32 @drm_lease_filter_crtcs(%struct.drm_file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
