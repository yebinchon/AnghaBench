; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_fixup_detailed_cea_mode_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_fixup_detailed_cea_mode_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"CEA\00", align 1
@edid_cea_modes = common dso_local global %struct.drm_display_mode* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@edid_4k_modes = common dso_local global %struct.drm_display_mode* null, align 8
@.str.2 = private unnamed_addr constant [59 x i8] c"detailed mode matches %s VIC %d, adjusting clock %d -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_display_mode*)* @fixup_detailed_cea_mode_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_detailed_cea_mode_clock(%struct.drm_display_mode* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %2, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %10 = call i64 @drm_match_cea_mode_clock_tolerance(%struct.drm_display_mode* %9, i32 5)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @drm_valid_cea_vic(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** @edid_cea_modes, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i64 %16
  store %struct.drm_display_mode* %17, %struct.drm_display_mode** %3, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %22 = call i32 @cea_mode_alternate_clock(%struct.drm_display_mode* %21)
  store i32 %22, i32* %5, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %25 = call i64 @drm_match_hdmi_mode_clock_tolerance(%struct.drm_display_mode* %24, i32 5)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @drm_valid_hdmi_vic(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** @edid_4k_modes, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i64 %31
  store %struct.drm_display_mode* %32, %struct.drm_display_mode** %3, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %37 = call i32 @hdmi_mode_alternate_clock(%struct.drm_display_mode* %36)
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %23
  br label %76

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %14
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %43, %44
  %46 = call i64 @abs(i32 %45)
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i64 @abs(i32 %51)
  %53 = icmp slt i64 %46, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %40
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %76

65:                                               ; preds = %58
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %69 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %66, i64 %67, i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %65, %64, %38
  ret void
}

declare dso_local i64 @drm_match_cea_mode_clock_tolerance(%struct.drm_display_mode*, i32) #1

declare dso_local i64 @drm_valid_cea_vic(i64) #1

declare dso_local i32 @cea_mode_alternate_clock(%struct.drm_display_mode*) #1

declare dso_local i64 @drm_match_hdmi_mode_clock_tolerance(%struct.drm_display_mode*, i32) #1

declare dso_local i64 @drm_valid_hdmi_vic(i64) #1

declare dso_local i32 @hdmi_mode_alternate_clock(%struct.drm_display_mode*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
