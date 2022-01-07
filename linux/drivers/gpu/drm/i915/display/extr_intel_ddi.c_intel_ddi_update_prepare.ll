; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_update_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_update_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.intel_crtc = type { i64 }
%struct.intel_crtc_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_encoder*, %struct.intel_crtc*)* @intel_ddi_update_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ddi_update_prepare(%struct.intel_atomic_state* %0, %struct.intel_encoder* %1, %struct.intel_crtc* %2) #0 {
  %4 = alloca %struct.intel_atomic_state*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_crtc_state*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %4, align 8
  store %struct.intel_encoder* %1, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc* %2, %struct.intel_crtc** %6, align 8
  %9 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %10 = icmp ne %struct.intel_crtc* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %14 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %12, %struct.intel_crtc* %13)
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %11
  %17 = phi %struct.intel_crtc_state* [ %14, %11 ], [ null, %15 ]
  store %struct.intel_crtc_state* %17, %struct.intel_crtc_state** %7, align 8
  %18 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %19 = icmp ne %struct.intel_crtc_state* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %22 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 1, %24 ]
  store i32 %26, i32* %8, align 4
  %27 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %28 = icmp ne %struct.intel_crtc* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %31 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi i1 [ false, %25 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %39 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %38, i32 0, i32 0
  %40 = call i32 @enc_to_dig_port(i32* %39)
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @intel_tc_port_get_link(i32 %40, i32 %41)
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %44 = icmp ne %struct.intel_crtc_state* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %34
  %46 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %7, align 8
  %47 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %4, align 8
  %53 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %54 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %55 = call i32 @intel_update_active_dpll(%struct.intel_atomic_state* %52, %struct.intel_crtc* %53, %struct.intel_encoder* %54)
  br label %56

56:                                               ; preds = %51, %45, %34
  ret void
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @intel_tc_port_get_link(i32, i32) #1

declare dso_local i32 @enc_to_dig_port(i32*) #1

declare dso_local i32 @intel_update_active_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
