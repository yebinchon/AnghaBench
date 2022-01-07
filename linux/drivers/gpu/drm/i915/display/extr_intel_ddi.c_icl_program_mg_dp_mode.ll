; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_program_mg_dp_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_program_mg_dp_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@TC_PORT_TBT_ALT = common dso_local global i32 0, align 4
@MG_DP_MODE_CFG_DP_X1_MODE = common dso_local global i32 0, align 4
@MG_DP_MODE_CFG_DP_X2_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_digital_port*)* @icl_program_mg_dp_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_program_mg_dp_mode(%struct.intel_digital_port* %0) #0 {
  %2 = alloca %struct.intel_digital_port*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %2, align 8
  %8 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %9 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.drm_i915_private* @to_i915(i32 %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %3, align 8
  %14 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %15 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TC_PORT_TBT_ALT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %111

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @MG_DP_MODE(i32 0, i32 %25)
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @MG_DP_MODE(i32 1, i32 %28)
  %30 = call i32 @I915_READ(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %32 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %97 [
    i32 129, label %34
    i32 128, label %86
  ]

34:                                               ; preds = %24
  %35 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %36 = load i32, i32* @MG_DP_MODE_CFG_DP_X2_MODE, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %42 = load i32, i32* @MG_DP_MODE_CFG_DP_X2_MODE, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %48 = call i32 @intel_tc_port_get_lane_mask(%struct.intel_digital_port* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %82 [
    i32 1, label %50
    i32 4, label %50
    i32 2, label %51
    i32 3, label %55
    i32 8, label %61
    i32 12, label %65
    i32 15, label %71
  ]

50:                                               ; preds = %34, %34
  br label %85

51:                                               ; preds = %34
  %52 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %85

55:                                               ; preds = %34
  %56 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %57 = load i32, i32* @MG_DP_MODE_CFG_DP_X2_MODE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %85

61:                                               ; preds = %34
  %62 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %85

65:                                               ; preds = %34
  %66 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %67 = load i32, i32* @MG_DP_MODE_CFG_DP_X2_MODE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %85

71:                                               ; preds = %34
  %72 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %73 = load i32, i32* @MG_DP_MODE_CFG_DP_X2_MODE, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %78 = load i32, i32* @MG_DP_MODE_CFG_DP_X2_MODE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %85

82:                                               ; preds = %34
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @MISSING_CASE(i32 %83)
  br label %85

85:                                               ; preds = %82, %71, %65, %61, %55, %51, %50
  br label %102

86:                                               ; preds = %24
  %87 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %88 = load i32, i32* @MG_DP_MODE_CFG_DP_X2_MODE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @MG_DP_MODE_CFG_DP_X1_MODE, align 4
  %93 = load i32, i32* @MG_DP_MODE_CFG_DP_X2_MODE, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %102

97:                                               ; preds = %24
  %98 = load %struct.intel_digital_port*, %struct.intel_digital_port** %2, align 8
  %99 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @MISSING_CASE(i32 %100)
  br label %111

102:                                              ; preds = %86, %85
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @MG_DP_MODE(i32 0, i32 %103)
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @I915_WRITE(i32 %104, i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @MG_DP_MODE(i32 1, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @I915_WRITE(i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %102, %97, %23
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @MG_DP_MODE(i32, i32) #1

declare dso_local i32 @intel_tc_port_get_lane_mask(%struct.intel_digital_port*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
