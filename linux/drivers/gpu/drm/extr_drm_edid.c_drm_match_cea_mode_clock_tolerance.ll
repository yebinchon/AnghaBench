; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_match_cea_mode_clock_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_match_cea_mode_clock_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i64 }

@DRM_MODE_MATCH_TIMINGS = common dso_local global i32 0, align 4
@DRM_MODE_MATCH_FLAGS = common dso_local global i32 0, align 4
@DRM_MODE_MATCH_ASPECT_RATIO = common dso_local global i32 0, align 4
@edid_cea_modes = common dso_local global %struct.drm_display_mode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_display_mode*, i32)* @drm_match_cea_mode_clock_tolerance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @drm_match_cea_mode_clock_tolerance(%struct.drm_display_mode* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.drm_display_mode, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @DRM_MODE_MATCH_TIMINGS, align 4
  %12 = load i32, i32* @DRM_MODE_MATCH_FLAGS, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %79

19:                                               ; preds = %2
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* @DRM_MODE_MATCH_ASPECT_RATIO, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %24, %19
  store i64 1, i64* %7, align 8
  br label %29

29:                                               ; preds = %75, %28
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** @edid_cea_modes, align 8
  %32 = call i64 @ARRAY_SIZE(%struct.drm_display_mode* %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %78

34:                                               ; preds = %29
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** @edid_cea_modes, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i64 %36
  %38 = bitcast %struct.drm_display_mode* %8 to i8*
  %39 = bitcast %struct.drm_display_mode* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = call i32 @cea_mode_alternate_clock(%struct.drm_display_mode* %8)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sub i32 %45, %46
  %48 = call i32 @abs(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %34
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sub i32 %54, %55
  %57 = call i32 @abs(i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %75

61:                                               ; preds = %51, %34
  br label %62

62:                                               ; preds = %70, %61
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @drm_mode_match(%struct.drm_display_mode* %63, %struct.drm_display_mode* %8, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  store i64 %68, i64* %3, align 8
  br label %79

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @cea_mode_alternate_timings(i64 %71, %struct.drm_display_mode* %8)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %62, label %74

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %60
  %76 = load i64, i64* %7, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %7, align 8
  br label %29

78:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %79

79:                                               ; preds = %78, %67, %18
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i64 @ARRAY_SIZE(%struct.drm_display_mode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cea_mode_alternate_clock(%struct.drm_display_mode*) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i64 @drm_mode_match(%struct.drm_display_mode*, %struct.drm_display_mode*, i32) #1

declare dso_local i64 @cea_mode_alternate_timings(i64, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
