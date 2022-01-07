; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.h_is_only_changed_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_kms.h_is_only_changed_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32, i32, i32 }
%struct.drm_connector = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc_state*, %struct.drm_connector*)* @is_only_changed_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_only_changed_connector(%struct.drm_crtc_state* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.drm_crtc_state*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_crtc_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_crtc_state* %0, %struct.drm_crtc_state** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %7 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %3, align 8
  %8 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(i32 %9, i32 %12)
  store %struct.drm_crtc_state* %13, %struct.drm_crtc_state** %5, align 8
  %14 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %3, align 8
  %15 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %5, align 8
  %18 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = call i32 @drm_connector_index(%struct.drm_connector* %21)
  %23 = call i32 @BIT(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_connector_index(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
