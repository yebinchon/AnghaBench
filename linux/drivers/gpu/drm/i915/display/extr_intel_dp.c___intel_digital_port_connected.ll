; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c___intel_digital_port_connected.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c___intel_digital_port_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*)* @__intel_digital_port_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__intel_digital_port_connected(%struct.intel_encoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_encoder*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_encoder* %0, %struct.intel_encoder** %3, align 8
  %5 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %6 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.drm_i915_private* @to_i915(i32 %8)
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %4, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = call i64 @HAS_GMCH(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %15 = call i64 @IS_GM45(%struct.drm_i915_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %19 = call i32 @gm45_digital_port_connected(%struct.intel_encoder* %18)
  store i32 %19, i32* %2, align 4
  br label %86

20:                                               ; preds = %13
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %22 = call i32 @g4x_digital_port_connected(%struct.intel_encoder* %21)
  store i32 %22, i32* %2, align 4
  br label %86

23:                                               ; preds = %1
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = call i32 @INTEL_GEN(%struct.drm_i915_private* %24)
  %26 = icmp sge i32 %25, 11
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %29 = call i32 @icl_digital_port_connected(%struct.intel_encoder* %28)
  store i32 %29, i32* %2, align 4
  br label %86

30:                                               ; preds = %23
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = call i64 @IS_GEN(%struct.drm_i915_private* %31, i32 10)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %36 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %30
  %39 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %40 = call i32 @spt_digital_port_connected(%struct.intel_encoder* %39)
  store i32 %40, i32* %2, align 4
  br label %86

41:                                               ; preds = %34
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %47 = call i32 @bxt_digital_port_connected(%struct.intel_encoder* %46)
  store i32 %47, i32* %2, align 4
  br label %86

48:                                               ; preds = %41
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %50 = call i64 @IS_GEN(%struct.drm_i915_private* %49, i32 8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %54 = call i32 @bdw_digital_port_connected(%struct.intel_encoder* %53)
  store i32 %54, i32* %2, align 4
  br label %86

55:                                               ; preds = %48
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %57 = call i64 @IS_GEN(%struct.drm_i915_private* %56, i32 7)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %61 = call i32 @ivb_digital_port_connected(%struct.intel_encoder* %60)
  store i32 %61, i32* %2, align 4
  br label %86

62:                                               ; preds = %55
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %64 = call i64 @IS_GEN(%struct.drm_i915_private* %63, i32 6)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %68 = call i32 @snb_digital_port_connected(%struct.intel_encoder* %67)
  store i32 %68, i32* %2, align 4
  br label %86

69:                                               ; preds = %62
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %71 = call i64 @IS_GEN(%struct.drm_i915_private* %70, i32 5)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load %struct.intel_encoder*, %struct.intel_encoder** %3, align 8
  %75 = call i32 @ilk_digital_port_connected(%struct.intel_encoder* %74)
  store i32 %75, i32* %2, align 4
  br label %86

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %84 = call i32 @INTEL_GEN(%struct.drm_i915_private* %83)
  %85 = call i32 @MISSING_CASE(i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %73, %66, %59, %52, %45, %38, %27, %20, %17
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GM45(%struct.drm_i915_private*) #1

declare dso_local i32 @gm45_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i32 @g4x_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @icl_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @spt_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i32 @bdw_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i32 @ivb_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i32 @snb_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i32 @ilk_digital_port_connected(%struct.intel_encoder*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
