; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_tvnv17.c_nv17_tv_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i64, i64, i32 }
%struct.nv17_tv_norm_params = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.drm_display_mode }

@CTV_ENC_MODE = common dso_local global i64 0, align 8
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_BAD = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@MODE_NO_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4
@MODE_NO_DBLESCAN = common dso_local global i32 0, align 4
@MODE_VSYNC = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*)* @nv17_tv_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv17_tv_mode_valid(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.nv17_tv_norm_params*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = call %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder* %9)
  store %struct.nv17_tv_norm_params* %10, %struct.nv17_tv_norm_params** %6, align 8
  %11 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %6, align 8
  %12 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CTV_ENC_MODE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %68

16:                                               ; preds = %2
  %17 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %6, align 8
  %18 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.drm_display_mode* %19, %struct.drm_display_mode** %7, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 400000
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %25, i32* %3, align 4
  br label %101

26:                                               ; preds = %16
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34, %26
  %43 = load i32, i32* @MODE_BAD, align 4
  store i32 %43, i32* %3, align 4
  br label %101

44:                                               ; preds = %34
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %49 = and i32 %47, %48
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %49, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @MODE_NO_INTERLACE, align 4
  store i32 %57, i32* %3, align 4
  br label %101

58:                                               ; preds = %44
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @MODE_NO_DBLESCAN, align 4
  store i32 %66, i32* %3, align 4
  br label %101

67:                                               ; preds = %58
  br label %99

68:                                               ; preds = %2
  store i32 600, i32* %8, align 4
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sgt i32 %71, 70000
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %74, i32* %3, align 4
  br label %101

75:                                               ; preds = %68
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %76)
  %78 = mul nsw i32 %77, 1000
  %79 = sext i32 %78 to i64
  %80 = load %struct.nv17_tv_norm_params*, %struct.nv17_tv_norm_params** %6, align 8
  %81 = getelementptr inbounds %struct.nv17_tv_norm_params, %struct.nv17_tv_norm_params* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %79, %83
  %85 = call i32 @abs(i64 %84)
  %86 = icmp sgt i32 %85, 600
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = load i32, i32* @MODE_VSYNC, align 4
  store i32 %88, i32* %3, align 4
  br label %101

89:                                               ; preds = %75
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @MODE_NO_INTERLACE, align 4
  store i32 %97, i32* %3, align 4
  br label %101

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %67
  %100 = load i32, i32* @MODE_OK, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %96, %87, %73, %65, %56, %42, %24
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.nv17_tv_norm_params* @get_tv_norm(%struct.drm_encoder*) #1

declare dso_local i32 @abs(i64) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
