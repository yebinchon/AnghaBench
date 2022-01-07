; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_crtc_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_crtc_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.vmw_crtc_state = type { %struct.drm_crtc_state }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_crtc_state* @vmw_du_crtc_duplicate_state(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.vmw_crtc_state*, align 8
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
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.vmw_crtc_state* @kmemdup(i32 %18, i32 4, i32 %19)
  store %struct.vmw_crtc_state* %20, %struct.vmw_crtc_state** %5, align 8
  %21 = load %struct.vmw_crtc_state*, %struct.vmw_crtc_state** %5, align 8
  %22 = icmp ne %struct.vmw_crtc_state* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %15
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %31

24:                                               ; preds = %15
  %25 = load %struct.vmw_crtc_state*, %struct.vmw_crtc_state** %5, align 8
  %26 = getelementptr inbounds %struct.vmw_crtc_state, %struct.vmw_crtc_state* %25, i32 0, i32 0
  store %struct.drm_crtc_state* %26, %struct.drm_crtc_state** %4, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %29 = call i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %27, %struct.drm_crtc_state* %28)
  %30 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  store %struct.drm_crtc_state* %30, %struct.drm_crtc_state** %2, align 8
  br label %31

31:                                               ; preds = %24, %23, %14
  %32 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  ret %struct.drm_crtc_state* %32
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.vmw_crtc_state* @kmemdup(i32, i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc*, %struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
