; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_stop_audio_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_stop_audio_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HDMI_WP_SYSCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hdmi*)* @hdmi_stop_audio_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_stop_audio_stream(%struct.omap_hdmi* %0) #0 {
  %2 = alloca %struct.omap_hdmi*, align 8
  store %struct.omap_hdmi* %0, %struct.omap_hdmi** %2, align 8
  %3 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %4 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %3, i32 0, i32 1
  %5 = call i32 @hdmi_wp_audio_core_req_enable(%struct.TYPE_3__* %4, i32 0)
  %6 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %7 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %6, i32 0, i32 1
  %8 = call i32 @hdmi_wp_audio_enable(%struct.TYPE_3__* %7, i32 0)
  %9 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %10 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HDMI_WP_SYSCONFIG, align 4
  %14 = load %struct.omap_hdmi*, %struct.omap_hdmi** %2, align 8
  %15 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @REG_FLD_MOD(i32 %12, i32 %13, i32 %16, i32 3, i32 2)
  ret void
}

declare dso_local i32 @hdmi_wp_audio_core_req_enable(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @hdmi_wp_audio_enable(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
