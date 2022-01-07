; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_crtc_atomic_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_stdu.c_vmw_stdu_crtc_atomic_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.vmw_private = type { i32 }
%struct.vmw_screen_target_display_unit = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"CRTC is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to blank CRTC\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to destroy Screen Target\0A\00", align 1
@SAME_AS_DISPLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @vmw_stdu_crtc_atomic_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_stdu_crtc_atomic_disable(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.vmw_private*, align 8
  %6 = alloca %struct.vmw_screen_target_display_unit*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = icmp ne %struct.drm_crtc* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %46

12:                                               ; preds = %2
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %14 = call %struct.vmw_screen_target_display_unit* @vmw_crtc_to_stdu(%struct.drm_crtc* %13)
  store %struct.vmw_screen_target_display_unit* %14, %struct.vmw_screen_target_display_unit** %6, align 8
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.vmw_private* @vmw_priv(i32 %17)
  store %struct.vmw_private* %18, %struct.vmw_private** %5, align 8
  %19 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %20 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %12
  %24 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %25 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %26 = call i32 @vmw_stdu_bind_st(%struct.vmw_private* %24, %struct.vmw_screen_target_display_unit* %25, i32* null)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %33 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %34 = call i32 @vmw_stdu_update_st(%struct.vmw_private* %32, %struct.vmw_screen_target_display_unit* %33)
  %35 = load %struct.vmw_private*, %struct.vmw_private** %5, align 8
  %36 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %37 = call i32 @vmw_stdu_destroy_st(%struct.vmw_private* %35, %struct.vmw_screen_target_display_unit* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %31
  %43 = load i32, i32* @SAME_AS_DISPLAY, align 4
  %44 = load %struct.vmw_screen_target_display_unit*, %struct.vmw_screen_target_display_unit** %6, align 8
  %45 = getelementptr inbounds %struct.vmw_screen_target_display_unit, %struct.vmw_screen_target_display_unit* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %10, %42, %12
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.vmw_screen_target_display_unit* @vmw_crtc_to_stdu(%struct.drm_crtc*) #1

declare dso_local %struct.vmw_private* @vmw_priv(i32) #1

declare dso_local i32 @vmw_stdu_bind_st(%struct.vmw_private*, %struct.vmw_screen_target_display_unit*, i32*) #1

declare dso_local i32 @vmw_stdu_update_st(%struct.vmw_private*, %struct.vmw_screen_target_display_unit*) #1

declare dso_local i32 @vmw_stdu_destroy_st(%struct.vmw_private*, %struct.vmw_screen_target_display_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
