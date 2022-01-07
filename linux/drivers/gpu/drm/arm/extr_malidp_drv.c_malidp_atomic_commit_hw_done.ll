; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_atomic_commit_hw_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_drv.c_malidp_atomic_commit_hw_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.malidp_drm* }
%struct.malidp_drm = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32* }

@.str = private unnamed_addr constant [45 x i8] c"timed out waiting for updated configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_atomic_state*)* @malidp_atomic_commit_hw_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malidp_atomic_commit_hw_done(%struct.drm_atomic_state* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.malidp_drm*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %2, align 8
  %6 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %7 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %6, i32 0, i32 0
  %8 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  store %struct.drm_device* %8, %struct.drm_device** %3, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 1
  %11 = load %struct.malidp_drm*, %struct.malidp_drm** %10, align 8
  store %struct.malidp_drm* %11, %struct.malidp_drm** %4, align 8
  store i32 5, i32* %5, align 4
  %12 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %13 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %19 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %21 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %26 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %1
  %33 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %34 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %39 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %38, i32 0, i32 1
  %40 = call i32 @drm_crtc_vblank_get(%struct.TYPE_5__* %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %43 = call i64 @malidp_set_and_wait_config_valid(%struct.drm_device* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  br label %46

46:                                               ; preds = %55, %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %52 = call i64 @malidp_set_and_wait_config_valid(%struct.drm_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  br label %56

55:                                               ; preds = %50
  br label %46

56:                                               ; preds = %54, %46
  %57 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %41
  br label %80

59:                                               ; preds = %1
  %60 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %61 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %66 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %65, i32 0, i32 0
  %67 = call i32 @spin_lock_irq(i32* %66)
  %68 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %69 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %68, i32 0, i32 1
  %70 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %71 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @drm_crtc_send_vblank_event(%struct.TYPE_5__* %69, i32* %72)
  %74 = load %struct.malidp_drm*, %struct.malidp_drm** %4, align 8
  %75 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %77 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %76, i32 0, i32 0
  %78 = call i32 @spin_unlock_irq(i32* %77)
  br label %79

79:                                               ; preds = %64, %59
  br label %80

80:                                               ; preds = %79, %58
  %81 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %82 = call i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state* %81)
  ret void
}

declare dso_local i32 @drm_crtc_vblank_get(%struct.TYPE_5__*) #1

declare dso_local i64 @malidp_set_and_wait_config_valid(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @drm_atomic_helper_commit_hw_done(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
