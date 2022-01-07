; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_stereo_match_mandatory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_stereo_match_mandatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i64, i64 }
%struct.stereo_mandatory_mode = type { i64, i64, i32, i64 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*, %struct.stereo_mandatory_mode*)* @stereo_match_mandatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stereo_match_mandatory(%struct.drm_display_mode* %0, %struct.stereo_mandatory_mode* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.stereo_mandatory_mode*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store %struct.stereo_mandatory_mode* %1, %struct.stereo_mandatory_mode** %4, align 8
  %6 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %7 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.stereo_mandatory_mode*, %struct.stereo_mandatory_mode** %4, align 8
  %15 = getelementptr inbounds %struct.stereo_mandatory_mode, %struct.stereo_mandatory_mode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.stereo_mandatory_mode*, %struct.stereo_mandatory_mode** %4, align 8
  %23 = getelementptr inbounds %struct.stereo_mandatory_mode, %struct.stereo_mandatory_mode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.stereo_mandatory_mode*, %struct.stereo_mandatory_mode** %4, align 8
  %29 = getelementptr inbounds %struct.stereo_mandatory_mode, %struct.stereo_mandatory_mode* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %36 = call i64 @drm_mode_vrefresh(%struct.drm_display_mode* %35)
  %37 = load %struct.stereo_mandatory_mode*, %struct.stereo_mandatory_mode** %4, align 8
  %38 = getelementptr inbounds %struct.stereo_mandatory_mode, %struct.stereo_mandatory_mode* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br label %41

41:                                               ; preds = %34, %26, %18, %2
  %42 = phi i1 [ false, %26 ], [ false, %18 ], [ false, %2 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local i64 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
