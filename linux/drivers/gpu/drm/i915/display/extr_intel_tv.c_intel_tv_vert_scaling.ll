; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_vert_scaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_intel_tv_vert_scaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }
%struct.drm_connector_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*, %struct.drm_connector_state*, i32)* @intel_tv_vert_scaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_tv_vert_scaling(%struct.drm_display_mode* %0, %struct.drm_connector_state* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_connector_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %4, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %8 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %11 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %9, %14
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %5, align 8
  %17 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %15, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %21, %22
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
