; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_atomic_complete_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_kms.c_vc4_atomic_complete_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { %struct.TYPE_4__*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_crtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_atomic_state*)* @vc4_atomic_complete_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc4_atomic_complete_commit(%struct.drm_atomic_state* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_dev*, align 8
  %5 = alloca %struct.vc4_crtc*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %2, align 8
  %7 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %8 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %7, i32 0, i32 1
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %3, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %11 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %10)
  store %struct.vc4_dev* %11, %struct.vc4_dev** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %55, %1
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %58

19:                                               ; preds = %12
  %20 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %21 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %31 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29, %19
  br label %55

40:                                               ; preds = %29
  %41 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %42 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.vc4_crtc* @to_vc4_crtc(i32 %48)
  store %struct.vc4_crtc* %49, %struct.vc4_crtc** %5, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %51 = load %struct.vc4_crtc*, %struct.vc4_crtc** %5, align 8
  %52 = getelementptr inbounds %struct.vc4_crtc, %struct.vc4_crtc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @vc4_hvs_mask_underrun(%struct.drm_device* %50, i32 %53)
  br label %55

55:                                               ; preds = %40, %39
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %12

58:                                               ; preds = %12
  %59 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %60 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %61 = call i32 @drm_atomic_helper_wait_for_fences(%struct.drm_device* %59, %struct.drm_atomic_state* %60, i32 0)
  %62 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %63 = call i32 @drm_atomic_helper_wait_for_dependencies(%struct.drm_atomic_state* %62)
  %64 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %65 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %66 = call i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device* %64, %struct.drm_atomic_state* %65)
  %67 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %68 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %69 = call i32 @vc4_ctm_commit(%struct.vc4_dev* %67, %struct.drm_atomic_state* %68)
  %70 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %71 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %72 = call i32 @drm_atomic_helper_commit_planes(%struct.drm_device* %70, %struct.drm_atomic_state* %71, i32 0)
  %73 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %74 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %75 = call i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device* %73, %struct.drm_atomic_state* %74)
  %76 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %77 = call i32 @drm_atomic_helper_fake_vblank(%struct.drm_atomic_state* %76)
  %78 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %79 = call i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state* %78)
  %80 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %81 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %82 = call i32 @drm_atomic_helper_wait_for_flip_done(%struct.drm_device* %80, %struct.drm_atomic_state* %81)
  %83 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %84 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %85 = call i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device* %83, %struct.drm_atomic_state* %84)
  %86 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %87 = call i32 @drm_atomic_helper_commit_cleanup_done(%struct.drm_atomic_state* %86)
  %88 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %89 = call i32 @drm_atomic_state_put(%struct.drm_atomic_state* %88)
  %90 = load %struct.vc4_dev*, %struct.vc4_dev** %4, align 8
  %91 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %90, i32 0, i32 0
  %92 = call i32 @up(i32* %91)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local %struct.vc4_crtc* @to_vc4_crtc(i32) #1

declare dso_local i32 @vc4_hvs_mask_underrun(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_atomic_helper_wait_for_fences(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_wait_for_dependencies(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_disables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @vc4_ctm_commit(%struct.vc4_dev*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_planes(%struct.drm_device*, %struct.drm_atomic_state*, i32) #1

declare dso_local i32 @drm_atomic_helper_commit_modeset_enables(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_fake_vblank(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_wait_for_flip_done(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_cleanup_planes(%struct.drm_device*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_helper_commit_cleanup_done(%struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_put(%struct.drm_atomic_state*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
