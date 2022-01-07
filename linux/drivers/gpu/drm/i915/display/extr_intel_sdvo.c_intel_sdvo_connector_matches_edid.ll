; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_matches_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_matches_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo_connector = type { i32 }
%struct.edid = type { i32 }

@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"connector_is_digital? %d, monitor_is_digital? %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo_connector*, %struct.edid*)* @intel_sdvo_connector_matches_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_connector_matches_edid(%struct.intel_sdvo_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.intel_sdvo_connector*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_sdvo_connector* %0, %struct.intel_sdvo_connector** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  %7 = load %struct.edid*, %struct.edid** %4, align 8
  %8 = getelementptr inbounds %struct.edid, %struct.edid* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %17 = call i32 @IS_DIGITAL(%struct.intel_sdvo_connector* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i32 @IS_DIGITAL(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
