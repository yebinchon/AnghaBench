; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_dump_m_n_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_dump_m_n_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.intel_link_m_n = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [71 x i8] c"%s: lanes: %i; gmch_m: %u, gmch_n: %u, link_m: %u, link_n: %u, tu: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, i8*, i32, %struct.intel_link_m_n*)* @intel_dump_m_n_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dump_m_n_config(%struct.intel_crtc_state* %0, i8* %1, i32 %2, %struct.intel_link_m_n* %3) #0 {
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_link_m_n*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.intel_link_m_n* %3, %struct.intel_link_m_n** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %12 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %15 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %18 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %21 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %8, align 8
  %24 = getelementptr inbounds %struct.intel_link_m_n, %struct.intel_link_m_n* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8* %9, i32 %10, i32 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
