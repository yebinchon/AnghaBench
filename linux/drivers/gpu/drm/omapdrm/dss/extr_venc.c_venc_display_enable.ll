; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_display_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_venc.c_venc_display_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.venc_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"venc_display_enable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @venc_display_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @venc_display_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.venc_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %4 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %5 = call %struct.venc_device* @dssdev_to_venc(%struct.omap_dss_device* %4)
  store %struct.venc_device* %5, %struct.venc_device** %3, align 8
  %6 = call i32 @DSSDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %8 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %11 = call i32 @venc_power_on(%struct.venc_device* %10)
  %12 = load %struct.venc_device*, %struct.venc_device** %3, align 8
  %13 = getelementptr inbounds %struct.venc_device, %struct.venc_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  ret void
}

declare dso_local %struct.venc_device* @dssdev_to_venc(%struct.omap_dss_device*) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @venc_power_on(%struct.venc_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
