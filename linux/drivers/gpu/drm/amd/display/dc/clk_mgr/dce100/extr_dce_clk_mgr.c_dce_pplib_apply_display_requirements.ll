; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_pplib_apply_display_requirements.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/clk_mgr/dce100/extr_dce_clk_mgr.c_dce_pplib_apply_display_requirements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dc_state = type { %struct.dm_pp_display_configuration }
%struct.dm_pp_display_configuration = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_state*)* @dce_pplib_apply_display_requirements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dce_pplib_apply_display_requirements(%struct.dc* %0, %struct.dc_state* %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca %struct.dc_state*, align 8
  %5 = alloca %struct.dm_pp_display_configuration*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store %struct.dc_state* %1, %struct.dc_state** %4, align 8
  %6 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %7 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %6, i32 0, i32 0
  store %struct.dm_pp_display_configuration* %7, %struct.dm_pp_display_configuration** %5, align 8
  %8 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %9 = call i32 @dce110_get_min_vblank_time_us(%struct.dc_state* %8)
  %10 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %11 = getelementptr inbounds %struct.dm_pp_display_configuration, %struct.dm_pp_display_configuration* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.dc_state*, %struct.dc_state** %4, align 8
  %13 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %14 = call i32 @dce110_fill_display_configs(%struct.dc_state* %12, %struct.dm_pp_display_configuration* %13)
  %15 = load %struct.dc*, %struct.dc** %3, align 8
  %16 = getelementptr inbounds %struct.dc, %struct.dc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %20 = call i64 @memcmp(i32* %18, %struct.dm_pp_display_configuration* %19, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.dc*, %struct.dc** %3, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dm_pp_display_configuration*, %struct.dm_pp_display_configuration** %5, align 8
  %27 = call i32 @dm_pp_apply_display_requirements(i32 %25, %struct.dm_pp_display_configuration* %26)
  br label %28

28:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @dce110_get_min_vblank_time_us(%struct.dc_state*) #1

declare dso_local i32 @dce110_fill_display_configs(%struct.dc_state*, %struct.dm_pp_display_configuration*) #1

declare dso_local i64 @memcmp(i32*, %struct.dm_pp_display_configuration*, i32) #1

declare dso_local i32 @dm_pp_apply_display_requirements(i32, %struct.dm_pp_display_configuration*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
