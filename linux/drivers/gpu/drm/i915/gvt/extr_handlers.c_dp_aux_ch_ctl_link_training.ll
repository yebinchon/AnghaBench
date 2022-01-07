; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_dp_aux_ch_ctl_link_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_handlers.c_dp_aux_ch_ctl_link_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_dpcd_data = type { i32* }

@DPCD_TRAINING_PATTERN_SET_MASK = common dso_local global i32 0, align 4
@DPCD_TRAINING_PATTERN_1 = common dso_local global i32 0, align 4
@DPCD_LANES_CR_DONE = common dso_local global i32 0, align 4
@DPCD_LANE0_1_STATUS = common dso_local global i64 0, align 8
@DPCD_LANE2_3_STATUS = common dso_local global i64 0, align 8
@DPCD_TRAINING_PATTERN_2 = common dso_local global i32 0, align 4
@DPCD_LANES_EQ_DONE = common dso_local global i32 0, align 4
@DPCD_SYMBOL_LOCKED = common dso_local global i32 0, align 4
@DPCD_INTERLANE_ALIGN_DONE = common dso_local global i32 0, align 4
@DPCD_LANE_ALIGN_STATUS_UPDATED = common dso_local global i64 0, align 8
@DPCD_LINK_TRAINING_DISABLED = common dso_local global i32 0, align 4
@DPCD_SINK_IN_SYNC = common dso_local global i32 0, align 4
@DPCD_SINK_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu_dpcd_data*, i32)* @dp_aux_ch_ctl_link_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dp_aux_ch_ctl_link_training(%struct.intel_vgpu_dpcd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_vgpu_dpcd_data*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_vgpu_dpcd_data* %0, %struct.intel_vgpu_dpcd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @DPCD_TRAINING_PATTERN_SET_MASK, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @DPCD_TRAINING_PATTERN_1, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load i32, i32* @DPCD_LANES_CR_DONE, align 4
  %12 = load %struct.intel_vgpu_dpcd_data*, %struct.intel_vgpu_dpcd_data** %3, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu_dpcd_data, %struct.intel_vgpu_dpcd_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @DPCD_LANE0_1_STATUS, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %11
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* @DPCD_LANES_CR_DONE, align 4
  %20 = load %struct.intel_vgpu_dpcd_data*, %struct.intel_vgpu_dpcd_data** %3, align 8
  %21 = getelementptr inbounds %struct.intel_vgpu_dpcd_data, %struct.intel_vgpu_dpcd_data* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @DPCD_LANE2_3_STATUS, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %19
  store i32 %26, i32* %24, align 4
  br label %89

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @DPCD_TRAINING_PATTERN_SET_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @DPCD_TRAINING_PATTERN_2, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %27
  %34 = load i32, i32* @DPCD_LANES_EQ_DONE, align 4
  %35 = load %struct.intel_vgpu_dpcd_data*, %struct.intel_vgpu_dpcd_data** %3, align 8
  %36 = getelementptr inbounds %struct.intel_vgpu_dpcd_data, %struct.intel_vgpu_dpcd_data* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @DPCD_LANE0_1_STATUS, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %34
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @DPCD_SYMBOL_LOCKED, align 4
  %43 = load %struct.intel_vgpu_dpcd_data*, %struct.intel_vgpu_dpcd_data** %3, align 8
  %44 = getelementptr inbounds %struct.intel_vgpu_dpcd_data, %struct.intel_vgpu_dpcd_data* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @DPCD_LANE0_1_STATUS, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %42
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @DPCD_LANES_EQ_DONE, align 4
  %51 = load %struct.intel_vgpu_dpcd_data*, %struct.intel_vgpu_dpcd_data** %3, align 8
  %52 = getelementptr inbounds %struct.intel_vgpu_dpcd_data, %struct.intel_vgpu_dpcd_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @DPCD_LANE2_3_STATUS, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %50
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @DPCD_SYMBOL_LOCKED, align 4
  %59 = load %struct.intel_vgpu_dpcd_data*, %struct.intel_vgpu_dpcd_data** %3, align 8
  %60 = getelementptr inbounds %struct.intel_vgpu_dpcd_data, %struct.intel_vgpu_dpcd_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @DPCD_LANE2_3_STATUS, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %58
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @DPCD_INTERLANE_ALIGN_DONE, align 4
  %67 = load %struct.intel_vgpu_dpcd_data*, %struct.intel_vgpu_dpcd_data** %3, align 8
  %68 = getelementptr inbounds %struct.intel_vgpu_dpcd_data, %struct.intel_vgpu_dpcd_data* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @DPCD_LANE_ALIGN_STATUS_UPDATED, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %66
  store i32 %73, i32* %71, align 4
  br label %88

74:                                               ; preds = %27
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @DPCD_TRAINING_PATTERN_SET_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @DPCD_LINK_TRAINING_DISABLED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load i32, i32* @DPCD_SINK_IN_SYNC, align 4
  %82 = load %struct.intel_vgpu_dpcd_data*, %struct.intel_vgpu_dpcd_data** %3, align 8
  %83 = getelementptr inbounds %struct.intel_vgpu_dpcd_data, %struct.intel_vgpu_dpcd_data* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @DPCD_SINK_STATUS, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %74
  br label %88

88:                                               ; preds = %87, %33
  br label %89

89:                                               ; preds = %88, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
