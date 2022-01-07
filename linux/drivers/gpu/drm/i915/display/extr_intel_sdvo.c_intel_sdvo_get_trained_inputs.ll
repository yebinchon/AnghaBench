; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_trained_inputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_trained_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_sdvo_get_trained_inputs_response = type { i32, i32 }

@SDVO_CMD_GET_TRAINED_INPUTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, i32*, i32*)* @intel_sdvo_get_trained_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_get_trained_inputs(%struct.intel_sdvo* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_sdvo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.intel_sdvo_get_trained_inputs_response, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = call i32 @BUILD_BUG_ON(i32 1)
  %10 = load %struct.intel_sdvo*, %struct.intel_sdvo** %5, align 8
  %11 = load i32, i32* @SDVO_CMD_GET_TRAINED_INPUTS, align 4
  %12 = call i32 @intel_sdvo_get_value(%struct.intel_sdvo* %10, i32 %11, %struct.intel_sdvo_get_trained_inputs_response* %8, i32 8)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %22

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.intel_sdvo_get_trained_inputs_response, %struct.intel_sdvo_get_trained_inputs_response* %8, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.intel_sdvo_get_trained_inputs_response, %struct.intel_sdvo_get_trained_inputs_response* %8, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  store i32 1, i32* %4, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @intel_sdvo_get_value(%struct.intel_sdvo*, i32, %struct.intel_sdvo_get_trained_inputs_response*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
