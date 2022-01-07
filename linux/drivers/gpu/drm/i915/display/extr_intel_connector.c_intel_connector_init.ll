; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_connector.c_intel_connector_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_connector.c_intel_connector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { i32 }
%struct.intel_digital_connector_state = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_connector_init(%struct.intel_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.intel_digital_connector_state*, align 8
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.intel_digital_connector_state* @kzalloc(i32 4, i32 %5)
  store %struct.intel_digital_connector_state* %6, %struct.intel_digital_connector_state** %4, align 8
  %7 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %4, align 8
  %8 = icmp ne %struct.intel_digital_connector_state* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %14 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %13, i32 0, i32 0
  %15 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %4, align 8
  %16 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %15, i32 0, i32 0
  %17 = call i32 @__drm_atomic_helper_connector_reset(i32* %14, i32* %16)
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.intel_digital_connector_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_connector_reset(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
