; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_state_setup_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_state_setup_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.clk = type { i32 }
%struct.tegra_dc_state = type { i64, i32, %struct.clk* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_dc_state_setup_clock(%struct.tegra_dc* %0, %struct.drm_crtc_state* %1, %struct.clk* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_dc*, align 8
  %8 = alloca %struct.drm_crtc_state*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tegra_dc_state*, align 8
  store %struct.tegra_dc* %0, %struct.tegra_dc** %7, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %8, align 8
  store %struct.clk* %2, %struct.clk** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %8, align 8
  %14 = call %struct.tegra_dc_state* @to_dc_state(%struct.drm_crtc_state* %13)
  store %struct.tegra_dc_state* %14, %struct.tegra_dc_state** %12, align 8
  %15 = load %struct.tegra_dc*, %struct.tegra_dc** %7, align 8
  %16 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.clk*, %struct.clk** %9, align 8
  %19 = call i32 @clk_has_parent(i32 %17, %struct.clk* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %34

24:                                               ; preds = %5
  %25 = load %struct.clk*, %struct.clk** %9, align 8
  %26 = load %struct.tegra_dc_state*, %struct.tegra_dc_state** %12, align 8
  %27 = getelementptr inbounds %struct.tegra_dc_state, %struct.tegra_dc_state* %26, i32 0, i32 2
  store %struct.clk* %25, %struct.clk** %27, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.tegra_dc_state*, %struct.tegra_dc_state** %12, align 8
  %30 = getelementptr inbounds %struct.tegra_dc_state, %struct.tegra_dc_state* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.tegra_dc_state*, %struct.tegra_dc_state** %12, align 8
  %33 = getelementptr inbounds %struct.tegra_dc_state, %struct.tegra_dc_state* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.tegra_dc_state* @to_dc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @clk_has_parent(i32, %struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
