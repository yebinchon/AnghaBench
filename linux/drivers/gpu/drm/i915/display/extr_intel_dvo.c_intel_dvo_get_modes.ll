; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dvo.c_intel_dvo_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32 }
%struct.drm_i915_private = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_display_mode* }

@GMBUS_PIN_DPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_dvo_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dvo_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = call %struct.TYPE_4__* @to_intel_connector(%struct.drm_connector* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %14, align 8
  store %struct.drm_display_mode* %15, %struct.drm_display_mode** %5, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = load i32, i32* @GMBUS_PIN_DPC, align 4
  %19 = call i32 @intel_gmbus_get_adapter(%struct.drm_i915_private* %17, i32 %18)
  %20 = call i32 @intel_ddc_get_modes(%struct.drm_connector* %16, i32 %19)
  %21 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %22 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %21, i32 0, i32 1
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %43

26:                                               ; preds = %1
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = icmp ne %struct.drm_display_mode* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %31 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %32, %struct.drm_display_mode* %33)
  store %struct.drm_display_mode* %34, %struct.drm_display_mode** %6, align 8
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %36 = icmp ne %struct.drm_display_mode* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %40 = call i32 @drm_mode_probed_add(%struct.drm_connector* %38, %struct.drm_display_mode* %39)
  store i32 1, i32* %2, align 4
  br label %43

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %26
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %37, %25
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_4__* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @intel_ddc_get_modes(%struct.drm_connector*, i32) #1

declare dso_local i32 @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
