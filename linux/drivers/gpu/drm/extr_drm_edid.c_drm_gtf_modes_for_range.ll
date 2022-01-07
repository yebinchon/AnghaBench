; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_gtf_modes_for_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_gtf_modes_for_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimode = type { i32, i32, i32 }
%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.edid = type { i32 }
%struct.detailed_timing = type { i32 }
%struct.drm_display_mode = type { i32 }

@extra_modes = common dso_local global %struct.minimode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*, %struct.detailed_timing*)* @drm_gtf_modes_for_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_gtf_modes_for_range(%struct.drm_connector* %0, %struct.edid* %1, %struct.detailed_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca %struct.detailed_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.minimode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.edid* %1, %struct.edid** %6, align 8
  store %struct.detailed_timing* %2, %struct.detailed_timing** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %11, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %64, %3
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.minimode*, %struct.minimode** @extra_modes, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.minimode* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %16
  %22 = load %struct.minimode*, %struct.minimode** @extra_modes, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.minimode, %struct.minimode* %22, i64 %24
  store %struct.minimode* %25, %struct.minimode** %12, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %27 = load %struct.minimode*, %struct.minimode** %12, align 8
  %28 = getelementptr inbounds %struct.minimode, %struct.minimode* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.minimode*, %struct.minimode** %12, align 8
  %31 = getelementptr inbounds %struct.minimode, %struct.minimode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.minimode*, %struct.minimode** %12, align 8
  %34 = getelementptr inbounds %struct.minimode, %struct.minimode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.drm_display_mode* @drm_gtf_mode(%struct.drm_device* %26, i32 %29, i32 %32, i32 %35, i32 0, i32 0)
  store %struct.drm_display_mode* %36, %struct.drm_display_mode** %10, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %38 = icmp ne %struct.drm_display_mode* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %69

41:                                               ; preds = %21
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %43 = call i32 @drm_mode_fixup_1366x768(%struct.drm_display_mode* %42)
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %45 = load %struct.edid*, %struct.edid** %6, align 8
  %46 = load %struct.detailed_timing*, %struct.detailed_timing** %7, align 8
  %47 = call i32 @mode_in_range(%struct.drm_display_mode* %44, %struct.edid* %45, %struct.detailed_timing* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %52 = call i32 @valid_inferred_mode(%struct.drm_connector* %50, %struct.drm_display_mode* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49, %41
  %55 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %57 = call i32 @drm_mode_destroy(%struct.drm_device* %55, %struct.drm_display_mode* %56)
  br label %64

58:                                               ; preds = %49
  %59 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %61 = call i32 @drm_mode_probed_add(%struct.drm_connector* %59, %struct.drm_display_mode* %60)
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %16

67:                                               ; preds = %16
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %39
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @ARRAY_SIZE(%struct.minimode*) #1

declare dso_local %struct.drm_display_mode* @drm_gtf_mode(%struct.drm_device*, i32, i32, i32, i32, i32) #1

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
