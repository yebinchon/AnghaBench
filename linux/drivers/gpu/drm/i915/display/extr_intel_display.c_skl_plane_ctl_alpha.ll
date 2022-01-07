; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_plane_ctl_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_skl_plane_ctl_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_plane_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PLANE_CTL_ALPHA_DISABLE = common dso_local global i32 0, align 4
@PLANE_CTL_ALPHA_SW_PREMULTIPLY = common dso_local global i32 0, align 4
@PLANE_CTL_ALPHA_HW_PREMULTIPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_plane_state*)* @skl_plane_ctl_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_plane_ctl_alpha(%struct.intel_plane_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_plane_state*, align 8
  store %struct.intel_plane_state* %0, %struct.intel_plane_state** %3, align 8
  %4 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %5 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @PLANE_CTL_ALPHA_DISABLE, align 4
  store i32 %14, i32* %2, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %17 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %26 [
    i32 129, label %20
    i32 128, label %22
    i32 130, label %24
  ]

20:                                               ; preds = %15
  %21 = load i32, i32* @PLANE_CTL_ALPHA_DISABLE, align 4
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %15
  %23 = load i32, i32* @PLANE_CTL_ALPHA_SW_PREMULTIPLY, align 4
  store i32 %23, i32* %2, align 4
  br label %33

24:                                               ; preds = %15
  %25 = load i32, i32* @PLANE_CTL_ALPHA_HW_PREMULTIPLY, align 4
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %15
  %27 = load %struct.intel_plane_state*, %struct.intel_plane_state** %3, align 8
  %28 = getelementptr inbounds %struct.intel_plane_state, %struct.intel_plane_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @MISSING_CASE(i32 %30)
  %32 = load i32, i32* @PLANE_CTL_ALPHA_DISABLE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %24, %22, %20, %13
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
