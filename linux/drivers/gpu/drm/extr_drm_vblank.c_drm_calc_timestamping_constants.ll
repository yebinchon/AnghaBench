; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_calc_timestamping_constants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_vblank.c_drm_calc_timestamping_constants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__, %struct.drm_device* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_device = type { i32, %struct.drm_vblank_crtc* }
%struct.drm_vblank_crtc = type { i32, i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"crtc %u: Can't calculate constants, dotclock = 0!\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"crtc %u: hwmode: htotal %d, vtotal %d, vdisplay %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"crtc %u: clock %d kHz framedur %d linedur %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_calc_timestamping_constants(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_vblank_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call i32 @drm_crtc_index(%struct.drm_crtc* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %19, i64 %21
  store %struct.drm_vblank_crtc* %22, %struct.drm_vblank_crtc** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %112

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %34 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp uge i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %112

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %41
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 1000000
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @div_u64(i32 %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %58, 1000000
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @div_u64(i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %44
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %69, 2
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %68, %44
  br label %78

72:                                               ; preds = %41
  %73 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %74 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %72, %71
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %7, align 8
  %81 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %7, align 8
  %84 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.drm_vblank_crtc*, %struct.drm_vblank_crtc** %7, align 8
  %86 = getelementptr inbounds %struct.drm_vblank_crtc, %struct.drm_vblank_crtc* %85, i32 0, i32 2
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %88 = bitcast %struct.drm_display_mode* %86 to i8*
  %89 = bitcast %struct.drm_display_mode* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 20, i1 false)
  %90 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %91 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %101 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %96, i32 %99, i32 %102)
  %104 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %105 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %78, %40, %30
  ret void
}

declare dso_local i32 @drm_crtc_index(%struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
