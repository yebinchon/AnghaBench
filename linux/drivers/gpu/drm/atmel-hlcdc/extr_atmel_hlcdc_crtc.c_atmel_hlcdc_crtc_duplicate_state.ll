; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.atmel_hlcdc_crtc_state = type { %struct.drm_crtc_state, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_crtc_state* (%struct.drm_crtc*)* @atmel_hlcdc_crtc_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_crtc_state* @atmel_hlcdc_crtc_duplicate_state(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.atmel_hlcdc_crtc_state*, align 8
  %5 = alloca %struct.atmel_hlcdc_crtc_state*, align 8
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
  br label %37

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.atmel_hlcdc_crtc_state* @kmalloc(i32 8, i32 %16)
  store %struct.atmel_hlcdc_crtc_state* %17, %struct.atmel_hlcdc_crtc_state** %4, align 8
  %18 = load %struct.atmel_hlcdc_crtc_state*, %struct.atmel_hlcdc_crtc_state** %4, align 8
  %19 = icmp ne %struct.atmel_hlcdc_crtc_state* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %37

21:                                               ; preds = %15
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %23 = load %struct.atmel_hlcdc_crtc_state*, %struct.atmel_hlcdc_crtc_state** %4, align 8
  %24 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, %struct.atmel_hlcdc_crtc_state* %23, i32 0, i32 0
  %25 = call i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %22, %struct.drm_crtc_state* %24)
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.atmel_hlcdc_crtc_state* @drm_crtc_state_to_atmel_hlcdc_crtc_state(i32 %28)
  store %struct.atmel_hlcdc_crtc_state* %29, %struct.atmel_hlcdc_crtc_state** %5, align 8
  %30 = load %struct.atmel_hlcdc_crtc_state*, %struct.atmel_hlcdc_crtc_state** %5, align 8
  %31 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, %struct.atmel_hlcdc_crtc_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.atmel_hlcdc_crtc_state*, %struct.atmel_hlcdc_crtc_state** %4, align 8
  %34 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, %struct.atmel_hlcdc_crtc_state* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.atmel_hlcdc_crtc_state*, %struct.atmel_hlcdc_crtc_state** %4, align 8
  %36 = getelementptr inbounds %struct.atmel_hlcdc_crtc_state, %struct.atmel_hlcdc_crtc_state* %35, i32 0, i32 0
  store %struct.drm_crtc_state* %36, %struct.drm_crtc_state** %2, align 8
  br label %37

37:                                               ; preds = %21, %20, %14
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  ret %struct.drm_crtc_state* %38
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.atmel_hlcdc_crtc_state* @kmalloc(i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc*, %struct.drm_crtc_state*) #1

declare dso_local %struct.atmel_hlcdc_crtc_state* @drm_crtc_state_to_atmel_hlcdc_crtc_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
