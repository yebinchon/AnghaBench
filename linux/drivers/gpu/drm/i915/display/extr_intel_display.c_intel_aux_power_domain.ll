; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_aux_power_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_aux_power_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@TC_PORT_TBT_ALT = common dso_local global i64 0, align 8
@POWER_DOMAIN_AUX_TBT1 = common dso_local global i32 0, align 4
@POWER_DOMAIN_AUX_TBT2 = common dso_local global i32 0, align 4
@POWER_DOMAIN_AUX_TBT3 = common dso_local global i32 0, align 4
@POWER_DOMAIN_AUX_TBT4 = common dso_local global i32 0, align 4
@POWER_DOMAIN_AUX_A = common dso_local global i32 0, align 4
@POWER_DOMAIN_AUX_B = common dso_local global i32 0, align 4
@POWER_DOMAIN_AUX_C = common dso_local global i32 0, align 4
@POWER_DOMAIN_AUX_D = common dso_local global i32 0, align 4
@POWER_DOMAIN_AUX_E = common dso_local global i32 0, align 4
@POWER_DOMAIN_AUX_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_aux_power_domain(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %6 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %7 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %12, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @intel_phy_is_tc(%struct.drm_i915_private* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %1
  %23 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %24 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TC_PORT_TBT_ALT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %30 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %40 [
    i32 131, label %32
    i32 130, label %34
    i32 129, label %36
    i32 128, label %38
  ]

32:                                               ; preds = %28
  %33 = load i32, i32* @POWER_DOMAIN_AUX_TBT1, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %28
  %35 = load i32, i32* @POWER_DOMAIN_AUX_TBT2, align 4
  store i32 %35, i32* %2, align 4
  br label %68

36:                                               ; preds = %28
  %37 = load i32, i32* @POWER_DOMAIN_AUX_TBT3, align 4
  store i32 %37, i32* %2, align 4
  br label %68

38:                                               ; preds = %28
  %39 = load i32, i32* @POWER_DOMAIN_AUX_TBT4, align 4
  store i32 %39, i32* %2, align 4
  br label %68

40:                                               ; preds = %28
  %41 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %42 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @MISSING_CASE(i32 %43)
  %45 = load i32, i32* @POWER_DOMAIN_AUX_TBT1, align 4
  store i32 %45, i32* %2, align 4
  br label %68

46:                                               ; preds = %22, %1
  %47 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %48 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  switch i32 %49, label %62 [
    i32 133, label %50
    i32 132, label %52
    i32 131, label %54
    i32 130, label %56
    i32 129, label %58
    i32 128, label %60
  ]

50:                                               ; preds = %46
  %51 = load i32, i32* @POWER_DOMAIN_AUX_A, align 4
  store i32 %51, i32* %2, align 4
  br label %68

52:                                               ; preds = %46
  %53 = load i32, i32* @POWER_DOMAIN_AUX_B, align 4
  store i32 %53, i32* %2, align 4
  br label %68

54:                                               ; preds = %46
  %55 = load i32, i32* @POWER_DOMAIN_AUX_C, align 4
  store i32 %55, i32* %2, align 4
  br label %68

56:                                               ; preds = %46
  %57 = load i32, i32* @POWER_DOMAIN_AUX_D, align 4
  store i32 %57, i32* %2, align 4
  br label %68

58:                                               ; preds = %46
  %59 = load i32, i32* @POWER_DOMAIN_AUX_E, align 4
  store i32 %59, i32* %2, align 4
  br label %68

60:                                               ; preds = %46
  %61 = load i32, i32* @POWER_DOMAIN_AUX_F, align 4
  store i32 %61, i32* %2, align 4
  br label %68

62:                                               ; preds = %46
  %63 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %64 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @MISSING_CASE(i32 %65)
  %67 = load i32, i32* @POWER_DOMAIN_AUX_A, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %60, %58, %56, %54, %52, %50, %40, %38, %36, %34, %32
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_phy_is_tc(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
