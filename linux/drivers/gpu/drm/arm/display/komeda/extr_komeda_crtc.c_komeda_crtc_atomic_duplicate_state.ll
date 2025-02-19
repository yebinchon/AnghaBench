; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_atomic_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_crtc.c_komeda_crtc_atomic_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.komeda_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_crtc_state* (%struct.drm_crtc*)* @komeda_crtc_atomic_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_crtc_state* @komeda_crtc_atomic_duplicate_state(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.komeda_crtc_state*, align 8
  %5 = alloca %struct.komeda_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.komeda_crtc_state* @to_kcrtc_st(i32 %8)
  store %struct.komeda_crtc_state* %9, %struct.komeda_crtc_state** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.komeda_crtc_state* @kzalloc(i32 20, i32 %10)
  store %struct.komeda_crtc_state* %11, %struct.komeda_crtc_state** %5, align 8
  %12 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %13 = icmp ne %struct.komeda_crtc_state* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %18 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %17, i32 0, i32 0
  %19 = call i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %16, %struct.drm_crtc_state* %18)
  %20 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %4, align 8
  %21 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %24 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %4, align 8
  %26 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %29 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %4, align 8
  %31 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %34 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %5, align 8
  %36 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %35, i32 0, i32 0
  store %struct.drm_crtc_state* %36, %struct.drm_crtc_state** %2, align 8
  br label %37

37:                                               ; preds = %15, %14
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  ret %struct.drm_crtc_state* %38
}

declare dso_local %struct.komeda_crtc_state* @to_kcrtc_st(i32) #1

declare dso_local %struct.komeda_crtc_state* @kzalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc*, %struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
