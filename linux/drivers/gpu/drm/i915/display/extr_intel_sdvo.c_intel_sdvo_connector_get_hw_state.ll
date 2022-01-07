; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_get_hw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_connector_get_hw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { i32 }
%struct.intel_sdvo_connector = type { i32 }
%struct.intel_sdvo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*)* @intel_sdvo_connector_get_hw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_connector_get_hw_state(%struct.intel_connector* %0) #0 {
  %2 = alloca %struct.intel_connector*, align 8
  %3 = alloca %struct.intel_sdvo_connector*, align 8
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %2, align 8
  %6 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %7 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %6, i32 0, i32 0
  %8 = call %struct.intel_sdvo_connector* @to_intel_sdvo_connector(i32* %7)
  store %struct.intel_sdvo_connector* %8, %struct.intel_sdvo_connector** %3, align 8
  %9 = load %struct.intel_connector*, %struct.intel_connector** %2, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 0
  %11 = call %struct.intel_sdvo* @intel_attached_sdvo(i32* %10)
  store %struct.intel_sdvo* %11, %struct.intel_sdvo** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %13 = call i32 @intel_sdvo_get_active_outputs(%struct.intel_sdvo* %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %3, align 8
  %16 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  ret i32 %18
}

declare dso_local %struct.intel_sdvo_connector* @to_intel_sdvo_connector(i32*) #1

declare dso_local %struct.intel_sdvo* @intel_attached_sdvo(i32*) #1

declare dso_local i32 @intel_sdvo_get_active_outputs(%struct.intel_sdvo*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
