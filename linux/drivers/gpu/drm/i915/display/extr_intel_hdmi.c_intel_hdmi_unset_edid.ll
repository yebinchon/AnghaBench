; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_unset_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_unset_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_hdmi = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32* }

@DRM_DP_DUAL_MODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_hdmi_unset_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_hdmi_unset_edid(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_hdmi*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %4 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %5 = call %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector* %4)
  store %struct.intel_hdmi* %5, %struct.intel_hdmi** %3, align 8
  %6 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %7 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  %8 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @DRM_DP_DUAL_MODE_NONE, align 4
  %11 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %12 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 8
  %14 = load %struct.intel_hdmi*, %struct.intel_hdmi** %3, align 8
  %15 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %18 = call %struct.TYPE_4__* @to_intel_connector(%struct.drm_connector* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree(i32* %20)
  %22 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %23 = call %struct.TYPE_4__* @to_intel_connector(%struct.drm_connector* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  ret void
}

declare dso_local %struct.intel_hdmi* @intel_attached_hdmi(%struct.drm_connector*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local %struct.TYPE_4__* @to_intel_connector(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
