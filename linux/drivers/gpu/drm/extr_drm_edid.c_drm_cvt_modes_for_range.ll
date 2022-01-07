; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_cvt_modes_for_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_cvt_modes_for_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimode = type { i32, i32, i32 }
%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.edid = type { i32 }
%struct.detailed_timing = type { i32 }
%struct.drm_display_mode = type { i32 }

@extra_modes = common dso_local global %struct.minimode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*, %struct.detailed_timing*)* @drm_cvt_modes_for_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_cvt_modes_for_range(%struct.drm_connector* %0, %struct.edid* %1, %struct.detailed_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca %struct.detailed_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.minimode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.edid* %1, %struct.edid** %6, align 8
  store %struct.detailed_timing* %2, %struct.detailed_timing** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %11, align 8
  %17 = load %struct.edid*, %struct.edid** %6, align 8
  %18 = call i32 @drm_monitor_supports_rb(%struct.edid* %17)
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %68, %3
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.minimode*, %struct.minimode** @extra_modes, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.minimode* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %19
  %25 = load %struct.minimode*, %struct.minimode** @extra_modes, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.minimode, %struct.minimode* %25, i64 %27
  store %struct.minimode* %28, %struct.minimode** %13, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %30 = load %struct.minimode*, %struct.minimode** %13, align 8
  %31 = getelementptr inbounds %struct.minimode, %struct.minimode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.minimode*, %struct.minimode** %13, align 8
  %34 = getelementptr inbounds %struct.minimode, %struct.minimode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.minimode*, %struct.minimode** %13, align 8
  %37 = getelementptr inbounds %struct.minimode, %struct.minimode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %29, i32 %32, i32 %35, i32 %38, i32 %39, i32 0, i32 0)
  store %struct.drm_display_mode* %40, %struct.drm_display_mode** %10, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %42 = icmp ne %struct.drm_display_mode* %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %73

45:                                               ; preds = %24
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %47 = call i32 @drm_mode_fixup_1366x768(%struct.drm_display_mode* %46)
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %49 = load %struct.edid*, %struct.edid** %6, align 8
  %50 = load %struct.detailed_timing*, %struct.detailed_timing** %7, align 8
  %51 = call i32 @mode_in_range(%struct.drm_display_mode* %48, %struct.edid* %49, %struct.detailed_timing* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %56 = call i32 @valid_inferred_mode(%struct.drm_connector* %54, %struct.drm_display_mode* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %53, %45
  %59 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %61 = call i32 @drm_mode_destroy(%struct.drm_device* %59, %struct.drm_display_mode* %60)
  br label %68

62:                                               ; preds = %53
  %63 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %65 = call i32 @drm_mode_probed_add(%struct.drm_connector* %63, %struct.drm_display_mode* %64)
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %19

71:                                               ; preds = %19
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %43
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @drm_monitor_supports_rb(%struct.edid*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.minimode*) #1

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_fixup_1366x768(%struct.drm_display_mode*) #1

declare dso_local i32 @mode_in_range(%struct.drm_display_mode*, %struct.edid*, %struct.detailed_timing*) #1

declare dso_local i32 @valid_inferred_mode(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_destroy(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
