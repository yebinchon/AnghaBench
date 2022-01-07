; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_dmt_modes_for_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_dmt_modes_for_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.edid = type { i32 }
%struct.detailed_timing = type { i32 }
%struct.drm_display_mode = type { i32 }

@drm_dmt_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*, %struct.detailed_timing*)* @drm_dmt_modes_for_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dmt_modes_for_range(%struct.drm_connector* %0, %struct.edid* %1, %struct.detailed_timing* %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca %struct.detailed_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.edid* %1, %struct.edid** %5, align 8
  store %struct.detailed_timing* %2, %struct.detailed_timing** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %10, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %53, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32*, i32** @drm_dmt_modes, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %56

19:                                               ; preds = %14
  %20 = load i32*, i32** @drm_dmt_modes, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load %struct.edid*, %struct.edid** %5, align 8
  %25 = load %struct.detailed_timing*, %struct.detailed_timing** %6, align 8
  %26 = call i64 @mode_in_range(i32* %23, %struct.edid* %24, %struct.detailed_timing* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %19
  %29 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %30 = load i32*, i32** @drm_dmt_modes, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i64 @valid_inferred_mode(%struct.drm_connector* %29, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %38 = load i32*, i32** @drm_dmt_modes, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %37, i32* %41)
  store %struct.drm_display_mode* %42, %struct.drm_display_mode** %9, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %44 = icmp ne %struct.drm_display_mode* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %48 = call i32 @drm_mode_probed_add(%struct.drm_connector* %46, %struct.drm_display_mode* %47)
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %45, %36
  br label %52

52:                                               ; preds = %51, %28, %19
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %14

56:                                               ; preds = %14
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @mode_in_range(i32*, %struct.edid*, %struct.detailed_timing*) #1

declare dso_local i64 @valid_inferred_mode(%struct.drm_connector*, i32*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
