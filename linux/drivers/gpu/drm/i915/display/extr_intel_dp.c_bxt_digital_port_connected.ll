; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_bxt_digital_port_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_bxt_digital_port_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BXT_DE_PORT_HP_DDIA = common dso_local global i32 0, align 4
@BXT_DE_PORT_HP_DDIB = common dso_local global i32 0, align 4
@BXT_DE_PORT_HP_DDIC = common dso_local global i32 0, align 4
@GEN8_DE_PORT_ISR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*)* @bxt_digital_port_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxt_digital_port_connected(%struct.intel_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  %6 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %7 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_i915_private* @to_i915(i32 %9)
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %20 [
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
  ]

14:                                               ; preds = %1
  %15 = load i32, i32* @BXT_DE_PORT_HP_DDIA, align 4
  store i32 %15, i32* %5, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load i32, i32* @BXT_DE_PORT_HP_DDIB, align 4
  store i32 %17, i32* %5, align 4
  br label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @BXT_DE_PORT_HP_DDIC, align 4
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %22 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MISSING_CASE(i32 %23)
  store i32 0, i32* %2, align 4
  br label %30

25:                                               ; preds = %18, %16, %14
  %26 = load i32, i32* @GEN8_DE_PORT_ISR, align 4
  %27 = call i32 @I915_READ(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
