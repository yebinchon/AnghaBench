; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_set_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_set_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }
%struct.omap_hdmi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hdmi_avi_infoframe }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.hdmi_avi_infoframe*)* @hdmi_set_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_set_infoframe(%struct.omap_dss_device* %0, %struct.hdmi_avi_infoframe* %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.hdmi_avi_infoframe*, align 8
  %5 = alloca %struct.omap_hdmi*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store %struct.hdmi_avi_infoframe* %1, %struct.hdmi_avi_infoframe** %4, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = call %struct.omap_hdmi* @dssdev_to_hdmi(%struct.omap_dss_device* %6)
  store %struct.omap_hdmi* %7, %struct.omap_hdmi** %5, align 8
  %8 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %9 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.hdmi_avi_infoframe*, %struct.hdmi_avi_infoframe** %4, align 8
  %12 = bitcast %struct.hdmi_avi_infoframe* %10 to i8*
  %13 = bitcast %struct.hdmi_avi_infoframe* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  ret i32 0
}

declare dso_local %struct.omap_hdmi* @dssdev_to_hdmi(%struct.omap_dss_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
