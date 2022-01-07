; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.omap_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_crtc_state* (%struct.drm_crtc*)* @omap_crtc_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_crtc_state* @omap_crtc_duplicate_state(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.omap_crtc_state*, align 8
  %5 = alloca %struct.omap_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %7 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.omap_crtc_state* @to_omap_crtc_state(i32 %18)
  store %struct.omap_crtc_state* %19, %struct.omap_crtc_state** %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.omap_crtc_state* @kmalloc(i32 16, i32 %20)
  store %struct.omap_crtc_state* %21, %struct.omap_crtc_state** %4, align 8
  %22 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %4, align 8
  %23 = icmp ne %struct.omap_crtc_state* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %47

25:                                               ; preds = %15
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %27 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %4, align 8
  %28 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %27, i32 0, i32 0
  %29 = call i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %26, %struct.drm_crtc_state* %28)
  %30 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %5, align 8
  %31 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %4, align 8
  %34 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %5, align 8
  %36 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %4, align 8
  %39 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %5, align 8
  %41 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %4, align 8
  %44 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %4, align 8
  %46 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %45, i32 0, i32 0
  store %struct.drm_crtc_state* %46, %struct.drm_crtc_state** %2, align 8
  br label %47

47:                                               ; preds = %25, %24, %14
  %48 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  ret %struct.drm_crtc_state* %48
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.omap_crtc_state* @to_omap_crtc_state(i32) #1

declare dso_local %struct.omap_crtc_state* @kmalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc*, %struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
