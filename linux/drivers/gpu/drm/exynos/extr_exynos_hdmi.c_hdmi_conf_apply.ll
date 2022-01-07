; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_conf_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_conf_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*)* @hdmi_conf_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_conf_apply(%struct.hdmi_context* %0) #0 {
  %2 = alloca %struct.hdmi_context*, align 8
  store %struct.hdmi_context* %0, %struct.hdmi_context** %2, align 8
  %3 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %4 = call i32 @hdmi_start(%struct.hdmi_context* %3, i32 0)
  %5 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %6 = call i32 @hdmi_conf_init(%struct.hdmi_context* %5)
  %7 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %8 = call i32 @hdmi_audio_config(%struct.hdmi_context* %7)
  %9 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %10 = call i32 @hdmi_mode_apply(%struct.hdmi_context* %9)
  %11 = load %struct.hdmi_context*, %struct.hdmi_context** %2, align 8
  %12 = call i32 @hdmi_audio_control(%struct.hdmi_context* %11)
  ret void
}

declare dso_local i32 @hdmi_start(%struct.hdmi_context*, i32) #1

declare dso_local i32 @hdmi_conf_init(%struct.hdmi_context*) #1

declare dso_local i32 @hdmi_audio_config(%struct.hdmi_context*) #1

declare dso_local i32 @hdmi_mode_apply(%struct.hdmi_context*) #1

declare dso_local i32 @hdmi_audio_control(%struct.hdmi_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
