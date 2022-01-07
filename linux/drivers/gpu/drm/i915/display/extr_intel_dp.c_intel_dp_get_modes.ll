; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_connector = type { %struct.TYPE_2__, %struct.edid* }
%struct.TYPE_2__ = type { i64 }
%struct.edid = type { i32 }
%struct.drm_display_mode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_dp_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %8)
  store %struct.intel_connector* %9, %struct.intel_connector** %4, align 8
  %10 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 1
  %12 = load %struct.edid*, %struct.edid** %11, align 8
  store %struct.edid* %12, %struct.edid** %5, align 8
  %13 = load %struct.edid*, %struct.edid** %5, align 8
  %14 = icmp ne %struct.edid* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = load %struct.edid*, %struct.edid** %5, align 8
  %18 = call i32 @intel_connector_update_modes(%struct.drm_connector* %16, %struct.edid* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %26 = call i32 @intel_attached_dp(%struct.drm_connector* %25)
  %27 = call i64 @intel_dp_is_edp(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %31 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %40 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %38, i64 %42)
  store %struct.drm_display_mode* %43, %struct.drm_display_mode** %7, align 8
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %45 = icmp ne %struct.drm_display_mode* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %49 = call i32 @drm_mode_probed_add(%struct.drm_connector* %47, %struct.drm_display_mode* %48)
  store i32 1, i32* %2, align 4
  br label %52

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %29, %24
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %46, %21
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @intel_connector_update_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @intel_dp_is_edp(i32) #1

declare dso_local i32 @intel_attached_dp(%struct.drm_connector*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i64) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
