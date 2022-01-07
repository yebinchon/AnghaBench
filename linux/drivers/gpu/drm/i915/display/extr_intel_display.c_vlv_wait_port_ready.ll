; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_wait_port_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_wait_port_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DPLL_PORTB_READY_MASK = common dso_local global i32 0, align 4
@DPLL_PORTC_READY_MASK = common dso_local global i32 0, align 4
@DPLL_PORTD_READY_MASK = common dso_local global i32 0, align 4
@DPIO_PHY_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"timed out waiting for port %c ready: got 0x%x, expected 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vlv_wait_port_ready(%struct.drm_i915_private* %0, %struct.intel_digital_port* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_digital_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_digital_port* %1, %struct.intel_digital_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %10 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %24 [
    i32 130, label %13
    i32 129, label %16
    i32 128, label %21
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @DPLL_PORTB_READY_MASK, align 4
  store i32 %14, i32* %7, align 4
  %15 = call i32 @DPLL(i32 0)
  store i32 %15, i32* %8, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load i32, i32* @DPLL_PORTC_READY_MASK, align 4
  store i32 %17, i32* %7, align 4
  %18 = call i32 @DPLL(i32 0)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 %19, 4
  store i32 %20, i32* %6, align 4
  br label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @DPLL_PORTD_READY_MASK, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @DPIO_PHY_STATUS, align 4
  store i32 %23, i32* %8, align 4
  br label %26

24:                                               ; preds = %3
  %25 = call i32 (...) @BUG()
  br label %26

26:                                               ; preds = %24, %21, %16, %13
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @intel_de_wait_for_register(%struct.drm_i915_private* %27, i32 %28, i32 %29, i32 %30, i32 1000)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.intel_digital_port*, %struct.intel_digital_port** %5, align 8
  %35 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @port_name(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @I915_READ(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %33, %26
  ret void
}

declare dso_local i32 @DPLL(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @intel_de_wait_for_register(%struct.drm_i915_private*, i32, i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i32 @I915_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
