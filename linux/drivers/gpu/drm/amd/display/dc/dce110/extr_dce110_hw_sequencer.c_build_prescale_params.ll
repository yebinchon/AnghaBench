; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_build_prescale_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_hw_sequencer.c_build_prescale_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipp_prescale_params = type { i32, i32 }
%struct.dc_plane_state = type { i32 }

@IPP_PRESCALE_MODE_FIXED_UNSIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipp_prescale_params*, %struct.dc_plane_state*)* @build_prescale_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_prescale_params(%struct.ipp_prescale_params* %0, %struct.dc_plane_state* %1) #0 {
  %3 = alloca %struct.ipp_prescale_params*, align 8
  %4 = alloca %struct.dc_plane_state*, align 8
  store %struct.ipp_prescale_params* %0, %struct.ipp_prescale_params** %3, align 8
  store %struct.dc_plane_state* %1, %struct.dc_plane_state** %4, align 8
  %5 = load i32, i32* @IPP_PRESCALE_MODE_FIXED_UNSIGNED, align 4
  %6 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %3, align 8
  %7 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %9 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %23 [
    i32 128, label %11
    i32 129, label %14
    i32 132, label %14
    i32 130, label %17
    i32 133, label %17
    i32 131, label %20
    i32 134, label %20
  ]

11:                                               ; preds = %2
  %12 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %3, align 8
  %13 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %12, i32 0, i32 0
  store i32 8322, i32* %13, align 4
  br label %25

14:                                               ; preds = %2, %2
  %15 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %3, align 8
  %16 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %15, i32 0, i32 0
  store i32 8224, i32* %16, align 4
  br label %25

17:                                               ; preds = %2, %2
  %18 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %3, align 8
  %19 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %18, i32 0, i32 0
  store i32 8200, i32* %19, align 4
  br label %25

20:                                               ; preds = %2, %2
  %21 = load %struct.ipp_prescale_params*, %struct.ipp_prescale_params** %3, align 8
  %22 = getelementptr inbounds %struct.ipp_prescale_params, %struct.ipp_prescale_params* %21, i32 0, i32 0
  store i32 8192, i32* %22, align 4
  br label %25

23:                                               ; preds = %2
  %24 = call i32 @ASSERT(i32 0)
  br label %25

25:                                               ; preds = %23, %20, %17, %14, %11
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
