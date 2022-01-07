; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_i9xx_adjust_sdvo_tv_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_i9xx_adjust_sdvo_tv_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32, i32, %struct.dpll }
%struct.dpll = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"SDVO TV clock out of range: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @i9xx_adjust_sdvo_tv_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i9xx_adjust_sdvo_tv_clock(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpll*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %6 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %9 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %8, i32 0, i32 2
  store %struct.dpll* %9, %struct.dpll** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp uge i32 %10, 100000
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp ult i32 %13, 140500
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.dpll*, %struct.dpll** %4, align 8
  %17 = getelementptr inbounds %struct.dpll, %struct.dpll* %16, i32 0, i32 0
  store i32 2, i32* %17, align 4
  %18 = load %struct.dpll*, %struct.dpll** %4, align 8
  %19 = getelementptr inbounds %struct.dpll, %struct.dpll* %18, i32 0, i32 1
  store i32 10, i32* %19, align 4
  %20 = load %struct.dpll*, %struct.dpll** %4, align 8
  %21 = getelementptr inbounds %struct.dpll, %struct.dpll* %20, i32 0, i32 2
  store i32 3, i32* %21, align 4
  %22 = load %struct.dpll*, %struct.dpll** %4, align 8
  %23 = getelementptr inbounds %struct.dpll, %struct.dpll* %22, i32 0, i32 3
  store i32 16, i32* %23, align 4
  %24 = load %struct.dpll*, %struct.dpll** %4, align 8
  %25 = getelementptr inbounds %struct.dpll, %struct.dpll* %24, i32 0, i32 4
  store i32 8, i32* %25, align 4
  br label %47

26:                                               ; preds = %12, %1
  %27 = load i32, i32* %3, align 4
  %28 = icmp uge i32 %27, 140500
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp ule i32 %30, 200000
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.dpll*, %struct.dpll** %4, align 8
  %34 = getelementptr inbounds %struct.dpll, %struct.dpll* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.dpll*, %struct.dpll** %4, align 8
  %36 = getelementptr inbounds %struct.dpll, %struct.dpll* %35, i32 0, i32 1
  store i32 10, i32* %36, align 4
  %37 = load %struct.dpll*, %struct.dpll** %4, align 8
  %38 = getelementptr inbounds %struct.dpll, %struct.dpll* %37, i32 0, i32 2
  store i32 6, i32* %38, align 4
  %39 = load %struct.dpll*, %struct.dpll** %4, align 8
  %40 = getelementptr inbounds %struct.dpll, %struct.dpll* %39, i32 0, i32 3
  store i32 12, i32* %40, align 4
  %41 = load %struct.dpll*, %struct.dpll** %4, align 8
  %42 = getelementptr inbounds %struct.dpll, %struct.dpll* %41, i32 0, i32 4
  store i32 8, i32* %42, align 4
  br label %46

43:                                               ; preds = %29, %26
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %32
  br label %47

47:                                               ; preds = %46, %15
  %48 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %49 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  ret void
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
